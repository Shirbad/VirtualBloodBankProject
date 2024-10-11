package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.bloodbank;
import in.softronix.entity.hospital;

@Repository
public interface hospitalRegisterRepository extends JpaRepository<hospital, Integer>{

	hospital findByUserid(String userId);
}
