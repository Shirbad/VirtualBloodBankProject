package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.softronix.entity.bloodbag;

public interface BloodBagRepository extends JpaRepository<bloodbag, Integer> {

	
}
