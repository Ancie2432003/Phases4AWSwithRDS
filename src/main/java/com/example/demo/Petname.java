package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Petname {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private String username;
private String pwd; 
private String doctorname;
private String ownername;
private String petname;
private int rate;
private double totalprice;
}
