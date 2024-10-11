 package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.bloodgroupcount;

@Repository
public interface BloodGroupCountRepository extends JpaRepository<bloodgroupcount, Integer> {

	bloodgroupcount findByBloodgroupAndRh(String bloodgroup, String rh);
}
