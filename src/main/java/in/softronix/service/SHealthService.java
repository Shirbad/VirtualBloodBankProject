package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.SHealth;
import in.softronix.repository.SHealthRepository;



@Service
public class SHealthService {

	@Autowired
	private SHealthRepository shealthRepository;
	
	 public SHealth saveShealth(SHealth shealth) {
	        return shealthRepository.save(shealth);
	    }
}
