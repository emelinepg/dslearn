INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Java', 'java.jpg', 'grayjava.jpg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('version 1.0', TIMESTAMP WITH TIME ZONE '2022-01-12T00:00:00Z', TIMESTAMP WITH TIME ZONE '2022-06-06T00:00:00Z', 1L);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('version 2.0', TIMESTAMP WITH TIME ZONE '2022-07-07T00:00:00Z', TIMESTAMP WITH TIME ZONE '2023-01-12T00:00:00Z', 1L);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('class 1', 'class about java', 1, 'resource.jpg', 3, 'http://www.mycourse.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('class 2', 'class about c#', 2, 'resource.jpg', 1, 'http://www.mycourse.com', 2);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('class 3', 'class about python', 3, 'resource.jpg', 2, 'http://www.mycourse.com', 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('introduction', 'introducing java', 1, 'http://www.mycourse.com', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('oo programming', 'introducing oo', 2, 'http://www.mycourse.com', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('framework', 'python framework', 1, 'http://www.mycourse.com', 2, null);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-03-12T00:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 2, TIMESTAMP WITH TIME ZONE '2022-05-12T00:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-04-12T00:00:00Z', null, true, false);
