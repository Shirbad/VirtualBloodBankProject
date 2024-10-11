package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.bloodbank;
import in.softronix.entity.donorregister;
import in.softronix.repository.BloodBankRepository;

@Service
public class bloodbankService {

	@Autowired
	private BloodBankRepository bloodbankRepository;
	
	 public bloodbank saveBloodBank(bloodbank bloodBank) {
	        return bloodbankRepository.save(bloodBank);
	    }
	 
	 public bloodbank findByUserId(String userId) {
	        return bloodbankRepository.findByUserid(userId);
	    }
}
