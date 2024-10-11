package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.SHealth;

@Repository
public interface SHealthRepository extends JpaRepository<SHealth, Integer>{

}
