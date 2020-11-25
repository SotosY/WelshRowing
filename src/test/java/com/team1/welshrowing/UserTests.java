package com.team1.welshrowing;

import static org.assertj.core.api.Assertions.assertThat;

import com.team1.welshrowing.domain.User;
import com.team1.welshrowing.repository.UserRepo;
import com.team1.welshrowing.service.UserCreateService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;


@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(false)
public class UserTests {

    @Autowired
    private UserCreateService userCreateService;

//    Allows to use EntityManager in tests
    @Autowired
    private TestEntityManager entityManager;

    @Test
    public void CreateUser1() {
        User newUser = new User();
        newUser.setUserName("Sotiris");
        newUser.setUserType("Athlete");
        newUser.setEmail("sotos-gate9@gmail.com");
        newUser.setPassword("lalala123");


        userCreateService.addUser(newUser);

        User savedUser = userCreateService.addUser(newUser);

        User existUser = entityManager.find(User.class, savedUser.getUser_id());

      assertThat(existUser.getEmail()).isEqualTo(newUser.getEmail());

    }

    @Test
    public void CreateUser2() {
        User newUser = new User();
        newUser.setUserName("Pavlos12");
        newUser.setUserType("Athlete");
        newUser.setEmail("pavlosK@gmail.com");
        newUser.setPassword("password123!");


        userRepo.save(newUser);

        User savedUser = userRepo.save(newUser);

        User existUser = entityManager.find(User.class, savedUser.getUser_id());

        assertThat(existUser.getEmail()).isEqualTo(newUser.getEmail());

    }
}
