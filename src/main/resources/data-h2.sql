INSERT INTO USER VALUES(1, 'test@test.com', TRUE, '$2a$10$gFGOvUUE/20tvXtwpL0v2OFupGbv4wwFEijCpOFZB9yts27QdIpFi', 'ATHLETE', 'test');
INSERT INTO USER VALUES(2, 'athlete@test.com', TRUE, '$2a$10$SrjqKixCIbBg1Yyo2Sc1I.lqM9LUixH8z9uXiTSUqis3qRB45tIF6', 'ATHLETE', 'athlete');
INSERT INTO USER VALUES(3, 'coach@test.com', TRUE, '$2a$10$SrjqKixCIbBg1Yyo2Sc1I.lqM9LUixH8z9uXiTSUqis3qRB45tIF6', 'COACH', 'coach');
INSERT INTO APPLICANT VALUES(1, 'Cardiff', 'Pending', 'Emily', 'Cardiff University', 'Not trying enough', '15/04/1996', 'Ryan', 'MALE', 24.0, FALSE, 'Davies', 'parent@example.com', '242424', '07111111111', 'CF24', 'Friends', 1);
INSERT INTO APPLICANT VALUES(2, 'Cardiff', 'Accepted', 'Emily', 'Cardiff University', 'Very Positive', '15/04/1996', 'John', 'MALE', 24.0, FALSE, 'Smith', 'parent@example.com', '242424', '07111111111', 'CF24', 'Friends', 2);
INSERT INTO FEEDBACK VALUES(1, 1, 'MESSAFEEAD','file.txt');
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
INSERT INTO rpe VALUES (4 , '2020-12-14 19:32:40.957000','2020-12-03',5,100,'Water',2 )
