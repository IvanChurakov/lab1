package com.example.lab1.repository;

import com.example.lab1.model.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ITicketRepository extends JpaRepository<Ticket, UUID> { }
