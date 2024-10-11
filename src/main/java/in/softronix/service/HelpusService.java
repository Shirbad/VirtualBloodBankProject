package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.Helpus;
import in.softronix.repository.HelpusRepository;


@Service
public class HelpusService {
	
	@Autowired
	HelpusRepository helpRepository;

    public Helpus savehelpus(Helpus helpus) {
        return helpRepository.save(helpus);
        
    }

}
