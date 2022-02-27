-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 12:25 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raheel_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_address` varchar(255) NOT NULL,
  `branch_contact` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'BWN', 'Bhawalnagar', '00', b'1', '2020-02-15 13:14:26', '3671t01b-a322-11e9-920d-84ef1w7c', NULL, NULL),
(2, 'Melsi', 'Melsi', '00', b'0', '2020-02-15 21:22:33', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 20:47:55', '3671t01b-a322-11e9-920d-84ef1w7c'),
(3, 'BWP', 'BWP', '00', b'0', '2020-02-18 20:48:20', '3671t01b-a322-11e9-920d-84ef1w7c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `title` varchar(255) DEFAULT NULL,
  `id` int(6) UNSIGNED NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `nin` varchar(255) DEFAULT NULL,
  `traning_detail` varchar(255) DEFAULT NULL,
  `employee_hospital` varchar(255) DEFAULT NULL,
  `date_from` varchar(255) DEFAULT NULL,
  `date_to` varchar(255) DEFAULT NULL,
  `employee_course` varchar(255) DEFAULT NULL,
  `employee_attainment` varchar(255) DEFAULT NULL,
  `british_driver_license` varchar(255) DEFAULT NULL,
  `car` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `language_level` varchar(255) DEFAULT NULL,
  `hear_about_agency` varchar(255) DEFAULT NULL,
  `union_member` varchar(255) DEFAULT NULL,
  `amount_of_cover` varchar(255) DEFAULT NULL,
  `policy_number` varchar(255) DEFAULT NULL,
  `policy_exp` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`title`, `id`, `surname`, `firstname`, `lastname`, `email`, `mobile_number`, `nationality`, `dob`, `nin`, `traning_detail`, `employee_hospital`, `date_from`, `date_to`, `employee_course`, `employee_attainment`, `british_driver_license`, `car`, `language`, `language_level`, `hear_about_agency`, `union_member`, `amount_of_cover`, `policy_number`, `policy_exp`, `picture`, `signature`, `created_at`, `updated_at`) VALUES
('', 2, 'ma', 'tayyib', 'maas', 'umar@armyspy.com', '000000000', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-18 05:00:00', '2022-02-18 05:00:00'),
('test', 3, 'test', 'test', 'test', 'test@gmail.com', '0780406600', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-18 05:00:00', '2022-02-18 05:00:00'),
('test', 4, 'test', 'test', 'test', 'test@gmail.com', '0780406600', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-18 05:00:00', '2022-02-18 05:00:00'),
('Mr', 5, 'Malhi', 'Raheel', 'Malhi', 'raheel@tringcare.co.uk', '', 'Pakistani', '1983-07-12', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-21 05:00:00', '2022-02-21 05:00:00'),
('', 6, 'Akram', 'Muhammad', 'jjhjhj', 'nomanakram114@gmail.com', '03069691905', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-23 05:00:00', '2022-02-23 05:00:00'),
('', 7, 'Akram', 'Muhammad', 'sasdasd', 'nomanakram114@gmail.com', '03069691905', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, NULL, '2022-02-25 05:00:00', '2022-02-25 05:00:00'),
('Mr. ', 8, 'Akram', 'Muhammad Usman', 'awan', 'nomanakram114@gmail.com', '03069691905', 'pakistan', '2022-02-24', '283746', NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'no', '', 'intermidiate', 'nmnmnmmn', 'yes', 'j jk', 'kjkj', '2022-02-26', NULL, 'noman akram', '2022-02-25 05:00:00', '2022-02-25 05:00:00'),
('', 9, 'Majeed', 'Muhammad', 'majeed', 'umarmajeed2011@gmail.com', '03016535886', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, '', '2022-02-25 05:00:00', '2022-02-25 05:00:00'),
('', 10, 'Majeed', 'Muhammad', 'majeed', 'umarmajeed2011@gmail.com', '03016535886', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, '', '2022-02-25 05:00:00', '2022-02-25 05:00:00'),
('', 11, 'Majeed', 'Muhammad', 'majeed', 'umarmajeed2011@gmail.com', '03016535886', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, '', '2022-02-25 05:00:00', '2022-02-25 05:00:00'),
('', 12, 'majeed', 'umar', 'majeed', 'umar@armyspy.com', '00000000000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', '', 'beginner', '', 'yes', '', '', '', NULL, 'Umer', '2022-02-25 05:00:00', '2022-02-25 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `employment_id` int(32) NOT NULL,
  `employee_id` int(32) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_from` date DEFAULT NULL,
  `company_to` date DEFAULT NULL,
  `position_held` varchar(255) DEFAULT NULL,
  `reason_for_leaving` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`employment_id`, `employee_id`, `company_name`, `company_from`, `company_to`, `position_held`, `reason_for_leaving`, `creation_date`) VALUES
(1, 10, 'company name 1', '0000-00-00', '0000-00-00', '', '', '2022-02-25 19:08:09'),
(2, 10, 'company name 2', '0000-00-00', '0000-00-00', '', '', '2022-02-25 19:08:09'),
(3, 10, '', '0000-00-00', '0000-00-00', '', '', '2022-02-25 19:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `edu_id` int(32) NOT NULL,
  `employee_id` int(32) NOT NULL,
  `institute_name` varchar(255) NOT NULL,
  `institute_from` date DEFAULT NULL,
  `institute_to` date DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`edu_id`, `employee_id`, `institute_name`, `institute_from`, `institute_to`, `degree`, `grade`, `creation_date`) VALUES
