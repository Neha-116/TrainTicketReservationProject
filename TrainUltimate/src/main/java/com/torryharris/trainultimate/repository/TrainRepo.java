package com.torryharris.trainultimate.repository;

import com.torryharris.trainultimate.model.Train;
import org.springframework.data.repository.CrudRepository;

public interface TrainRepo extends CrudRepository<Train,Integer> {
}
