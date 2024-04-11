

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

\

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@username', 'admin@password');

\
CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

\

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(25, 'BSHRM', '2019-11-27 09:26:08'),
(26, 'BSIT', '2019-11-25 13:22:42'),
(65, 'BSCRIM', '2019-12-02 09:25:36');

\

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);


ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);


ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);


ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);


ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);


ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);


ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);


ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);


ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;


ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;


ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;


ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;


ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;


