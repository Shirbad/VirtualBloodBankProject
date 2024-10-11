package in.softronix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.donorregister;
import in.softronix.entity.searchblood;
import in.softronix.repository.DonorRegisterRepository;
import in.softronix.repository.SearchbloodRepository;

@Service
public class SearchbloodService {

	 @Autowired
	    private SearchbloodRepository searchBloodRepository;

	    public searchblood saveSearchCriteria(searchblood searchBlood) {
	        return searchBloodRepository.save(searchBlood);
	    }
	   
}
