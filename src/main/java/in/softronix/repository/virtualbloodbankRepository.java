package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.Login;
import in.softronix.entity.virtualbloodbank;

@Repository
public interface virtualbloodbankRepository extends JpaRepository<virtualbloodbank, Integer>{
    public virtualbloodbank findByEmail(String userid);

}
