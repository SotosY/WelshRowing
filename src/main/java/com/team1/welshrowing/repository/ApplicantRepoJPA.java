package com.team1.welshrowing.repository;

import com.team1.welshrowing.domain.Applicant;
import com.team1.welshrowing.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ApplicantRepoJPA extends JpaRepository<Applicant, Long> {

    /**
     * JPQL query
     * SpEL - EntityName used instead of Applicant. It replaces the entityName with the domain type of the repository automatically
     * @Param :application_situation - Bind parameters used
     */
    @Query("FROM #{#entityName} WHERE application_situation= :application_situation")
    List<Applicant> findByStatus (@Param("application_situation") String aStatus);

    @Query("UPDATE #{#entityName} SET application_situation= :application_situation WHERE application_situation= :application_situation")
    List<Applicant> updateStatus(@Param("application_situation") String newStatus, @Param("application_situation") String oldStatus);
}
