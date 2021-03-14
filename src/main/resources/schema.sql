CREATE TABLE IF NOT EXISTS `user` (
    `user_id` bigint(20) AUTO_INCREMENT,
    `email` varbinary(255) DEFAULT NULL,
    `is_active` bit(1),
    `password` varchar(255) DEFAULT NULL,
    `roles` varchar(255) DEFAULT NULL,
    `user_name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`user_id`)
);

CREATE TABLE IF NOT EXISTS `applicant` (
     `applicant_id` bigint(20) AUTO_INCREMENT,
     `address` varbinary(255) DEFAULT NULL,
     `application_situation` varchar(255) DEFAULT NULL,
     `coach` varchar(255) DEFAULT NULL,
     `college_or_university_name` varbinary(255) DEFAULT NULL,
     `comments` varbinary(255) DEFAULT NULL,
     `dob` varbinary(255) DEFAULT NULL,
     `first_name` varbinary(255) DEFAULT NULL,
     `gender` varchar(255) DEFAULT NULL,
     `height` double DEFAULT NULL,
     `is_previously_tested` bit(1) DEFAULT NULL,
     `last_name` varbinary(255) DEFAULT NULL,
     `parent_email` varbinary(255) DEFAULT NULL,
     `passport_holder` varbinary(255) DEFAULT NULL,
     `phone_number` varbinary(255) DEFAULT NULL,
     `postcode` varbinary(255) DEFAULT NULL,
     `where_did_hear` varchar(255) DEFAULT NULL,
     `user_id` bigint(20) DEFAULT NULL,
     PRIMARY KEY (`applicant_id`),
     CONSTRAINT `FKo175qdudgxor4i10p66j0faip` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);


CREATE TABLE IF NOT EXISTS `feedback` (
                            `feedback_id` bigint(20) AUTO_INCREMENT,
                            `applicant_id` bigint(20),
                            `file` varchar(255) DEFAULT NULL,
                            `message` varbinary(255) DEFAULT NULL,
                            PRIMARY KEY (`feedback_id`)
);


CREATE TABLE IF NOT EXISTS `interview` (
                             `interview_id` bigint(20) AUTO_INCREMENT,
                             `aspirations` varchar(255) DEFAULT NULL,
                             `coach_role` varchar(255) DEFAULT NULL,
                             `intrinsicorextrinsic` int(11) DEFAULT NULL,
                             `intrinsicorextrinsiccomp` int(11) DEFAULT NULL,
                             `opportunitymeaning` varchar(255) DEFAULT NULL,
                             `possiblebarriers` varchar(255) DEFAULT NULL,
                             `processoroutcome` int(11) DEFAULT NULL,
                             `processoroutcomecomp` int(11) DEFAULT NULL,
                             `rolemodels` varchar(255) DEFAULT NULL,
                             `sportexp` varchar(255) DEFAULT NULL,
                             `whatcanyoubring` varchar(255) DEFAULT NULL,
                             `yourstory` varchar(255) DEFAULT NULL,
                             `applicant_id` bigint(20) DEFAULT NULL,
                             `date_time` datetime(6) DEFAULT NULL,
                             `elitesportdeff` varchar(255) DEFAULT NULL,
                             `user_id` bigint(20) DEFAULT NULL,
                             PRIMARY KEY (`interview_id`),
                             CONSTRAINT `FKr1uf9tvt2l7jx0x7riec5hfxe` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);



CREATE TABLE IF NOT EXISTS `morning_monitoring` (
                                      `morning_monitoring_id` bigint(20) AUTO_INCREMENT,
                                      `date_time` datetime(6) DEFAULT NULL,
                                      `perceived_mental_state` int(11) DEFAULT NULL,
                                      `perceived_shape` int(11) DEFAULT NULL,
                                      `sleep_quality` int(11) DEFAULT NULL,
                                      `sleep_quantity` double DEFAULT NULL,
                                      `standing_heart_rate` int(11) DEFAULT NULL,
                                      `waking_heart_rate` int(11) DEFAULT NULL,
                                      `osmotic_heart_rate` int(11) DEFAULT NULL,
                                      `user_id` bigint(20) DEFAULT NULL,
                                      PRIMARY KEY (`morning_monitoring_id`),
                                      CONSTRAINT `FKjv0wycdewcilctlyxm1q9vnai` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);

CREATE TABLE IF NOT EXISTS `personality_interview` (
                                         `interview_id` bigint(20) AUTO_INCREMENT,
                                         `abilitytoworkwithothers` int(11) DEFAULT NULL,
                                         `bravery` int(11) DEFAULT NULL,
                                         `competitiveness` int(11) DEFAULT NULL,
                                         `confidence` int(11) DEFAULT NULL,
                                         `hardworking` int(11) DEFAULT NULL,
                                         `lightheartedness` int(11) DEFAULT NULL,
                                         `onoffswitch` int(11) DEFAULT NULL,
                                         `open_mindedness` int(11) DEFAULT NULL,
                                         `resilience` int(11) DEFAULT NULL,
                                         `risktaking` int(11) DEFAULT NULL,
                                         `selfdiscipline` int(11) DEFAULT NULL,
                                         `applicant_id` bigint(20) DEFAULT NULL,
                                         `date_time` datetime(6) DEFAULT NULL,
                                         `user_id` bigint(20) DEFAULT NULL,
                                         PRIMARY KEY (`interview_id`),
                                         CONSTRAINT `FKrx9kfjnou8lwgo4wh6ry5tdhr` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);



CREATE TABLE IF NOT EXISTS `physical_test` (
                                 `test_id` bigint(20) AUTO_INCREMENT,
                                 `armpress` int(11) DEFAULT NULL,
                                 `armpull` int(11) DEFAULT NULL,
                                 `armpullmax` int(11) DEFAULT NULL,
                                 `armspan` int(11) DEFAULT NULL,
                                 `basicscore` varchar(255) DEFAULT NULL,
                                 `coachtesting` varchar(255) DEFAULT NULL,
                                 `contactphone` varchar(255) DEFAULT NULL,
                                 `dateoftest` varchar(255) DEFAULT NULL,
                                 `emailofguardian` varchar(255) DEFAULT NULL,
                                 `flexibility` varchar(255) DEFAULT NULL,
                                 `homephonenumber` varchar(255) DEFAULT NULL,
                                 `injuries` varchar(255) DEFAULT NULL,
                                 `legpress` int(11) DEFAULT NULL,
                                 `nameofathlete` varchar(255) DEFAULT NULL,
                                 `nameofparent` varchar(255) DEFAULT NULL,
                                 `next_stage` varchar(255) DEFAULT NULL,
                                 `notesonflexibility` varchar(255) DEFAULT NULL,
                                 `notesonscore` varchar(255) DEFAULT NULL,
                                 `observations` varchar(255) DEFAULT NULL,
                                 `previoussports` varchar(255) DEFAULT NULL,
                                 `relationshiptoathlete` varchar(255) DEFAULT NULL,
                                 `schoolorcluboruniversity` varchar(255) DEFAULT NULL,
                                 `score` int(11) DEFAULT NULL,
                                 `standingheight` int(11) DEFAULT NULL,
                                 `weight` int(11) DEFAULT NULL,
                                 `applicant_id` bigint(20) DEFAULT NULL,
                                 `date_time` datetime(6) DEFAULT NULL,
                                 `nummonthstraining` varchar(255) DEFAULT NULL,
                                 `numofendurancesessions` varchar(255) DEFAULT NULL,
                                 `numofsessionperweek` varchar(255) DEFAULT NULL,
                                 `numofstrengthsessions` varchar(255) DEFAULT NULL,
                                 `numofyearstraining` varchar(255) DEFAULT NULL,
                                 `user_id` bigint(20) DEFAULT NULL,
                                 PRIMARY KEY (`test_id`),
                                 CONSTRAINT `FKco6y0isk8jvcxymh2lys9fama` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);


CREATE TABLE IF NOT EXISTS `rpe` (
                       `rpeform_id` bigint(20) AUTO_INCREMENT,
                       `date_time` datetime(6) DEFAULT NULL,
                       `dateof_test` varchar(255) DEFAULT NULL,
                       `rpe` int(11) DEFAULT NULL,
                       `session_duration` int(11) DEFAULT NULL,
                       `typeof_session` varbinary(255) DEFAULT NULL,
                       `user_id` bigint(20) DEFAULT NULL,
                       PRIMARY KEY (`rpeform_id`),
                       CONSTRAINT `FKhanscaigddo3x05px98k523wp` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);


CREATE TABLE IF NOT EXISTS `xtraining` (
                             `x_training_id` bigint(20) AUTO_INCREMENT,
                             `date_of_training` date DEFAULT NULL,
                             `date_time` datetime(6) DEFAULT NULL,
                             `total_distance_of_training` int(11) DEFAULT NULL,
                             `total_time_of_training` int(11) DEFAULT NULL,
                             `type_of_training` varbinary(255) DEFAULT NULL,
                             `user_id` bigint(20) DEFAULT NULL,
                             PRIMARY KEY (`x_training_id`),
                             CONSTRAINT `FKdb74vuuxar81ex6o6sksjmqdc` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);

INSERT INTO user VALUES(1, 'test@test.com', TRUE, '$2a$10$gFGOvUUE/20tvXtwpL0v2OFupGbv4wwFEijCpOFZB9yts27QdIpFi', 'ATHLETE', 'test');
INSERT INTO user VALUES(2, 'athlete@test.com', TRUE, '$2a$10$SrjqKixCIbBg1Yyo2Sc1I.lqM9LUixH8z9uXiTSUqis3qRB45tIF6', 'ATHLETE', 'athlete');
INSERT INTO user VALUES(3, 'coach@test.com', TRUE, '$2a$10$SrjqKixCIbBg1Yyo2Sc1I.lqM9LUixH8z9uXiTSUqis3qRB45tIF6', 'COACH', 'coach');
INSERT INTO applicant VALUES(1, 'Cardiff', 'Pending', 'Emily', 'Cardiff University', 'Not trying enough', '15/04/1996', 'Ryan', 'MALE', 24.0, FALSE, 'Davies', 'parent@example.com', '242424', '07111111111', 'CF24', 'Friends', 1);
INSERT INTO applicant VALUES(2, 'Cardiff', 'Accepted', 'Emily', 'Cardiff University', 'Very Positive', '15/04/1996', 'John', 'MALE', 24.0, FALSE, 'Smith', 'parent@example.com', '242424', '07111111111', 'CF24', 'Friends', 2);
INSERT INTO feedback VALUES(1, 1, 'MESSAFEEAD','file.txt');
INSERT INTO morning_monitoring VALUES(1, '2020-12-11 12:00:00', 10, 5, 6, 10, 9, 70, 60, 2);
INSERT INTO morning_monitoring VALUES(2, '2020-12-10 12:00:00', 20, 7, 7, 10, 9, 30, 50, 2);
INSERT INTO morning_monitoring VALUES(3, '2020-12-9 12:00:00', 15, 8, 7, 9, 9, 35, 50, 2);
INSERT INTO morning_monitoring VALUES(4, '2020-12-8 12:00:00', 6, 9, 8, 9, 9, 37, 43, 2);
INSERT INTO morning_monitoring VALUES(5, '2020-12-7 12:00:00', 9, 7, 8, 8, 9, 40, 49, 2);
INSERT INTO morning_monitoring VALUES(6, '2020-12-6 12:00:00', 7, 10, 4, 9, 9, 41, 48, 2);
INSERT INTO xtraining VALUES(1, '2020-12-6', '2020-12-6 12:00:00', 10, 100, 'Outdoor Run', 3);
INSERT INTO xtraining VALUES(2, '2020-12-10', '2020-12-10 12:00:00', 20, 200, 'Road Cycle', 3);
INSERT INTO xtraining VALUES(3, '2020-12-11', '2020-12-11 12:00:00', 30, 300, 'Concept II / Watt Bike', 3);
INSERT INTO xtraining VALUES(4, '2020-12-12', '2020-12-12 12:00:00', 40, 400, 'Swimming', 3);
