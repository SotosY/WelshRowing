package com.team1.welshrowing.repository;

import com.team1.welshrowing.domain.Feedback;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class FeedbackRepoImpl implements FeedbackRepo {

    private final FeedbackRepoJPA repository;

    public FeedbackRepoImpl(FeedbackRepoJPA repository) {
        this.repository = repository;
    }

    @Override
    public void saveFeedback(Feedback feedback) {
        repository.save(feedback);
    }

    @Override
    @Cacheable(cacheNames = "feedback", key = "#id")
    public Optional<Feedback> findById(Long id) {
        return repository.findById(id);
    }
}
