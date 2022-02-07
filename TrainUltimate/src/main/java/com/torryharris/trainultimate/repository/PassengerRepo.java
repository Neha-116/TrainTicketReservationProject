package com.torryharris.trainultimate.repository;

import com.torryharris.trainultimate.model.Passenger;
import org.springframework.data.repository.CrudRepository;

public interface PassengerRepo extends CrudRepository<Passenger, Integer> {
}
