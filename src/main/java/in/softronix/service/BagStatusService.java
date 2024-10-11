package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.BagStatus;
import in.softronix.repository.BagStatusRepository;



@Service
public class BagStatusService {

	@Autowired
	private BagStatusRepository bagRepository;
	
	 public BagStatus savebagstatus(BagStatus bag) {
	        return bagRepository.save(bag);
	    }
}