(1, 10, 'school name 1', '0000-00-00', NULL, '', '', '2022-02-25 19:08:09'),
(2, 10, 'school name 2', '0000-00-00', NULL, '', '', '2022-02-25 19:08:09'),
(3, 10, 'school name 3', '0000-00-00', NULL, '', '', '2022-02-25 19:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(32) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `user_role_id` varchar(32) NOT NULL,
  `secret_code` varchar(255) DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `profile_image`, `active`, `created_at`, `created_by`, `user_role_id`, `secret_code`, `updated_by`, `updated_at`) VALUES
('3671t01b-a322-11e9-920d-84ef1w7c', 'Umar', 'Majeed', 'umarmajeed2011@gmail.com', '$2y$10$gInpCXzGfMZNDiwHiZnoIeB.oahPC0nq0iaz9NuwzPRajnWB60tTe', '15804123059192.JPG', b'1', '2020-01-24 05:09:34', '', '83dbdd12-fb78-4433-832a-da8f8516', '9c3a1eb9cf2ae1fd95c342d77fa03190f2141748', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 11:58:42'),
('93544797-ba31-4ab1-ae05-75e93fea', 'Amir', 'Hussain', 'amir@gmail.com', '$2y$10$bv4HMIe61vJBaMPfOuei3.K1yfS6WtaQFHNsGRztmvR6RjWEcAgnW', NULL, b'1', '2020-01-25 05:58:05', '3671t01b-a322-11e9-920d-84ef1w7c', '21d38141-b56c-42c0-ab0e-d528d33a', NULL, NULL, '2020-02-15 11:48:52'),
('a1c5835f-0fde-4d00-aece-36fc7677', 'Waheed', 'Ch', 'Abdulwaheedch.bwn@gmail.com', '$2y$10$pS.bpXXXvGEs2xaB07Wfkuqq/TckQM4XwfYNAcRAfLMC4l8umVBYG', NULL, b'1', '2020-02-15 14:58:43', '3671t01b-a322-11e9-920d-84ef1w7c', '21d38141-b56c-42c0-ab0e-d528d33a', NULL, NULL, '2020-02-15 04:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_branches_permissions`
--

CREATE TABLE `user_branches_permissions` (
  `user_branches_permission_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_branches_permissions`
--

INSERT INTO `user_branches_permissions` (`user_branches_permission_id`, `user_id`, `branch_id`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, '3671t01b-a322-11e9-920d-84ef1w7c', 1, b'1', '2020-02-15 13:14:26', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 13:14:26', ''),
(3, 'a1c5835f-0fde-4d00-aece-36fc7677', 1, b'1', '2020-02-15 15:01:18', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 05:01:18', ''),
(4, '3671t01b-a322-11e9-920d-84ef1w7c', 3, b'1', '2020-02-18 20:48:38', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:38', ''),
(5, '3671t01b-a322-11e9-920d-84ef1w7c', 2, b'1', '2020-02-18 20:48:48', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:48', ''),
(6, 'a1c5835f-0fde-4d00-aece-36fc7677', 2, b'1', '2020-02-18 20:48:59', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:59', ''),
(7, 'a1c5835f-0fde-4d00-aece-36fc7677', 3, b'1', '2020-02-18 20:49:17', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:49:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_permission_id` varchar(32) NOT NULL,
  `user_permission_name` varchar(255) NOT NULL,
  `user_permission_route` varchar(255) NOT NULL,
  `user_permission_url` varchar(255) NOT NULL,
  `user_permission_type` varchar(5) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`user_permission_id`, `user_permission_name`, `user_permission_route`, `user_permission_url`, `user_permission_type`, `created_by`, `created_at`) VALUES
('02cc6753-664a-4810-8571-e3d13671', 'edit claim type', 'edit_claim_type_save', 'edit-claim-type', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:34:51'),
('0b9f50f8-5a2b-487a-99c9-c3a9713e', 'User Branches List', 'user_branches_list', 'branches-list', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 06:17:12'),
('0f28157b-ba89-447b-afa2-796ddf6f', 'Super Admin', 'superadmin', 'superadmin', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:38:35'),
('130d9f9b-696f-4932-b2fc-05e0476d', 'User Permissions Listing', 'all_user_permissions', 'user-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('1622aecc-2c93-4c20-a3e8-909633c0', 'Edit User', 'edit_user_save', 'edit-user', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 11:32:03'),
('1f46d670-184d-44e8-8e52-4dcecac0', 'User Roles Permissions List', 'all_user_roles_permissions', 'user-roles-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('225c4c2d-f769-4fbb-ac8f-53198bd7', 'cashbacks List', 'cashbacks_list', 'cashbacks', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:34:11'),
('2323ec85-6941-4e5a-a6d7-b9ae53b4', 'Add Purchase', 'add_purchase_save', 'add-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:10:19'),
('248ea111-b461-4f15-bce5-23c69e56', 'Delete Claim', 'delete_claim', 'delete-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 12:27:58'),
('2cea0e62-e3d8-4de4-9877-aaaaa326', 'Employee list', 'employee_list', 'employee', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2022-02-18 19:15:32'),
('2ea37ee5-74ca-4d9f-8877-4b9300af', 'Edit Cashback', 'edit_cashback_save', 'edit-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:35:51'),
('329e1729-dbf2-434b-8601-cb360d7d', 'Add User Permissions', 'add_user_permission_save', 'add-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3442fbd1-b08f-491d-ac31-b1394099', 'Reports', 'reports', 'reports', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 00:10:33'),
('349cd837-7ffc-4ed8-9005-4476cbef', 'Edit Product', 'edit_product_save', 'edit-product', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-14 23:07:36'),
('34c8da79-d170-4a7f-8bdb-bbb18910', 'Customers List', 'customers_list', 'customers', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:18:54'),
('356b64aa-25eb-4d7d-b302-b28a8197', 'Add User Role', 'add_user_role_save', 'add-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3571ceea-0081-4cbe-82eb-572f2af5', 'Edit Sale', 'edit_sale_save', 'edit-sale', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:34:05'),
('35a38441-f205-405a-9612-c31a6258', 'Delete User Role', 'delete_user_role', 'delete-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3629647d-79a1-4912-a7e7-dc9c4425', 'Delete Branch Permissions', 'delete_branch_permissions', 'delete-branch-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:47:01'),
('38d0e48e-138e-4728-bd62-1cd0f8ec', 'Add Branch Permission', 'add_branch_permissions_save', 'add-branch-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:46:32'),
('3a1e1b3b-f293-454d-98c1-9009b47c', 'Edit Branch', 'edit_branch_save', 'edit-branch', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3a4e3d88-909d-4cfa-a176-4a78e650', 'Add User', 'add_user_save', 'add-user', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('4029234b-6002-40f3-bd39-57ac68e9', 'Admin', 'admin', 'admin', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:38:16'),
('4db2482d-c853-430b-9319-16a71957', 'Delete User Permissions', 'delete_user_permission', 'delete-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('59b12ba0-3a1d-438d-a42c-bfa7d532', 'Delete Cashback', 'delete_cashback', 'delete-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 20:38:08'),
('5ff39bbd-cf0e-48c3-ab63-f7a587aa', 'Edit Customer', 'edit_customer_save', 'edit-customer', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:20:19'),
('639fe752-b383-484b-a1e2-bd4245ae', 'Delete Country', 'delete_country', 'delete-country', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('66bb8afd-7975-4b1a-8db7-1087643d', 'Account', 'account', 'account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('6d48d405-5dcf-49ba-a2a4-79dc3046', 'Edit Vendor', 'edit_vendor_save', 'edit-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:28:48'),
('728843ac-fa8c-4a69-8056-d818344f', 'Edit User Role', 'edit_user_role_save', 'edit-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('7806afdb-d68b-45ee-8a71-f5a933d3', 'Vendors Account', 'vendor_account', 'vendor-account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 01:41:38'),
('78c3c0ab-4e1d-4c85-9b14-9bf05621', 'Get Country\'s States', 'get_country_states', 'get-states-by-country', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('7c23d2a8-da65-47d8-9c1f-171aff8f', 'Excel Export', 'excelexport', 'excelexport', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 08:05:38'),
('8205e1f6-e5f6-4f65-aa01-74ec204e', 'Add Sale Save', 'add_sale_save', 'add-sale', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:33:38'),
('84c9ed15-a3a2-4f5d-a96b-f465e8bf', 'Users List', 'users_list', 'users', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('8544e6e3-49a0-495e-ae70-0749dbde', 'User Roles Listing', 'all_user_roles', 'user-roles', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('85aad9ed-e45e-4901-9c1d-61e482c2', 'Add Vendor', 'add_vendor_save', 'add-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('8c506dd1-403f-4254-a653-b51e0b2d', 'Customers Account', 'customer_account', 'customer-account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-29 06:26:22'),
('a19e7798-20cb-41f6-9f1e-b0b94fc0', 'Branch Permission List', 'branch_permissions_list', 'branch-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:45:51'),
('a5df97ba-2009-4b33-ba1f-81e8e13d', 'Add Branch', 'add_branch_save', 'add-branch', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('a8924ac7-1c96-4ec7-b773-71afb691', 'Sales List', 'sales_list', 'sales', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:32:41'),
('a9497ec3-27cf-4606-b8d5-26a770e5', 'Vendors List', 'vendors_list', 'vendors', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('a99900d9-1045-4b27-99ae-a198f4d1', 'Add cashback Save', 'add_cashback_save', 'add-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:35:13'),
('aa07661f-527b-40a1-aa1a-cd4de92a', 'Add cashback Page', 'add_cashback', 'add-cashback', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:34:42'),
('ab389ff5-71da-4be1-811b-d80330c4', 'Edit Purchase', 'edit_purchase_save', 'edit-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:10:49'),
('b8021ec2-a7c8-4289-af72-91aac0a6', 'Claim Types', 'claim_types', 'claim-types', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:21:00'),
('b828137c-df3a-4fa2-a1a1-08c6b2ba', 'Add Product', 'add_product_save', 'add-product', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('b82b107d-94af-4eab-9d41-207b4ede', 'Edit Claim', 'edit_claim_save', 'edit-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 12:44:51'),
('bfd82c8f-316a-4df4-a487-e8859eb6', 'Purchase List', 'purchases_list', 'purchases', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:09:49'),
('c0070e4f-437a-4a1b-b38b-6a26e90a', 'Edit Account', 'account_save', 'account', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('c0177c68-3fd2-4047-bed3-9fdd6b58', 'Add Claim', 'add_claim', 'add-claim', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:16:58'),
('c1841748-79b2-40e2-86d0-b020f4d9', 'Assign User Role\'s Permissions', 'add_user_roles_permissions_save', 'add-user-roles-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('cc4703b2-9c05-4cb0-9e89-9a168383', 'Products List', 'products_list', 'products', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('ce93d50b-f33f-4465-86a5-eb3bb097', 'Stock Detail', 'stock_detail', 'stock-detail', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-04-21 15:45:27'),
('dcb94f81-61aa-4832-83ba-ca91412d', 'Add Claim', 'add_claim_save', 'add-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:17:30'),
('dd62429d-9d4e-4f5f-b3d7-ae8f65a7', 'Claim List', 'claims_list', 'claims', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:16:11'),
('e30a1e09-1a03-41ca-94d6-1874ece3', 'Add Claim Type', 'add_claim_type_save', 'add-claim-type', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:34:12'),
('e6ad0152-6247-4b52-bed8-c57705ef', 'Add Cusotmers', 'add_customer_save', 'add-customer', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:19:45'),
('e798d66c-6094-44bd-b8a4-f8559d44', 'Delete City', 'delete_city', 'delete-city', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('e832655c-38aa-4a57-9324-45dc9744', 'DB Backup', 'db_backup', 'db-backup', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 23:10:31'),
('eed5906d-e999-4ac7-9c68-9e950ada', 'Delete Vendor', 'delete_vendor', 'delete-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:33:11'),
('f00f362b-e9e5-4729-8a06-7030cf73', 'Generate Excel', 'generatexls', 'generatexls', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 08:06:00'),
('f5205e46-8042-4609-8078-df6b1327', 'Add Sale Page', 'add_sale', 'add-sale', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 23:30:09'),
('f7cd753c-345f-4de9-a46c-f2c3636b', 'Delete purchase', 'delete_purchase', 'delete-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 14:11:22'),
('f81dceee-e9f9-4ea5-8918-189657bf', 'Edit User Permissions', 'edit_user_permission_save', 'edit-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` varchar(32) NOT NULL,
  `user_role_name` varchar(255) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_role_name`, `created_by`, `created_at`) VALUES
('21d38141-b56c-42c0-ab0e-d528d33a', 'Admin', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3045dc95-5161-4c3e-9381-ab0b053f', 'Moderator', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 05:54:27'),
('83dbdd12-fb78-4433-832a-da8f8516', 'Super Admin', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_permissions`
--

CREATE TABLE `user_roles_permissions` (
  `user_roles_permissions_id` varchar(32) NOT NULL,
  `user_role_id` varchar(32) NOT NULL,
  `user_permission_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles_permissions`
--

INSERT INTO `user_roles_permissions` (`user_roles_permissions_id`, `user_role_id`, `user_permission_id`) VALUES
('03b481b8-5bbc-4196-aa5f-e4993009', '83dbdd12-fb78-4433-832a-da8f8516', 'b82b107d-94af-4eab-9d41-207b4ede'),
('07c04689-e140-41bd-8b77-7152a62d', '21d38141-b56c-42c0-ab0e-d528d33a', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('0990cfbb-428d-49de-96dc-8db400b4', '21d38141-b56c-42c0-ab0e-d528d33a', '8544e6e3-49a0-495e-ae70-0749dbde'),
('0aac571f-334e-49a3-b209-192d9d4d', '83dbdd12-fb78-4433-832a-da8f8516', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('0cc6719b-4883-4617-9a29-57ad864c', '83dbdd12-fb78-4433-832a-da8f8516', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('0d538769-3d73-4b45-8eb9-b62d9581', '3045dc95-5161-4c3e-9381-ab0b053f', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('0ea025c6-5622-4b3c-8e3f-03fe22ed', '21d38141-b56c-42c0-ab0e-d528d33a', 'e6ad0152-6247-4b52-bed8-c57705ef'),
('1155db99-b313-4844-ac68-888d4b2b', '3045dc95-5161-4c3e-9381-ab0b053f', 'b82b107d-94af-4eab-9d41-207b4ede'),
('1363f8b5-e3c7-4130-a6fa-8421201f', '83dbdd12-fb78-4433-832a-da8f8516', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('13d373e6-bdad-4bf8-a911-22938996', '3045dc95-5161-4c3e-9381-ab0b053f', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('1a90258a-5a28-4df4-99a0-eb3efd69', '83dbdd12-fb78-4433-832a-da8f8516', 'b8021ec2-a7c8-4289-af72-91aac0a6'),
('1afa729e-f55c-4884-9156-70fffcab', '21d38141-b56c-42c0-ab0e-d528d33a', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('1c98a8bc-e975-4db3-ba54-08552507', '83dbdd12-fb78-4433-832a-da8f8516', '1622aecc-2c93-4c20-a3e8-909633c0'),
('1d9a9745-7e62-4d61-8ee0-674594fe', '83dbdd12-fb78-4433-832a-da8f8516', 'f81dceee-e9f9-4ea5-8918-189657bf'),
('1ddc9917-756e-4a13-b6b4-659901dd', '83dbdd12-fb78-4433-832a-da8f8516', '639fe752-b383-484b-a1e2-bd4245ae'),
('1fc34690-bdae-4172-a031-0c20bea1', '83dbdd12-fb78-4433-832a-da8f8516', '8544e6e3-49a0-495e-ae70-0749dbde'),
('21c896d1-9715-4b61-85d7-725c85c5', '83dbdd12-fb78-4433-832a-da8f8516', 'c0070e4f-437a-4a1b-b38b-6a26e90a'),
('22514e67-81a2-4421-87e0-ddceac08', '83dbdd12-fb78-4433-832a-da8f8516', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('244537ee-142c-4c72-b0b8-85306fdc', '3045dc95-5161-4c3e-9381-ab0b053f', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('24fb6a57-6003-4da5-83db-8a6b0c36', '21d38141-b56c-42c0-ab0e-d528d33a', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('27204566-4603-48c3-8b66-ea68e106', '83dbdd12-fb78-4433-832a-da8f8516', '59b12ba0-3a1d-438d-a42c-bfa7d532'),
('27e59c66-4949-47eb-b426-2a2375d5', '83dbdd12-fb78-4433-832a-da8f8516', '66bb8afd-7975-4b1a-8db7-1087643d'),
('2800a837-5a46-4adf-a819-d94f2d1c', '3045dc95-5161-4c3e-9381-ab0b053f', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('2959a877-c260-44bd-91e4-a61829da', '83dbdd12-fb78-4433-832a-da8f8516', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('2abe0db7-4353-4c1e-8379-65a85b67', '21d38141-b56c-42c0-ab0e-d528d33a', '3571ceea-0081-4cbe-82eb-572f2af5'),
('2bfc5fa6-2b62-44a3-b718-29702867', '83dbdd12-fb78-4433-832a-da8f8516', '4db2482d-c853-430b-9319-16a71957'),
('2d9413dd-e743-4e2b-a543-10abb11b', '83dbdd12-fb78-4433-832a-da8f8516', '02cc6753-664a-4810-8571-e3d13671'),
('2e54bf41-32d4-414d-b1af-26f6c8d2', '3045dc95-5161-4c3e-9381-ab0b053f', '4029234b-6002-40f3-bd39-57ac68e9'),
('2f391a98-3b48-488c-a7cd-4c43eb26', '83dbdd12-fb78-4433-832a-da8f8516', '3629647d-79a1-4912-a7e7-dc9c4425'),
('30d046bc-4286-4a12-bd87-d86a662f', '83dbdd12-fb78-4433-832a-da8f8516', 'e798d66c-6094-44bd-b8a4-f8559d44'),
('32a9b50b-8d44-4cc6-9d42-d230297c', '83dbdd12-fb78-4433-832a-da8f8516', 'ab389ff5-71da-4be1-811b-d80330c4'),
('33caea92-f9ca-43a0-8e6f-97c464fc', '21d38141-b56c-42c0-ab0e-d528d33a', '66bb8afd-7975-4b1a-8db7-1087643d'),
('35517250-a75e-49fe-b1b1-6f1f1bdd', '21d38141-b56c-42c0-ab0e-d528d33a', '3a1e1b3b-f293-454d-98c1-9009b47c'),
('387025a1-029d-444c-a4fd-c1487e1d', '83dbdd12-fb78-4433-832a-da8f8516', '1f46d670-184d-44e8-8e52-4dcecac0'),
('3d49be05-3120-475d-ba50-a98bff25', '83dbdd12-fb78-4433-832a-da8f8516', '349cd837-7ffc-4ed8-9005-4476cbef'),
('3d511d2e-cd1c-44ab-98b5-a8c8b992', '21d38141-b56c-42c0-ab0e-d528d33a', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('3fb1af8d-d381-4826-8242-2453e5f1', '3045dc95-5161-4c3e-9381-ab0b053f', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('40a01585-e141-4e97-85dd-c6825bbe', '83dbdd12-fb78-4433-832a-da8f8516', '356b64aa-25eb-4d7d-b302-b28a8197'),
('435b1743-37bc-4c07-9dea-472bac1d', '3045dc95-5161-4c3e-9381-ab0b053f', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('47a92d9d-68fd-4dbc-9d2d-3afb8e01', '3045dc95-5161-4c3e-9381-ab0b053f', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('4a5c58d3-e974-4d3f-a2e7-9e4559f2', '83dbdd12-fb78-4433-832a-da8f8516', 'a5df97ba-2009-4b33-ba1f-81e8e13d'),
('4a7ce3cf-a663-486f-aad0-1a714e32', '21d38141-b56c-42c0-ab0e-d528d33a', '3442fbd1-b08f-491d-ac31-b1394099'),
('4db5cdfa-bbf0-4401-af01-5856c3f4', '21d38141-b56c-42c0-ab0e-d528d33a', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('4fc15254-6819-4f51-9919-a1f07709', '83dbdd12-fb78-4433-832a-da8f8516', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('53a02c90-fa2a-4cdd-a898-a7a44123', '21d38141-b56c-42c0-ab0e-d528d33a', '85aad9ed-e45e-4901-9c1d-61e482c2'),
('5b4a5fcf-eb23-4db7-b874-b497415c', '83dbdd12-fb78-4433-832a-da8f8516', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('5c3bfdf7-e9b1-433b-8bf8-37e4a26b', '83dbdd12-fb78-4433-832a-da8f8516', '35a38441-f205-405a-9612-c31a6258'),
('5d5a397f-8b6c-49a0-b177-70d74299', '21d38141-b56c-42c0-ab0e-d528d33a', 'b82b107d-94af-4eab-9d41-207b4ede'),
('5f03c94a-2e01-453d-8434-ab1dae73', '83dbdd12-fb78-4433-832a-da8f8516', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('607a8b40-9694-4562-90bb-3e44b6cf', '83dbdd12-fb78-4433-832a-da8f8516', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('60bc4933-1bbd-43a8-bba9-43580558', '83dbdd12-fb78-4433-832a-da8f8516', '6d48d405-5dcf-49ba-a2a4-79dc3046'),
('641c021d-dee7-430b-b421-234198d3', '83dbdd12-fb78-4433-832a-da8f8516', '4029234b-6002-40f3-bd39-57ac68e9'),
('65071411-6f55-4966-91b0-8a132c96', '21d38141-b56c-42c0-ab0e-d528d33a', 'c0070e4f-437a-4a1b-b38b-6a26e90a'),
('66e85942-a82c-472a-8206-4274fa1b', '83dbdd12-fb78-4433-832a-da8f8516', 'eed5906d-e999-4ac7-9c68-9e950ada'),
('67924741-66e1-4034-bef0-9abc643b', '21d38141-b56c-42c0-ab0e-d528d33a', 'cc4703b2-9c05-4cb0-9e89-9a168383'),
('6952b13b-77d4-4487-a340-b152b3e5', '3045dc95-5161-4c3e-9381-ab0b053f', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('6c4faadf-930f-4ac0-a227-248b7eae', '21d38141-b56c-42c0-ab0e-d528d33a', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('6d7a80bc-17c0-41bf-9846-0e958366', '21d38141-b56c-42c0-ab0e-d528d33a', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('6dbdecb2-96b8-4255-8f4b-c360452c', '3045dc95-5161-4c3e-9381-ab0b053f', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('71dab15c-7912-4121-b048-2e536ff6', '21d38141-b56c-42c0-ab0e-d528d33a', '7c23d2a8-da65-47d8-9c1f-171aff8f'),
('7310bea9-1798-4426-90ed-e512c3d9', '83dbdd12-fb78-4433-832a-da8f8516', 'f5205e46-8042-4609-8078-df6b1327'),
('739dabd6-8697-4143-8c6a-7a2cceb5', '83dbdd12-fb78-4433-832a-da8f8516', '329e1729-dbf2-434b-8601-cb360d7d'),
('767ad27c-5cde-468a-aebe-9fd86721', '3045dc95-5161-4c3e-9381-ab0b053f', '3442fbd1-b08f-491d-ac31-b1394099'),
('793b74ff-d681-4559-8611-1e273fb7', '21d38141-b56c-42c0-ab0e-d528d33a', '728843ac-fa8c-4a69-8056-d818344f'),
('7a3c87a6-4bbd-40cd-9e06-3bc0a72b', '3045dc95-5161-4c3e-9381-ab0b053f', '02cc6753-664a-4810-8571-e3d13671'),
('7a421dc1-d3b4-4770-85ea-d5c9267b', '83dbdd12-fb78-4433-832a-da8f8516', '7c23d2a8-da65-47d8-9c1f-171aff8f'),
('7a627ae6-0b11-4a51-b324-b3022701', '83dbdd12-fb78-4433-832a-da8f8516', '2cea0e62-e3d8-4de4-9877-aaaaa326'),
('7f167c73-e06f-41a6-88ad-aeb0bdd8', '83dbdd12-fb78-4433-832a-da8f8516', '78c3c0ab-4e1d-4c85-9b14-9bf05621'),
('7fff3f8a-51de-4c80-836f-01367d06', '21d38141-b56c-42c0-ab0e-d528d33a', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('805ea79e-e263-4ffe-a331-9c8fb9ef', '21d38141-b56c-42c0-ab0e-d528d33a', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('8227114f-798c-43ea-a1a9-0f4a3966', '3045dc95-5161-4c3e-9381-ab0b053f', '3571ceea-0081-4cbe-82eb-572f2af5'),
('8c754895-d4a4-4ac3-9a51-6b1cb5f5', '21d38141-b56c-42c0-ab0e-d528d33a', '02cc6753-664a-4810-8571-e3d13671'),
('8e0c3a7a-c536-4f84-b793-2a17b93e', '3045dc95-5161-4c3e-9381-ab0b053f', 'ab389ff5-71da-4be1-811b-d80330c4'),
('8e176e2b-7305-4d96-9703-41a56467', '21d38141-b56c-42c0-ab0e-d528d33a', '6d48d405-5dcf-49ba-a2a4-79dc3046'),
('90d03327-ed3e-4592-9245-1860006f', '21d38141-b56c-42c0-ab0e-d528d33a', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('942140cc-b302-4336-84f8-e22443ab', '21d38141-b56c-42c0-ab0e-d528d33a', '93f6aeb5-856b-4003-b0bd-ba5ef130'),
('98acdea9-14dc-40d1-9aef-fb6eee7a', '83dbdd12-fb78-4433-832a-da8f8516', 'a9497ec3-27cf-4606-b8d5-26a770e5'),
('994e178d-efa0-4122-be02-ef67c8bc', '21d38141-b56c-42c0-ab0e-d528d33a', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('99eff6e4-cc76-4687-976b-a42fd0f2', '83dbdd12-fb78-4433-832a-da8f8516', '3571ceea-0081-4cbe-82eb-572f2af5'),
('9cff7d40-87b7-42d3-bba2-20113851', '83dbdd12-fb78-4433-832a-da8f8516', 'e6ad0152-6247-4b52-bed8-c57705ef'),
('9fcce56d-8434-4851-923b-964764d7', '83dbdd12-fb78-4433-832a-da8f8516', '5ff39bbd-cf0e-48c3-ab63-f7a587aa'),
('a056c632-57c6-466b-80dc-07258abe', '21d38141-b56c-42c0-ab0e-d528d33a', '248ea111-b461-4f15-bce5-23c69e56'),
('a0e06215-6d78-4bf3-9dca-773e3f36', '21d38141-b56c-42c0-ab0e-d528d33a', 'ab389ff5-71da-4be1-811b-d80330c4'),
('a2dc4df1-e092-4ebd-b18d-6b9d3e1a', '21d38141-b56c-42c0-ab0e-d528d33a', 'b8021ec2-a7c8-4289-af72-91aac0a6'),
('a44e3c4e-e773-4aa0-bbba-42a7dfee', '83dbdd12-fb78-4433-832a-da8f8516', 'b828137c-df3a-4fa2-a1a1-08c6b2ba'),
('a467da12-773f-4924-a668-b420b2ef', '83dbdd12-fb78-4433-832a-da8f8516', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('a4c13a48-4ff0-4a9b-870a-31ff0220', '21d38141-b56c-42c0-ab0e-d528d33a', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('a7329ac5-61b6-49d0-b239-2b0a7a0c', '83dbdd12-fb78-4433-832a-da8f8516', '3442fbd1-b08f-491d-ac31-b1394099'),
('aa67261c-fc82-439a-94bb-a2266c25', '83dbdd12-fb78-4433-832a-da8f8516', 'a19e7798-20cb-41f6-9f1e-b0b94fc0'),
('aab1026e-e37c-4912-8da0-71572cf9', '83dbdd12-fb78-4433-832a-da8f8516', '0f28157b-ba89-447b-afa2-796ddf6f'),
('abcec9fe-958a-4edd-a77d-a9ce89fc', '3045dc95-5161-4c3e-9381-ab0b053f', '8c506dd1-403f-4254-a653-b51e0b2d'),
('ac9b52e2-0f60-4682-baf0-55d0c7e5', '21d38141-b56c-42c0-ab0e-d528d33a', '34c8da79-d170-4a7f-8bdb-bbb18910'),
('accc6dd7-a797-4b03-bddf-ee32b382', '21d38141-b56c-42c0-ab0e-d528d33a', '349cd837-7ffc-4ed8-9005-4476cbef'),
('ad61317a-e0c7-4095-8fe3-c90bd73c', '83dbdd12-fb78-4433-832a-da8f8516', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('aef9d202-e608-4c5c-8532-890814c5', '21d38141-b56c-42c0-ab0e-d528d33a', '3a4e3d88-909d-4cfa-a176-4a78e650'),
('b0347813-3ef3-4d63-8116-1eaa9ba1', '83dbdd12-fb78-4433-832a-da8f8516', '728843ac-fa8c-4a69-8056-d818344f'),
('b1345790-0075-41d8-b21c-2a4c18d6', '83dbdd12-fb78-4433-832a-da8f8516', '85aad9ed-e45e-4901-9c1d-61e482c2'),
('b3f3d1d3-c717-4c1d-9a7a-e66fa73f', '83dbdd12-fb78-4433-832a-da8f8516', '248ea111-b461-4f15-bce5-23c69e56'),
('b88bd1b6-c7f5-4ed0-8c9a-6bbd5130', '21d38141-b56c-42c0-ab0e-d528d33a', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('be71400a-6f94-466a-8da1-a75f0d0a', '83dbdd12-fb78-4433-832a-da8f8516', 'e832655c-38aa-4a57-9324-45dc9744'),
('c1234d5e-a759-4c92-b499-7d75a196', '21d38141-b56c-42c0-ab0e-d528d33a', '84c9ed15-a3a2-4f5d-a96b-f465e8bf'),
('c20c843b-c077-4b97-8940-d0bffd8f', '21d38141-b56c-42c0-ab0e-d528d33a', 'ce93d50b-f33f-4465-86a5-eb3bb097'),
('c22b3d50-a02a-40d0-878e-d9cf6b3e', '21d38141-b56c-42c0-ab0e-d528d33a', '5ff39bbd-cf0e-48c3-ab63-f7a587aa'),
('c8c0005d-f825-4245-8d70-2ac52726', '83dbdd12-fb78-4433-832a-da8f8516', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('c9338389-3e30-437a-9634-8e48d9dd', '21d38141-b56c-42c0-ab0e-d528d33a', '8c506dd1-403f-4254-a653-b51e0b2d'),
('cb4761e7-58e1-4e56-8673-314789cf', '21d38141-b56c-42c0-ab0e-d528d33a', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('d0837853-ab34-4b87-b84f-e375828d', '83dbdd12-fb78-4433-832a-da8f8516', 'cc4703b2-9c05-4cb0-9e89-9a168383'),
('d2bca222-fa2b-4a06-b7e2-20e909d1', '83dbdd12-fb78-4433-832a-da8f8516', 'c1841748-79b2-40e2-86d0-b020f4d9'),
('d2e9c024-9cab-415f-8cbb-a4d6b17a', '83dbdd12-fb78-4433-832a-da8f8516', '38d0e48e-138e-4728-bd62-1cd0f8ec'),
('d56725aa-0bdf-42de-95e8-fbc3ec48', '83dbdd12-fb78-4433-832a-da8f8516', '84c9ed15-a3a2-4f5d-a96b-f465e8bf'),
('d6d9b125-da58-4bb1-9811-3a5c1fe1', '83dbdd12-fb78-4433-832a-da8f8516', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('db106137-6d1a-4a49-be13-eb6c02df', '3045dc95-5161-4c3e-9381-ab0b053f', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('dba0d988-ba59-4ee0-8202-e7779329', '21d38141-b56c-42c0-ab0e-d528d33a', 'a9497ec3-27cf-4606-b8d5-26a770e5'),
('dd17d923-d540-48c4-a873-beffe66d', '83dbdd12-fb78-4433-832a-da8f8516', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('dfccf47f-6444-4d93-8540-60075234', '3045dc95-5161-4c3e-9381-ab0b053f', 'f5205e46-8042-4609-8078-df6b1327'),
('dfe1e5aa-5399-41ca-ba66-805bf662', '3045dc95-5161-4c3e-9381-ab0b053f', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('e1991e36-ff56-453c-801a-22909a19', '83dbdd12-fb78-4433-832a-da8f8516', '34c8da79-d170-4a7f-8bdb-bbb18910'),
('e19a57f3-7c16-46f3-a737-6307bb3b', '3045dc95-5161-4c3e-9381-ab0b053f', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('e24b283c-e28e-4c58-8708-c2ce8cc4', '21d38141-b56c-42c0-ab0e-d528d33a', '356b64aa-25eb-4d7d-b302-b28a8197'),
('e4246941-c683-4395-b178-7411d75b', '3045dc95-5161-4c3e-9381-ab0b053f', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('e5f1a479-acff-4a2f-b4f9-ae8e2524', '83dbdd12-fb78-4433-832a-da8f8516', '0b9f50f8-5a2b-487a-99c9-c3a9713e'),
('e8fbaf23-e41b-49d8-af25-352b4fc9', '83dbdd12-fb78-4433-832a-da8f8516', 'f7cd753c-345f-4de9-a46c-f2c3636b'),
('ec374c68-ebe7-426c-801e-b195c768', '21d38141-b56c-42c0-ab0e-d528d33a', 'b828137c-df3a-4fa2-a1a1-08c6b2ba'),
('f2040642-1893-466b-9c79-e2e41561', '83dbdd12-fb78-4433-832a-da8f8516', '3a4e3d88-909d-4cfa-a176-4a78e650'),
('f3683819-124b-4f43-9937-90acc075', '83dbdd12-fb78-4433-832a-da8f8516', '130d9f9b-696f-4932-b2fc-05e0476d'),
('f3a698f8-b829-4d0f-9ac1-93d7c47e', '83dbdd12-fb78-4433-832a-da8f8516', 'ce93d50b-f33f-4465-86a5-eb3bb097'),
('f584756a-ed32-4506-8449-1f47d13b', '21d38141-b56c-42c0-ab0e-d528d33a', '4029234b-6002-40f3-bd39-57ac68e9'),
('f858d5ad-7912-4425-adb1-b0880bdb', '83dbdd12-fb78-4433-832a-da8f8516', '8c506dd1-403f-4254-a653-b51e0b2d'),
('f893680e-04b4-44d1-bbfd-9005a616', '3045dc95-5161-4c3e-9381-ab0b053f', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('fd1fb5a8-98ed-4d55-9bfd-80855431', '83dbdd12-fb78-4433-832a-da8f8516', '3a1e1b3b-f293-454d-98c1-9009b47c'),
('ffe04732-8ae9-4d5b-9831-d1009c83', '21d38141-b56c-42c0-ab0e-d528d33a', 'f5205e46-8042-4609-8078-df6b1327');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`employment_id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_branches_permissions`
--
ALTER TABLE `user_branches_permissions`
  ADD PRIMARY KEY (`user_branches_permission_id`),
  ADD UNIQUE KEY `user_branches` (`user_id`,`branch_id`) USING BTREE;

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`user_permission_id`),
  ADD UNIQUE KEY `user_permission_route` (`user_permission_route`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `user_roles_permissions`
--
ALTER TABLE `user_roles_permissions`
  ADD PRIMARY KEY (`user_roles_permissions_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `employment_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `edu_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_branches_permissions`
--
ALTER TABLE `user_branches_permissions`
  MODIFY `user_branches_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
