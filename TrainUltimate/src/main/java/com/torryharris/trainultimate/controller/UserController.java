package com.torryharris.trainultimate.controller;

import com.torryharris.trainultimate.model.Ticket;
import com.torryharris.trainultimate.model.Train;
import com.torryharris.trainultimate.model.User;
import com.torryharris.trainultimate.repository.PassengerRepo;
import com.torryharris.trainultimate.repository.TrainRepo;
import com.torryharris.trainultimate.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class UserController {
    @Autowired
    UserRepo userRepo;
    @Autowired
    TrainRepo trainRepo;
    @Autowired
    PassengerRepo passengerRepo;
    @Autowired
    Ticket ticket;
    @RequestMapping("Login")
    public String user(User user,HttpServletRequest request){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        User user1=userRepo.findById(username).orElse(new User());
        //System.out.println(username+password+user1.getUserName()+user1.getPassword());
        if(username.equals("samreen") && password.equals("samreen")){
            return "DetailsPage.jsp";
        }
        else if(username.equals(user1.getUserName()) && password.equals(user1.getPassword())){
            //System.out.println(username.compareTo(user1.getUserName()));
            return "Traindetails.html";
        }
        else {

            return "LoginPage.jsp";
        }
    }
    @RequestMapping("Register")
    public String addUser(User user){
        userRepo.save(user);
        return "LoginPage.jsp";
    }
    @RequestMapping("trainDetails")
    public ModelAndView traindetails(@RequestParam int trainNo,String date){
        ModelAndView mv=new ModelAndView("ticket reservation.jsp");
        Train train=trainRepo.findById(trainNo).orElse(new Train());
        mv.addObject(train);
        ticket.setTrain(train);
        ticket.setDateString(date);
        System.out.println(date);
        return mv;
    }
    @RequestMapping("addPassengers")
    public String passengerDetails(@RequestParam int trainNo,@RequestParam int noOfPassengers, HttpServletRequest request){
        for(int i=1;i<=noOfPassengers;i++){
            //System.out.println(noOfPassengers+request.getParameter("name"+i));
            String name=request.getParameter("name"+i);
            int age=Integer.parseInt(request.getParameter("age"+i));
            char gender=request.getParameter("gender"+i).charAt(0);
            ticket.addPassengers(name,age,gender);
            //System.out.println("asd"+name+age+gender);
        }
        return "payment.jsp";
    }
    @RequestMapping("pay")
    public String confirmationPage(){
        //in form give action=pay in payment page
        return "confirm.jsp";
    }
    @RequestMapping("download")
    public String downloadTicket(){
        ticket.writeTicket();

        ticket.setCounter(ticket.getCounter()+1);
        return "confirm.jsp";
    }
    @RequestMapping("detailsPage")
    public String add(Train train,HttpServletRequest request){
        switch (request.getParameter("value")){
            case "Add":
                trainRepo.save(train);
                //System.out.println("Added successfully");
                break;
            case "Modify":
                trainRepo.save(train);
                //System.out.println("Modified successfully");
                break;
            case "Delete":
                trainRepo.delete(train);
                //System.out.println("Deleted successfully");
                break;
        }
        return "DetailsPage.jsp";
    }
}
