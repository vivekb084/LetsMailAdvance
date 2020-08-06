-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2016 at 06:28 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Mailserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `user` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subject` varchar(1000) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `file` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`user`, `sender`, `date`, `subject`, `message`, `file`) VALUES
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@7c3525ea', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@54c655b', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@627d29e5', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@749abe7', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@2b1d8229', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@7797899', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@505fa3bf', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@423f6e58', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@58de4b7f', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@6adaaae8', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@2934a386', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@2a4bd6be', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@58ff69a3', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 09:09:07', 'CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@455b6599', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@5229d601', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@38a105cb', '/'),
('vivekb084', 'Quora Digest <digest-noreply@quora.com>', '2016-06-07 10:26:36', 'What is real life horror incidence anybody ever experienced? - Quora', 'javax.mail.internet.MimeMultipart@2309b7ce', '/'),
('vivekb084', 'Policy Advisor <noreply@taskbucksmailer.com>', '2016-06-07 11:32:45', 'This is the time to plan your retirement', '<meta http-equiv=''Content-Type'' content=''text/html; charset=UTF-8''> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" width="100%" style="max-width:600px;"> \r\n   \r\n   <tr> \r\n    <td align="left" style="color:#069;font-size:23px;line-height:36px">Dear Customer,<br /> <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; text-decoration:none;">Planning a Rs. 500,000 p.a pension is now super easy!!</a></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:24px; padding-top:5px;color:#069;"><strong><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4245" style="outline:none; border:0px; color:#069;">Pension plan</a></strong><strong></strong></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="left" style="font-size:15px; padding-top:15px;"><span style="font-size:14px; color:#000; line-height:25px;"> \r\n      <ul style="padding-top:0px; margin-top:0px; font-size:18px;"> \r\n       <li>Get Rs. 500,000 p.a safe income </li> \r\n       <li> Get 10 times life protection </li> \r\n       <li> Guaranteed maturity benefits </li> \r\n       <li>Save Tax upto Rs. 46,000* annually </li> \r\n      </ul> </span></td> \r\n   </tr> \r\n   <tr> \r\n    <td align="center" style="padding-bottom:20px; padding-top:25px;padding-left:25px;"><a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;cid=22&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=clicks&amp;forwardurl=4244" style="outline:none; border:0px; color:#fff;  font-size:23px; font-weight:bold; background:#3a6699; padding:10px 25px;">Calculate Here </a></td> \r\n   </tr> \r\n   \r\n </table> \r\n <table align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" width="480" style="padding: 0px; color: rgb(153, 153, 153); font-size: 10px; line-height: 1.5em; border:1px solid #fff; "> \r\n   \r\n   <tr> \r\n    <td style="padding: 5px 0px;">To stop receiving these emails please <a href="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=stop&amp;cid=22" style="color: rgb(153, 153, 153);">click here </a> to unsubscribe. <br /> </td> \r\n   </tr> \r\n   \r\n </table>     \r\n <img alt="" src="http://tbmr.taskbucksmailer.com/lapt//MailStatus2?id=17092&amp;nid=15069&amp;subid=9403953&amp;domainur=tbmr.taskbucksmailer.com/lapt/&amp;queue=q43&amp;action=readstatus&amp;cid=22" height="0px" width="0px" />  \r\n', '/'),
('vivekb084', 'Saurabh Saini <saurabh.saini95@gmail.com>', '2016-06-07 12:28:51', 'Re: CD-adapaco Internship (Mechanical/PIE)', 'javax.mail.internet.MimeMultipart@69a7b07', '/');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `Name`) VALUES
('manish.ca', '12312', 'manish'),
('Rahul', '2323432', 'RAhl'),
('vivekb084', 'vb02071995', 'Vivek'),
('vivekb085', '1234', 'Rahul'),
('vivekb086', '123', 'Vivek'),
('vivekb087', '123', 'Rahuls');

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
  `user` varchar(60) NOT NULL,
  `reciever` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`user`, `reciever`, `date`, `subject`, `message`, `file`) VALUES
('vivek', 'sdfsdf', '2016-06-18 10:44:37', 'sdfdsa', 'dsf', '/home/vivek/ab.wav'),
('vivekb084', 'vivekb084@gmail.coms', '2016-06-19 03:35:28', 'Tesging', 'jjkldsfklsadf', '/MyFolder/Sun Jun 19 09:04:20 IST 2016'),
('vivekb084', 'vivekb084@gmail.coms', '2016-06-19 03:38:10', 'Vloice mail', 'dsas', '/Sun Jun 19 09:08:00 IST 2016'),
('vivekb084', 'vivekb084@gmail.coms', '2016-06-19 03:42:37', 'Test', '', '/Sun Jun 19 09:11:52 IST 2016'),
('vivekb084', 'vivekb084@gmail.coms', '2016-06-19 03:46:04', 'voice', '', '/home/vivek/Sun Jun 19 09:14:55 IST 2016'),
('vivekb084', 'vivekb084@gmail.coms', '2016-06-19 04:12:56', 'sdaf', 'sad', '/home/vivek/Sun Jun 19 09:41:47 IST 2016'),
('vivekb084', 'bindasl', '2016-06-19 04:23:46', '', '', '/home/vivek/Sun Jun 19 09:52:35 IST 2016'),
('vivekb084', 'vivekb084@gmail.com', '2016-06-19 04:48:58', 'dsaf', '', '/Sun Jun 19 10:17:48 IST 2016'),
('vivekb085', 'vivekb084@gmail.coms', '2016-06-20 11:21:26', 'sa', 'sdfdaf', '/MyFolder/Mon Jun 20 16:52:31 IST 2016'),
('vivekb085', 'vivekb084@gmail.coms', '2016-06-20 12:54:04', 'dfsa', '', '/MyFolder/Mon Jun 20 18:23:34 IST 2016'),
('vivekb085', 'fsad', '2016-06-21 02:17:01', 'sdx', '', '/home/vivek/NetBeansProjects/MailServer2/MyFolder/Tue Jun 21 07:44:44 IST 2016'),
('vivekb085', 'vivekb084@gmail.com', '2016-06-22 02:37:18', 'abcd', '', '/home/vivek/NetBeansProjects/MailServer2/MyFolder/Wed Jun 22 08:02:24 IST 2016'),
('vivekb084', 'vivekb084@gmail.com', '2016-06-23 02:53:53', 'hi', 'fsd', '/home/vivek/NetBeansProjects/MailServer2/MyFolder/Thu Jun 23 08:19:28 IST 2016'),
('vivekb084', 'vivekb085', '2016-06-23 05:30:04', 'Hii', 'Plz check ', ''),
('vivekb084', 'learntechbyme@gmail', '2016-06-23 05:33:14', 'Okk', 'Hey', ''),
('vivekb084', 'vivekb084@gmail.com', '2016-06-23 05:37:39', 'Hi', 'vivek', ''),
('vivekb084', 'manish.cabindal@gmail.com', '2016-06-23 15:13:30', 'voice', 'HI ', '/home/vivek/NetBeansProjects/MailServer2/MyFolder/Thu Jun 23 20:43:04 IST 2016'),
('vivekb084', 'vivekb084@gmail.com', '2016-06-24 14:53:47', 'Hi', 'Abd', '/home/vivek/NetBeansProjects/MailServer2/MyFolder/Fri Jun 24 20:23:26 IST 2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
