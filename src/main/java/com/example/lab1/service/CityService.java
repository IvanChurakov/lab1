package com.example.lab1.service;

import com.example.lab1.model.City;
import com.example.lab1.model.Flight;
import com.example.lab1.modelDTO.CityDTO;
import com.example.lab1.repository.ICityRepository;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class CityService {
    private ICityRepository cityRepository;

    public CityService(ICityRepository cityRepository)
    {
        this.cityRepository = cityRepository;
    }

    public List<City> getAllCities()
    {
        List<City> cities = cityRepository.findAll();
        Collections.sort(cities);
        return cities;
    }

    public CityDTO createCity(CityDTO cityDTO) {

        City city = new City(cityDTO.getDisplayName());

        City cityResult = cityRepository.save(city);

        return new CityDTO(cityResult.getDisplayName());
    }
}
