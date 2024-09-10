package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.project.model.Bus;

public interface BusRepository extends JpaRepository<Bus, Integer>
{

	List<Bus> findByFromLocationAndToLocation(String fromLocation, String toLocation);
	

}
