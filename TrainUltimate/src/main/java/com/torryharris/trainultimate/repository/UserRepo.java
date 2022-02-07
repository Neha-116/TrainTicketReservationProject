package com.torryharris.trainultimate.repository;

import com.torryharris.trainultimate.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User,String> {
}
