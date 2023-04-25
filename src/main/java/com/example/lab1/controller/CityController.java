package com.example.lab1.controller;

import com.example.lab1.model.Flight;
import com.example.lab1.modelDTO.CityDTO;
import com.example.lab1.service.CityService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class CityController {
    private final CityService cityService;

    public CityController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping("/cities")
    public ResponseEntity getAllCities() {
        return ResponseEntity.ok(cityService.getAllCities());
    }

    @PostMapping(value = "/cities/add", produces = "application/json", consumes = "application/json" )
    public ResponseEntity createFlight(@RequestBody CityDTO cityDTO) {
        return ResponseEntity.ok(cityService.createCity(cityDTO));
    }
}
