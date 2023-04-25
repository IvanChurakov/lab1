package com.example.lab1.repository;

import com.example.lab1.model.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface IFlightRepository extends JpaRepository<Flight, UUID> {
    List<Flight> findByFlightNumber(String flightNumber);
}