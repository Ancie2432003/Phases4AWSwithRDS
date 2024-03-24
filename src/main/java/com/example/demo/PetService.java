package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetService {
@Autowired
PetRepo repo;
public Petname insert(Petname e)
{
	return repo.save(e);
}
public List<Petname> getall()
{
	return repo.findAll();
	
}
}
