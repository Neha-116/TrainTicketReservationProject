package com.torryharris.trainultimate.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.TreeMap;
@Setter
@Getter
@Component
public class Ticket {
    private int counter=100;
    private String pnr;
    private String pnrNum;
    private String travelDateString,dateString;
    private Train train;

    private TreeMap<Passenger, Double> passengersMap = new TreeMap<>();
    ArrayList<Passenger>passengersArraylist=new ArrayList<>();

    public TreeMap<Passenger, Double> getPassengersMap() {
        return passengersMap;
    }

    public void setPassengersMap(TreeMap<Passenger, Double> passengersMap) {
        this.passengersMap = passengersMap;
    }

    public Ticket() {
    }

    public Ticket(Train train, String dateString) {
        this.train = train;
        this.dateString = dateString;
    }

    private String generatePNR() {
        travelDateString=dateString.toString().split("-")[0]+dateString.toString().split("-")[1]
                +dateString.toString().split("-")[2];
        //System.out.println(travelDateString);
        String pnrNumber=""+train.getSource().charAt(0) + train.getDestination().charAt(0) +
                "_" + travelDateString + "_" + counter;
        return pnrNumber;
    }

    private double calcPassengerFare(Passenger passenger1) {
        double fare= train.getTicketPrice();
        int age=passenger1.getAge();
        char gender=passenger1.getGender();
        if ( age<= 12) {
            fare*= 0.5;
        }
        else if (age >= 60) {
            fare*= 0.6;
        }
        else if (gender == 'F') {
            fare*= 0.75;
        }
        //System.out.println(fare);
        return fare;
    }

    public void addPassengers(String name, int age, char gender) {
        Passenger passenger=new Passenger(name,age,gender);
        double ticketPrice=calcPassengerFare(passenger);
        passengersMap.put(passenger,ticketPrice);
        //System.out.println(passengersMap);
    }

    private double totalTicketPrice() {
        double totalFare = 0;
        for(double p:passengersMap.values()) {
            totalFare += p;
        }
        return totalFare;

    }

    private StringBuilder generateTicket() {
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("PNR :"+pnrNum+","+train.getTrainNo()+","+train.getTrainName()+","+train.getSource()+
                ","+train.getDestination()+","+travelDateString+","+totalTicketPrice());
        return stringBuilder;
    }

    public void writeTicket(){
        pnrNum=generatePNR();
        //String file = "C:\Users\neha_sapalya\Desktop\train\TrainUltimate"+pnrNum +".pdf";
        File file=new File("C:\\Users\\neha_sapalya\\Desktop\\train\\TrainUltimate",pnrNum+".txt");
       try {
         file.createNewFile();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try(FileWriter fileWriter=new FileWriter(file,true);
            BufferedWriter bufferedWriter=new BufferedWriter(fileWriter))
        {
            StringBuilder stringBuilder=generateTicket();

            bufferedWriter.write(stringBuilder.toString().split(",")[0]);
            bufferedWriter.newLine();
            bufferedWriter.write("Train No: "+stringBuilder.toString().split(",")[1]);
            bufferedWriter.newLine();
            bufferedWriter.write("Train Name: "+stringBuilder.toString().split(",")[2]);
            bufferedWriter.newLine();
            bufferedWriter.write("From: "+stringBuilder.toString().split(",")[3]);
            bufferedWriter.newLine();
            bufferedWriter.write("To: "+stringBuilder.toString().split(",")[4]);
            bufferedWriter.newLine();
            bufferedWriter.write("Travel Date: "+stringBuilder.toString().split(",")[5]);
            bufferedWriter.newLine();
            bufferedWriter.write("Passengers:");
            bufferedWriter.newLine();
            bufferedWriter.write("Name\t\tAge\t\tGender\t\tFare");
            bufferedWriter.newLine();
            for(Passenger passenger:passengersMap.keySet()){
                bufferedWriter.write(passenger.getName()+"\t\t");
                bufferedWriter.write(String.valueOf(passenger.getAge())+"\t\t");
                bufferedWriter.write(passenger.getGender()+"\t\t");
                bufferedWriter.write(String.valueOf(passengersMap.get(passenger))+"\t\t");
                bufferedWriter.newLine();
            }
            bufferedWriter.write("Total Price: "+totalTicketPrice());

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}







