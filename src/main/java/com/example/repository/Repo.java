package com.example.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.UserModel;




@Repository
public interface Repo extends CrudRepository<UserModel, Integer> {

}
