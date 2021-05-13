package com.team1.welshrowing;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class WelshRowingApplication {

    public static void main(String[] args) {
        SpringApplication.run(WelshRowingApplication.class, args);
    }

}
