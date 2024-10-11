package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.bloodbag;
import in.softronix.repository.BloodBagRepository;



@Service
public class BloodBagService {

	@Autowired
	private BloodBagRepository bloodbagRepository;
	
	 public bloodbag saveBloodBag(bloodbag bloodBag) {
	        return bloodbagRepository.save(bloodBag);
	    }
	 
	 
}
