package com.team1.welshrowing.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Feedback {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private long feedbackId;

        private long applicantId;

        private String message;

        private String file;
}

