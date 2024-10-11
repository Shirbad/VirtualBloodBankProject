package in.softronix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import in.softronix.repository.dateofdonateRepository;
import in.softronix.entity.dateofdonate;

@Service
public class dateofdonateService {

	 @Autowired
	    private dateofdonateRepository dateofdonateRepository;

	    public dateofdonate saveDateOfDonate(dateofdonate dateofDonate) {
	        return dateofdonateRepository.save(dateofDonate);
	    }
	    
	    public List<dateofdonate> getHistoryByYourId(String yourid) {
	        return dateofdonateRepository.findByYourid(yourid);
	    }
	    
	    
	    
}
