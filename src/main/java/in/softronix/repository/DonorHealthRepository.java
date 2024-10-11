package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.DHealth;

@Repository
public interface DonorHealthRepository extends JpaRepository<DHealth, Integer>{

}
