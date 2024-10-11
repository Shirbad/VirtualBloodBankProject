package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.DHealth;
import in.softronix.repository.DonorHealthRepository;

@Service
public class DonorHealthService {

	@Autowired
	private DonorHealthRepository dhealthRepository;
	
	 public DHealth saveDhealth(DHealth dhealth) {
	        return dhealthRepository.save(dhealth);
	    }
}
