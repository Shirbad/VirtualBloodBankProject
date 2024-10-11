package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.softronix.entity.bloodbank;
import in.softronix.entity.donorregister;

public interface BloodBankRepository extends JpaRepository<bloodbank, Integer>{
	bloodbank findByUserid(String userId);
}
