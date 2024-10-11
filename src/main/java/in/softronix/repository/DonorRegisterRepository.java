package in.softronix.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import in.softronix.entity.donorregister;

@Repository
public interface DonorRegisterRepository extends JpaRepository<donorregister, Integer>  {

	 donorregister findByUserid(String userId);


	
}
