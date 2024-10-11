package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.HRequest;
import in.softronix.repository.HRequestRepository;

@Service
public class HRequestService {

	 @Autowired
	    private HRequestRepository hRequestRepository;

	    public HRequest saveHRequest(HRequest hRequest) {
	        return hRequestRepository.save(hRequest);
	    }
}
