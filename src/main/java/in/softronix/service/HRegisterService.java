package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.bloodbank;
import in.softronix.entity.hospital;
import in.softronix.repository.hospitalRegisterRepository;

@Service
public class HRegisterService {

	 @Autowired
	    private hospitalRegisterRepository hospitalRepository;

	    public hospital saveHospitalRegister(hospital hospital) {
	        return hospitalRepository.save(hospital);
	    }
	    
	    public hospital findByUserId(String userId) {
	        return hospitalRepository.findByUserid(userId);
	    }
}
