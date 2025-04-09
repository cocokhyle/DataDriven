-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 03:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) NOT NULL,
  `description` varchar(64) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user`, `description`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2024-07-13 09:27:56', '2024-07-13 09:27:56'),
(2, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2024-07-15 08:24:16', '2024-07-15 08:24:16'),
(3, 'Jahn', 'Issue Brgy Business Clearance', 'Brgy Business', '2024-07-15 13:59:26', '2024-07-15 13:59:26'),
(4, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2024-07-15 14:18:08', '2024-07-15 14:18:08'),
(5, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2024-07-15 14:58:36', '2024-07-15 14:58:36'),
(6, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2024-07-16 03:51:33', '2024-07-16 03:51:33'),
(7, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2025-03-08 17:19:02', '2025-03-08 17:19:02'),
(8, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2025-03-08 18:10:22', '2025-03-08 18:10:22'),
(9, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2025-03-15 02:24:11', '2025-03-15 02:24:11'),
(10, 'Jahn', 'Issue Brgy Clearance Certificate', 'Brgy Clearance', '2025-03-15 02:24:53', '2025-03-15 02:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `blotters`
--

CREATE TABLE `blotters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_number` varchar(32) NOT NULL,
  `complainant_name` varchar(32) NOT NULL,
  `complained_resident` varchar(32) DEFAULT NULL,
  `Blotters_info` varchar(32) NOT NULL,
  `case_type` varchar(32) NOT NULL,
  `date_of_incident` date NOT NULL,
  `status` varchar(32) NOT NULL,
  `agreement` varchar(1500) DEFAULT NULL,
  `bcp1` varchar(32) DEFAULT NULL,
  `bcp1_note` varchar(32) DEFAULT NULL,
  `bcp1_date` datetime DEFAULT NULL,
  `bcp2` varchar(32) DEFAULT NULL,
  `bcp2_note` varchar(32) DEFAULT NULL,
  `bcp2_date` datetime DEFAULT NULL,
  `bcp3` varchar(32) DEFAULT NULL,
  `bcp3_note` varchar(32) DEFAULT NULL,
  `bcp3_date` datetime DEFAULT NULL,
  `lbp1` varchar(32) DEFAULT NULL,
  `lbp1_note` varchar(32) DEFAULT NULL,
  `lbp1_date` datetime DEFAULT NULL,
  `lbp2` varchar(32) DEFAULT NULL,
  `lbp2_note` varchar(32) DEFAULT NULL,
  `lbp2_date` datetime DEFAULT NULL,
  `lbp3` varchar(32) DEFAULT NULL,
  `lbp3_note` varchar(32) DEFAULT NULL,
  `lbp3_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blotters`
--

INSERT INTO `blotters` (`id`, `case_number`, `complainant_name`, `complained_resident`, `Blotters_info`, `case_type`, `date_of_incident`, `status`, `agreement`, `bcp1`, `bcp1_note`, `bcp1_date`, `bcp2`, `bcp2_note`, `bcp2_date`, `bcp3`, `bcp3_note`, `bcp3_date`, `lbp1`, `lbp1_note`, `lbp1_date`, `lbp2`, `lbp2_note`, `lbp2_date`, `lbp3`, `lbp3_note`, `lbp3_date`, `created_at`, `updated_at`) VALUES
(1, '2024-1', 'Angelica Barcena', 'Joshua Santos', 'Defamation', 'Civil', '2024-07-31', 'Settled', 'Paid damage', 'bcp1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-15 14:15:37', '2024-07-28 14:04:51'),
(2, '2025-2', 'Joshua Santos', NULL, 'The person scammed me.', 'Civil', '2025-03-14', 'Cancelled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-08 16:53:05', '2025-03-08 16:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `blotter_resident`
--

CREATE TABLE `blotter_resident` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resident_id` bigint(20) UNSIGNED NOT NULL,
  `blotter_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building_number` varchar(32) NOT NULL,
  `building_owner` varchar(32) NOT NULL,
  `building_type` varchar(32) NOT NULL,
  `building_address` varchar(64) NOT NULL,
  `reg_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `business_owner_not_resident` varchar(255) DEFAULT NULL,
  `business_number` varchar(32) NOT NULL,
  `business_name` varchar(32) NOT NULL,
  `business_address` varchar(64) NOT NULL,
  `business_type` varchar(32) DEFAULT NULL,
  `regs_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clearances`
--

CREATE TABLE `clearances` (
  `id` int(11) NOT NULL,
  `programId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diggings`
--

CREATE TABLE `diggings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `digging_number` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL,
  `digging_location` varchar(64) NOT NULL,
  `purpose` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"uuid\":\"d41f595d-004a-4188-baf4-6eb390ef2052\",\"displayName\":\"App\\\\Jobs\\\\RunPythonScript\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\RunPythonScript\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\RunPythonScript\\\":8:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\RunPythonScript has been attempted too many times or run too long. The job may have previously timed out. in D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:648\nStack trace:\n#0 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(436): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(346): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#12 D:\\DataDriven\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 D:\\DataDriven\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 D:\\DataDriven\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 D:\\DataDriven\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 D:\\DataDriven\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 D:\\DataDriven\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2024-07-12 07:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `fencings`
--

CREATE TABLE `fencings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fencing_number` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL,
  `fencing_location` varchar(64) NOT NULL,
  `purpose` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchises`
--

CREATE TABLE `franchises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `franchisee_id` bigint(20) UNSIGNED NOT NULL,
  `franchise_number` varchar(32) NOT NULL,
  `motor_number` varchar(32) NOT NULL,
  `chasis_number` varchar(32) NOT NULL,
  `plate_number` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meralco_clearances`
--

CREATE TABLE `meralco_clearances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meralaco_clearance_number` varchar(32) NOT NULL,
  `meralaco_clearance_applicant` varchar(32) NOT NULL,
  `meralaco_clearance_building_type` varchar(32) NOT NULL,
  `meralaco_clearance_address` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_07_050440_create_residents_table', 1),
(5, '2021_08_22_113626_create_business_table', 1),
(6, '2021_08_27_124021_create_blotters_table', 1),
(7, '2021_09_02_043713_create_officials_table', 1),
(8, '2021_09_11_011700_create_building_table', 1),
(9, '2021_11_25_115751_create_blotter_resident_table', 1),
(10, '2021_12_16_234756_create_franchises_table', 1),
(11, '2021_12_17_022419_create_diggings_table', 1),
(12, '2021_12_17_201913_create_fencings_table', 1),
(13, '2022_01_05_014028_create_meralco_clearances_table', 1),
(14, '2022_01_16_160427_create_activity_logs_table', 1),
(15, '2024_07_02_133054_create_recommendations_table', 1),
(16, '2024_07_08_201352_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brgy_official_name` varchar(32) NOT NULL,
  `brgy_official_position` varchar(32) NOT NULL,
  `brgy_official_role` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `img` varchar(64) DEFAULT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `brgy_official_name`, `brgy_official_position`, `brgy_official_role`, `path`, `img`, `batch_id`, `created_at`, `updated_at`) VALUES
(1, 'Rommel H. Belano', 'Barangay Chairman', 'Barangay Chairman', '', '', 2023, NULL, NULL),
(2, 'Simoen Villegas', 'Barangay Councilor 1', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(3, 'Rosita Pineda', 'Barangay Councilor 2', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(4, 'Roy Marikit', 'Barangay Councilor 3', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(5, 'Pablo Marikit', 'Barangay Councilor 4', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(6, 'Maxima Catapang', 'Barangay Councilor 5', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(7, 'Daisy Halos', 'Barangay Councilor 6', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(8, 'Catapang Benido', 'Barangay Councilor 7', 'Sangguniang Barangay Member', '', '', 2023, NULL, NULL),
(9, 'Mark Miguel Masayuki Fukuda', 'Barangay SK Chairperson', 'SK Chairman', '', '', 2023, NULL, NULL),
(10, 'Cherry Villanueva', 'Barangay Secretary', 'Brgy Secretary', '', '', 2023, NULL, NULL),
(11, 'Jonathan Cortez', 'Barangay Treasurer', 'Brgy Treasurer', '', '', 2023, NULL, NULL),
(12, 'Roselyn Alad', 'Barangay Clerk', 'Brgy Clerk', '', '', 2023, NULL, NULL),
(13, 'Anthony Borlagtan', 'Barangay Clerk', 'Brgy Clerk', '', '', 2023, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `programId` int(11) NOT NULL,
  `programName` varchar(32) NOT NULL,
  `programDescription` varchar(255) NOT NULL,
  `priority` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`programId`, `programName`, `programDescription`, `priority`) VALUES
(1, 'Senior Citizen Programs', 'Programs designed to address the needs of senior citizens, including social activities, health care, and financial support.', 'Senior Citizens'),
(2, 'PWD Support Programs', 'Initiatives aimed at providing support to persons with disabilities (PWDs) to enhance their quality of life through accessibility, employment, and social inclusion.', 'PWD'),
(3, 'Student Support Programs', 'Programs that offer academic support, mentoring, and resources to help students succeed in their educational pursuits.', 'Students'),
(4, 'Women Empowerment Programs', 'Initiatives focused on empowering women by providing education, training, and support to enhance their personal and professional development.', 'Women'),
(5, 'Health and Wellness Programs', 'Programs promoting physical and mental health, including fitness activities, wellness workshops, and preventive health measures.', 'General Residents Especially Senior Citizens'),
(6, 'Youth Development Programs', 'Programs aimed at fostering the personal, social, and academic growth of young people through various activities and mentorship.', 'Youth'),
(7, 'Job Assistance Programs', 'Services providing guidance, training, and resources to job seekers to help them secure employment.', 'Unemployed Residents'),
(8, 'Housing Assistance Programs', 'Programs offering support and resources for individuals and families in need of housing assistance, including finding affordable housing and avoiding homelessness.', 'Renting House'),
(9, 'Family Support Programs', 'Initiatives designed to support families through counseling, financial aid, and social services to enhance family stability and well-being.', 'Low-income Families'),
(10, 'Unemployed Support Programs', 'Programs offering assistance to unemployed individuals through job training, financial aid, and employment services.', 'Unemployed Residents'),
(11, 'General Assistance Programs', 'Broad-ranging assistance programs available to all residents, addressing various needs such as food, shelter, and basic necessities.', 'General Residents'),
(12, 'Health Screenings', 'Regular health check-ups and screenings provided to residents to detect and prevent potential health issues.', 'General Residents Especially Senior Citizens'),
(13, 'Medication Assistance Programs', 'Programs providing financial assistance or access to medications for individuals who cannot afford their prescriptions.', 'General Residents Especially Senior Citizens'),
(14, 'Senior Citizen Activities', 'Organized activities and events tailored for senior citizens to promote social interaction, physical activity, and mental engagement.', 'Senior Citizens'),
(15, 'Scholarship Programs', 'Financial aid opportunities for students to support their education through scholarships based on merit or need.', 'Students'),
(16, 'After-school Tutoring', 'Tutoring services available to students after school hours to help with homework, test preparation, and academic improvement.', 'Students'),
(17, 'College/Technical School Applica', 'Support for students in navigating the college or technical school application process, including filling out applications, writing essays, and finding scholarships.', 'Students'),
(18, 'Skills Training Programs', 'Training programs focused on developing specific skills needed for various careers or personal development.', 'General Residents'),
(19, 'Job Placement Assistance', 'Services aimed at helping job seekers find employment through job matching, resume building, and interview preparation.', 'Unemployed Residents'),
(20, 'Livelihood Development Initiativ', 'Programs designed to create and enhance livelihood opportunities for individuals and communities, promoting economic stability.', 'General Residents'),
(21, 'Skills Training for PWD', 'Specialized training programs tailored to the needs of persons with disabilities to enhance their skills and employability.', 'PWD'),
(22, 'Accessible Employment Options', 'Information and resources on employment opportunities that are accessible to persons with disabilities.', 'PWD'),
(23, 'Financial Assistance Programs', 'Programs providing financial support to individuals and families in need to help cover essential expenses.', 'Low-income Families'),
(24, 'Food Security Initiatives', 'Programs aimed at ensuring that all residents have access to sufficient, safe, and nutritious food.', 'General Residents'),
(25, 'Legal Aid Services', 'Services providing legal assistance and representation to individuals who cannot afford legal counsel.', 'General Residents');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `res_num` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `suffix_name` varchar(32) DEFAULT NULL,
  `gender` varchar(32) NOT NULL,
  `birthday` date NOT NULL,
  `birthplace` varchar(32) DEFAULT NULL,
  `civil_status` varchar(32) NOT NULL,
  `isOccupation` varchar(32) NOT NULL,
  `isBeneficiaries` varchar(32) NOT NULL,
  `programId` varchar(32) DEFAULT NULL,
  `house_number` varchar(32) DEFAULT NULL,
  `purok` varchar(32) NOT NULL,
  `street` varchar(32) NOT NULL,
  `occupation` varchar(32) NOT NULL,
  `student` varchar(32) NOT NULL,
  `type_of_house` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `membership_prog` varchar(32) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `res_num`, `last_name`, `first_name`, `middle_name`, `suffix_name`, `gender`, `birthday`, `birthplace`, `civil_status`, `isOccupation`, `isBeneficiaries`, `programId`, `house_number`, `purok`, `street`, `occupation`, `student`, `type_of_house`, `pwd`, `membership_prog`, `image`, `created_at`, `updated_at`) VALUES
(42252, '1', 'Aquino', 'Carlos', 'Joaquin', 'N/A', 'Male', '2001-02-21', 'Calauan', 'Single', 'No', 'No', '17', '1', '1', '1', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42253, '2', 'Castillo', 'Gloria', 'Ana', 'N/A', 'Female', '2001-01-22', 'Calauan', 'Single', 'No', 'No', '15', '2', '2', '1', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42254, '3', 'Vargas', 'Luis', 'Andres', 'N/A', 'Male', '2000-12-12', 'Calauan', 'Single', 'No', 'No', '15', '3', '5', '1', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42255, '4', 'Delgado', 'Alicia', 'Sofia', 'N/A', 'Female', '2002-04-07', 'Calauan', 'Single', 'No', 'No', '17', '4', '1', '1', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42256, '5', 'Ortega', 'Isabel', 'Maria', 'N/A', 'Female', '2004-03-21', 'Calauan', 'Single', 'No', 'No', '17', '5', '5', '2', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42257, '6', 'Santiago', 'Vicente', 'Andres', 'N/A', 'Male', '2002-03-22', 'Calauan', 'Single', 'No', 'No', '15', '6', '5', '2', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42258, '7', 'Hernandez', 'Andres', 'Carlos', 'N/A', 'Male', '2000-07-24', 'Calauan', 'Single', 'No', 'No', '15', '7', '1', '2', 'None', 'College', 'Owned ', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42259, '8', 'Ramos', 'Felipe', 'Miguel', 'N/A', 'Male', '2000-12-16', 'Calauan', 'Single', 'No', 'No', '15', '8', '3', '2', 'None', 'College', 'Owned ', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42260, '9', 'Lopez', 'Perla', 'Sofia', 'N/A', 'Female', '2000-01-09', 'Calauan', 'Single', 'No', 'No', '15', '9', '1', '3', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42261, '10', 'Fernandez', 'Rosalinda', 'Maria', 'N/A', 'Female', '2002-05-31', 'Calauan', 'Single', 'No', 'No', '15', '10', '3', '3', 'None', 'College', 'Owned ', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42262, '11', 'Santiago', 'Mateo', 'Andres', 'N/A', 'Male', '2000-10-29', 'Calauan', 'Single', 'No', 'No', '17', '11', '1', '3', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42263, '12', 'Fernandez', 'Rosa', 'Maria', 'N/A', 'Female', '2001-08-28', 'Calauan', 'Single', 'No', 'No', '17', '12', '3', '3', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42264, '13', 'Santiago', 'Pedro', 'Luis', 'N/A', 'Female', '2000-02-06', 'Calauan', 'Single', 'No', 'No', '15', '13', '3', '4', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42265, '14', 'Gomez', 'Arturo', 'Carlos', 'N/A', 'Female', '2003-12-10', 'Calauan', 'Single', 'No', 'No', '15', '14', '3', '4', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42266, '15', 'Bautista', 'Allison', 'Marie', 'N/A', 'Male', '2001-08-22', 'Calauan', 'Single', 'No', 'No', '17', '15', '2', '4', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42267, '16', 'Castillo', 'Olivia', 'Jane', 'N/A', 'Female', '2005-09-04', 'Calauan', 'Single', 'No', 'No', '15', '16', '5', '4', 'None', 'College', 'Owned ', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42268, '17', 'Gomez', 'Emma', 'Rose', 'N/A', 'Female', '2005-11-06', 'Calauan', 'Single', 'No', 'No', '17', '17', '1', '5', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42269, '18', 'Santiago', 'Nathan', 'Michael', 'N/A', 'Male', '2000-10-29', 'Calauan', 'Single', 'No', 'No', '17', '18', '1', '5', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42270, '19', 'Ortiz', 'Brandon', 'Thomas', 'N/A', 'Male', '2005-04-21', 'Calauan', 'Single', 'No', 'No', '17', '19', '5', '5', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42271, '20', 'Chavez', 'Jason', 'Edward', 'N/A', 'Female', '2000-12-13', 'Calauan', 'Single', 'No', 'No', '15', '20', '1', '5', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42272, '21', 'Ruiz', 'Ethan', 'Michael', 'N/A', 'Female', '2003-08-15', 'Calauan', 'Single', 'No', 'No', '17', '21', '3', '6', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42273, '22', 'Ramos', 'Samuel', 'David', 'N/A', 'Female', '2005-11-27', 'Calauan', 'Single', 'No', 'No', '15', '22', '5', '6', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42274, '23', 'Mendoza', 'Lauren', 'Jane', 'N/A', 'Male', '2000-02-22', 'Calauan', 'Single', 'No', 'No', '17', '23', '5', '6', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42275, '24', 'Hernandez', 'Emily', 'Anne', 'N/A', 'Female', '2005-04-24', 'Calauan', 'Single', 'No', 'No', '17', '24', '3', '6', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42276, '25', 'Castillo', 'Catherine', 'Rose', 'N/A', 'Female', '2000-09-26', 'Calauan', 'Single', 'No', 'No', '15', '25', '1', '7', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42277, '26', 'Torres', 'Benjamin', 'Thomas', 'N/A', 'Male', '2003-05-10', 'Calauan', 'Single', 'No', 'No', '17', '26', '1', '7', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42278, '27', 'Flores', 'Alexander', 'Michael', 'N/A', 'Male', '2002-10-12', 'Calauan', 'Single', 'No', 'No', '15', '27', '3', '7', 'None', 'College', 'Rental', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42279, '28', 'Fernandez', 'Matthew', 'David', 'N/A', 'Female', '2004-06-14', 'Calauan', 'Single', 'No', 'No', '17', '28', '5', '7', 'None', 'College', 'Owned ', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42280, '29', 'Cruz', 'Hannah', 'Anne', 'N/A', 'Female', '2001-02-06', 'Calauan', 'Single', 'No', 'No', '15', '29', '5', '8', 'None', 'College', 'Owned ', 'No', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42281, '30', 'Torres', 'Maria', 'Rose', 'N/A', 'Female', '2003-10-08', 'Calauan', 'Single', 'No', 'No', '17', '30', '1', '8', 'None', 'College', 'Rental', 'Yes', 'None', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42282, '31', 'Ortiz', 'Emily', 'Jane', 'N/A', 'Female', '2004-12-10', 'Calauan', 'Single', 'No', 'Yes', '17', '31', '5', '8', 'None', 'College', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42283, '32', 'Jimenez', 'Nicole', 'Rose', 'N/A', 'Female', '2000-02-06', 'Calauan', 'Single', 'No', 'Yes', '17', '32', '1', '8', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42284, '33', 'Fernandez', 'Melissa', 'Jane', 'N/A', 'Female', '2001-03-09', 'Calauan', 'Single', 'No', 'Yes', '17', '33', '3', '8', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42285, '34', 'Padilla', 'Victoria', 'Anne', 'N/A', 'Female', '2004-02-12', 'Calauan', 'Single', 'No', 'Yes', '17', '34', '2', '9', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42286, '35', 'Santos', 'Maria', 'Rose', 'N/A', 'Female', '2004-04-03', 'Calauan', 'Single', 'No', 'Yes', '17', '35', '5', '9', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42287, '36', 'Mendoza', 'Lauren', 'Jane', 'N/A', 'Female', '2003-12-23', 'Calauan', 'Single', 'No', 'Yes', '17', '36', '1', '9', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42288, '37', 'Bautista', 'Joseph', 'Michael', 'N/A', 'Female', '2005-11-06', 'Calauan', 'Single', 'No', 'Yes', '17', '37', '1', '9', 'None', 'College', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:28', '2025-03-15 02:21:28'),
(42289, '38', 'Santiago', 'Kevin', 'David', 'N/A', 'Female', '2004-03-08', 'Calauan', 'Single', 'No', 'Yes', '17', '38', '5', '9', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42290, '39', 'Torres', 'Benjamin', 'Thomas', 'N/A', 'Female', '2003-01-20', 'Calauan', 'Single', 'No', 'Yes', '17', '39', '1', '1', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42291, '40', 'Vargas', 'Kimberly', 'Rose', 'N/A', 'Female', '2000-12-13', 'Calauan', 'Single', 'No', 'Yes', '17', '40', '1', '1', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42292, '41', 'Silva', 'Amanda', 'Anne', 'N/A', 'Female', '2003-08-15', 'Calauan', 'Single', 'No', 'Yes', '17', '41', '3', '1', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42293, '42', 'Delgado', 'Jennifer', 'Rose', 'N/A', 'Female', '2005-11-27', 'Calauan', 'Single', 'No', 'Yes', '17', '42', '5', '1', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42294, '43', 'Castillo', 'Robert', 'David', 'N/A', 'Female', '2005-07-11', 'Calauan', 'Single', 'No', 'Yes', '17', '43', '5', '2', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42295, '44', 'Lopez', 'Stephanie', 'Ann', 'N/A', 'Female', '2001-08-28', 'Calauan', 'Single', 'No', 'Yes', '17', '44', '1', '2', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42296, '45', 'Hernandez', 'Angela', 'Rose', 'N/A', 'Female', '2000-01-30', 'Calauan', 'Single', 'No', 'Yes', '17', '45', '3', '2', 'None', 'College', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42297, '46', 'Cruz', 'Patricia', 'Anne', 'N/A', 'Male', '2002-11-05', 'Calauan', 'Single', 'No', 'Yes', '17', '46', '1', '2', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42298, '47', 'Castillo', 'Jennifer', 'Rose', 'N/A', 'Male', '2005-07-07', 'Calauan', 'Single', 'No', 'Yes', '17', '47', '5', '3', 'None', 'College', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42299, '48', 'Gomez', 'Benjamin', 'David', 'N/A', 'Female', '2001-02-06', 'Calauan', 'Single', 'No', 'Yes', '17', '48', '1', '3', 'None', 'College', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42300, '49', 'Alvarez', 'Andrew', 'James', 'N/A', 'Male', '2002-01-30', 'Calauan', 'Single', 'No', 'Yes', '17', '49', '3', '3', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42301, '50', 'Santiago', 'Kimberly', 'Ann', 'N/A', 'Female', '2001-03-09', 'Calauan', 'Single', 'No', 'Yes', '17', '50', '3', '3', 'None', 'College', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42302, '51', 'Silva', 'Melissa', 'Jane', 'N/A', 'Female', '2004-02-12', 'Calauan', 'Single', 'No', 'Yes', '17', '51', '2', '4', 'None', 'College', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42303, '52', 'Hernandez', 'Carlos', 'Joaquin', 'N/A', 'Female', '2013-02-21', 'Calauan', 'Single', 'No', 'Yes', '16', '52', '2', '4', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42304, '53', 'Diaz', 'Patricia', 'Elena', 'N/A', 'Female', '2014-10-18', 'Calauan', 'Single', 'No', 'Yes', '16', '53', '5', '4', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42305, '54', 'Navarro', 'Gloria', 'Ana', 'N/A', 'Female', '2017-01-22', 'Calauan', 'Single', 'No', 'Yes', '16', '54', '1', '4', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42306, '55', 'Alvarez', 'Sonia', 'Teresa', 'N/A', 'Male', '2016-03-19', 'Calauan', 'Single', 'No', 'Yes', '16', '55', '3', '5', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42307, '56', 'Santiago', 'Luis', 'Andres', 'N/A', 'Female', '2017-12-12', 'Calauan', 'Single', 'No', 'Yes', '16', '56', '3', '5', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42308, '57', 'Delgado', 'Roberto', 'Miguel', 'N/A', 'Female', '2011-06-06', 'Calauan', 'Single', 'No', 'Yes', '16', '57', '3', '5', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42309, '58', 'Chavez', 'Margarita', 'Elena', 'N/A', 'Female', '2015-12-19', 'Calauan', 'Single', 'No', 'Yes', '16', '58', '5', '5', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42310, '59', 'Padilla', 'Victoria', 'Sofia', 'N/A', 'Female', '2014-02-13', 'Calauan', 'Single', 'No', 'Yes', '16', '59', '3', '6', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42311, '60', 'Mendoza', 'Salvador', 'Luis', 'N/A', 'Female', '2017-08-18', 'Calauan', 'Single', 'No', 'Yes', '16', '60', '1', '6', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42312, '61', 'Garcia', 'Diego', 'Jose', 'N/A', 'Male', '2014-10-10', 'Calauan', 'Single', 'No', 'Yes', '16', '61', '3', '6', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42313, '62', 'Vargas', 'Celestina', 'Ana', 'N/A', 'Female', '2012-07-12', 'Calauan', 'Single', 'No', 'Yes', '16', '62', '3', '6', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42314, '63', 'Bautista', 'Pilar', 'Maria', 'N/A', 'Female', '2015-08-22', 'Calauan', 'Single', 'No', 'Yes', '16', '63', '1', '7', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42315, '64', 'Castillo', 'Esmeralda', 'Sofia', 'N/A', 'Female', '2013-09-04', 'Calauan', 'Single', 'No', 'Yes', '16', '64', '3', '7', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42316, '65', 'Alvarez', 'Teresa', 'Maria', 'N/A', 'Male', '2015-03-08', 'Calauan', 'Single', 'No', 'Yes', '16', '65', '1', '7', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42317, '66', 'Chavez', 'Roberto', 'Luis', 'N/A', 'Female', '2012-12-13', 'Calauan', 'Single', 'No', 'Yes', '16', '66', '3', '7', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42318, '67', 'Ruiz', 'Luis', 'Jose', 'N/A', 'Male', '2013-08-15', 'Calauan', 'Single', 'No', 'Yes', '16', '67', '2', '8', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42319, '68', 'Santos', 'Esteban', 'Carlos', 'N/A', 'Female', '2013-06-18', 'Calauan', 'Single', 'No', 'Yes', '16', '68', '3', '8', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42320, '69', 'Mendoza', 'Eduardo', 'Luis', 'N/A', 'Female', '2016-02-22', 'Calauan', 'Single', 'No', 'Yes', '16', '69', '5', '8', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42321, '70', 'Hernandez', 'Carlos', 'Jose', 'N/A', 'Male', '2015-04-24', 'Calauan', 'Single', 'No', 'Yes', '16', '70', '1', '8', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42322, '71', 'Ramos', 'Felicia', 'Ana', 'N/A', 'Male', '2012-09-26', 'Calauan', 'Single', 'No', 'Yes', '16', '71', '1', '8', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42323, '72', 'Fernandez', 'Rosa', 'Maria', 'N/A', 'Male', '2014-08-28', 'Calauan', 'Single', 'No', 'Yes', '16', '72', '3', '9', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42324, '73', 'Castillo', 'Carmen', 'Ana', 'N/A', 'Male', '2016-01-30', 'Calauan', 'Single', 'No', 'Yes', '16', '73', '1', '9', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42325, '74', 'Ortiz', 'Rafael', 'Jose', 'N/A', 'Female', '2015-05-04', 'Calauan', 'Single', 'No', 'Yes', '16', '74', '1', '9', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42326, '75', 'Santiago', 'Pedro', 'Luis', 'N/A', 'Female', '2010-02-06', 'Calauan', 'Single', 'No', 'Yes', '16', '75', '3', '9', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42327, '76', 'Mendoza', 'Miguel', 'Andres', 'N/A', 'Male', '2016-10-08', 'Calauan', 'Single', 'No', 'Yes', '16', '76', '5', '9', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42328, '77', 'Gomez', 'Arturo', 'Carlos', 'N/A', 'Female', '2015-12-10', 'Calauan', 'Single', 'No', 'Yes', '16', '77', '1', '1', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42329, '78', 'Aquino', 'Christopher', 'John', 'N/A', 'Female', '2012-04-07', 'Calauan', 'Single', 'No', 'Yes', '16', '78', '3', '1', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42330, '79', 'Ramos', 'Matthew', 'Ryan', 'N/A', 'Female', '2015-12-19', 'Calauan', 'Single', 'No', 'Yes', '16', '79', '5', '1', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42331, '80', 'Villanueva', 'Robert', 'Joseph', 'N/A', 'Female', '2014-02-13', 'Calauan', 'Single', 'No', 'Yes', '16', '80', '3', '1', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42332, '81', 'Castillo', 'Jennifer', 'Rose', 'N/A', 'Female', '2012-04-07', 'Calauan', 'Single', 'No', 'Yes', '16', '81', '5', '2', 'None', 'Elementary', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42333, '82', 'Morales', 'Michelle', 'Ann', 'N/A', 'Female', '2017-11-20', 'Calauan', 'Single', 'No', 'Yes', '16', '82', '1', '2', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42334, '83', 'Ruiz', 'Emily', 'Rose', 'N/A', 'Female', '2013-09-05', 'Calauan', 'Single', 'No', 'Yes', '16', '83', '3', '2', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42335, '84', 'Alvarez', 'Andrew', 'James', 'N/A', 'Female', '2016-05-31', 'Calauan', 'Single', 'No', 'Yes', '16', '84', '3', '2', 'None', 'Elementary', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42336, '85', 'Vargas', 'Kevin', 'Michael', 'N/A', 'Female', '2017-04-03', 'Calauan', 'Single', 'No', 'Yes', '16', '85', '5', '3', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42337, '86', 'Fernandez', 'Alexander', 'David', 'N/A', 'Female', '2013-12-23', 'Calauan', 'Single', 'No', 'Yes', '16', '86', '1', '3', 'None', 'Elementary', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42338, '87', 'Jimenez', 'Samuel', 'Thomas', 'N/A', 'Female', '2012-12-13', 'Calauan', 'Single', 'No', 'Yes', '16', '87', '5', '3', 'None', 'Elementary', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42339, '88', 'Lopez', 'Pedro', 'Carlos', 'N/A', 'Male', '2010-05-29', 'Calauan', 'Single', 'No', 'Yes', '16', '88', '5', '3', 'None', 'High School', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42340, '89', 'Hernandez', 'Carlos', 'Andres', 'N/A', 'Female', '2013-02-21', 'Calauan', 'Single', 'No', 'Yes', '16', '89', '1', '4', 'None', 'High School', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42341, '90', 'Villanueva', 'Teresa', 'Sofia', 'N/A', 'Male', '2014-03-12', 'Calauan', 'Single', 'No', 'Yes', '16', '90', '3', '4', 'None', 'High School', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42342, '91', 'Diaz', 'Patricia', 'Maria', 'N/A', 'Male', '2014-10-18', 'Calauan', 'Single', 'No', 'Yes', '16', '91', '1', '4', 'None', 'High School', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42343, '92', 'Navarro', 'Gloria', 'Sofia', 'N/A', 'Male', '2017-01-22', 'Calauan', 'Single', 'No', 'Yes', '16', '92', '3', '4', 'None', 'High School', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42344, '93', 'Silva', 'Alejandro', 'Jose', 'N/A', 'Female', '2016-10-04', 'Calauan', 'Single', 'No', 'Yes', '16', '93', '2', '5', 'None', 'High School', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42345, '94', 'Delgado', 'Roberto', 'Luis', 'N/A', 'Female', '2011-06-06', 'Calauan', 'Single', 'No', 'Yes', '16', '94', '5', '5', 'None', 'High School', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42346, '95', 'Ramos', 'Eduardo', 'Andres', 'N/A', 'Female', '2017-11-28', 'Calauan', 'Single', 'No', 'Yes', '16', '95', '1', '5', 'None', 'High School', 'Rental', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42347, '96', 'Delgado', 'Isabel', 'Ana', 'N/A', 'Male', '2011-03-21', 'Calauan', 'Single', 'No', 'Yes', '16', '96', '1', '5', 'None', 'High School', 'Owned ', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42348, '97', 'Padilla', 'Victoria', 'Sofia', 'N/A', 'Male', '2014-02-13', 'Calauan', 'Single', 'No', 'Yes', '16', '97', '5', '6', 'None', 'High School', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42349, '98', 'Morales', 'Cristina', 'Maria', 'N/A', 'Female', '2015-12-05', 'Calauan', 'Single', 'No', 'Yes', '16', '98', '1', '6', 'None', 'High School', 'Rental', 'Yes', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42350, '99', 'Ruiz', 'Pilar', 'Ana', 'N/A', 'Female', '2012-04-07', 'Calauan', 'Single', 'No', 'Yes', '16', '99', '3', '6', 'None', 'High School', 'Owned ', 'No', '4Ps', NULL, '2025-03-15 02:21:29', '2025-03-15 02:21:29'),
(42351, '100', 'Reyes', 'Ricardo', 'Villanueva', 'II', 'Male', '1954-02-27', 'Manila', 'Married', 'Yes', 'Yes', '23', '100', '3', 'Street 18', 'Police', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42352, '101', 'Reyes', 'Gloria', 'Agustin', 'N/A', 'Female', '1958-03-02', 'Baguio', 'Married', 'Yes', 'Yes', '23', '100', '4', 'Street 20', 'Government Worker', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42353, '102', 'Castillo', 'Emilio', 'Toribio', 'III', 'Male', '1934-03-04', 'Quezon City', 'Married', 'No', 'Yes', '14', '101', '5', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42354, '103', 'Castillo', 'Miguel', 'Manalo', 'N/A', 'Female', '1934-03-07', 'Zamboanga', 'Married', 'No', 'Yes', '14', '101', '5', 'Street 11', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42355, '104', 'Mendoza', 'Fernando', 'Manalo', 'Jr.', 'Male', '1934-03-19', 'Batangas', 'Married', 'No', 'Yes', '14', '102', '1', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42356, '105', 'Mendoza', 'Antonina', 'Salvador', 'N/A', 'Male', '1934-03-22', 'Baguio', 'Married', 'No', 'Yes', '14', '102', '5', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42357, '106', 'Garcia', 'Ricardo', 'Villanueva', 'N/A', 'Male', '1934-03-31', 'Batangas', 'Widowed', 'No', 'Yes', '14', '100', '4', 'Street 4', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42358, '107', 'Bautista', 'Cristina', 'Ferrer', 'N/A', 'Female', '1960-04-01', 'Batangas', 'Single', 'No', 'Yes', '13', '103', '4', 'Street 4', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42359, '108', 'Reyes', 'Mario', 'Panganiban', 'N/A', 'Male', '1934-04-02', 'Zamboanga', 'Married', 'No', 'Yes', '14', '104', '1', 'Street 4', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42360, '109', 'Mendoza', 'Carlos', 'Salvador', 'N/A', 'Male', '1934-04-06', 'Davao', 'Widowed', 'No', 'Yes', '14', '105', '2', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42361, '110', 'Pascual', 'Isabel', 'Fernandez', 'N/A', 'Female', '1934-04-10', 'Batangas', 'Single', 'No', 'Yes', '14', '106', '2', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42362, '111', 'Pascual', 'Teresa', 'Panganiban', 'N/A', 'Female', '1934-04-11', 'Baguio', 'Widowed', 'No', 'Yes', '14', '107', '1', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42363, '112', 'Dela Cruz', 'Juan', 'Salvador', 'N/A', 'Male', '1934-04-20', 'Zamboanga', 'Married', 'No', 'Yes', '14', '108', '5', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42364, '113', 'Garcia', 'Maria', 'De Guzman', 'N/A', 'Female', '1934-04-22', 'Manila', 'Married', 'No', 'Yes', '14', '109', '2', 'Street 12', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42365, '114', 'Mendoza', 'Carmen', 'Toribio', 'IV', 'Female', '1934-04-24', 'Cavite', 'Married', 'No', 'Yes', '14', '110', '4', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42366, '115', 'Santos', 'Juan', 'Villanueva', 'N/A', 'Male', '1934-04-24', 'Cavite', 'Married', 'No', 'Yes', '14', '110', '5', 'Street 20', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42367, '116', 'Gonzales', 'Juan', 'Ferrer', 'N/A', 'Male', '1934-04-30', 'Quezon City', 'Single', 'No', 'Yes', '14', '111', '5', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42368, '117', 'Garcia', 'Carlos', 'Villanueva', 'N/A', 'Male', '1950-05-03', 'Valenzuela', 'Married', 'Yes', 'Yes', '23', '112', '3', 'Street 5', 'Teacher', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42369, '118', 'Garcia', 'Victoria', 'De Guzman', 'N/A', 'Female', '1953-05-04', 'Baguio', 'Married', 'Yes', 'Yes', '23', '112', '5', 'Street 1', 'Teacher', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42370, '119', 'Gonzales', 'Ferds', 'Ramos', 'N/A', 'Male', '1934-05-05', 'Laguna', 'Widowed', 'No', 'Yes', '14', '113', '3', 'Street 19', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42371, '120', 'Gonzales', 'Cristina', 'Ramos', 'N/A', 'Female', '1939-05-09', 'Laguna', 'Widowed', 'No', 'Yes', '14', '113', '1', 'Street 16', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42372, '121', 'Gonzales', 'Lourdes', 'Ramos', 'N/A', 'Female', '1942-05-12', 'Laguna', 'Widowed', 'No', 'Yes', '13', '113', '1', 'Street 3', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42373, '122', 'Gonzales', 'Fernando', 'Ramos', 'Jr.', 'Male', '1943-05-13', 'Laguna', 'Widowed', 'No', 'Yes', '13', '113', '1', 'Street 13', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42374, '123', 'Castillo', 'Marissa', 'Manalo', 'N/A', 'Female', '1948-05-14', 'Cebu', 'Married', 'No', 'Yes', '13', '114', '1', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42375, '124', 'Castillo', 'Fernando', 'Villanueva', 'N/A', 'Male', '1947-05-16', 'Baguio', 'Married', 'No', 'Yes', '13', '114', '2', 'Street 5', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42376, '125', 'Reyes', 'Lourde', 'Panganiban', 'N/A', 'Male', '1950-05-20', 'Laguna', 'Married', 'No', 'Yes', '13', '115', '1', 'Street 1', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42377, '126', 'Reyes', 'Teresa', 'Ramos', 'N/A', 'Female', '1951-05-24', 'Davao', 'Married', 'No', 'Yes', '13', '115', '4', 'Street 13', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42378, '127', 'Reyes', 'Victoria', 'Panganiban', 'N/A', 'Male', '1960-05-30', 'Laguna', 'Single', 'No', 'Yes', '13', '116', '5', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42379, '128', 'Reyes', 'Victorio', 'Panganiban', 'N/A', 'Male', '1960-06-09', 'Laguna', 'Single', 'No', 'Yes', '13', '117', '3', 'Street 6', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42380, '129', 'Pascual', 'Rafael', 'Salvador', 'Jr.', 'Male', '1934-06-17', 'Quezon City', 'Married', 'No', 'Yes', '14', '118', '5', 'Street 12', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42381, '130', 'Garcia', 'Antonio', 'Villanueva', 'N/A', 'Male', '1934-06-18', 'Davao', 'Single', 'No', 'Yes', '14', '119', '3', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42382, '131', 'Dela Cruz', 'Ricardo', 'Manalo', 'N/A', 'Male', '1934-06-19', 'Cebu', 'Widowed', 'No', 'Yes', '14', '120', '4', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42383, '132', 'Reyes', 'Miguel', 'Panganiban', 'N/A', 'Male', '1934-07-08', 'Quezon City', 'Single', 'No', 'Yes', '14', '121', '4', 'Street 8', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42384, '133', 'Bautista', 'Antonio', 'Ramos', 'N/A', 'Male', '1934-07-09', 'Davao', 'Widowed', 'No', 'Yes', '14', '122', '3', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42385, '134', 'Bautista', 'Carlos', 'Fernandez', 'N/A', 'Male', '1934-07-09', 'Manila', 'Married', 'No', 'Yes', '14', '123', '4', 'Street 14', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42386, '135', 'Mendoza', 'Miguel', 'Ferrer', 'V', 'Male', '1934-07-12', 'Baguio', 'Married', 'No', 'Yes', '14', '124', '1', 'Street 14', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42387, '136', 'Gonzales', 'Lourdes', 'Salvador', 'N/A', 'Female', '1934-07-15', 'Pampanga', 'Married', 'No', 'Yes', '14', '125', '5', 'Street 19', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42388, '137', 'Santos', 'Antonio', 'Fernandez', 'N/A', 'Male', '1934-08-07', 'Quezon City', 'Single', 'No', 'Yes', '14', '126', '5', 'Street 8', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42389, '138', 'Mendoza', 'Ana', 'Fernandez', 'N/A', 'Female', '1934-08-08', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '127', '5', 'Street 20', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42390, '139', 'Mendoza', 'Cristina', 'Toribio', 'None', 'Female', '1934-08-17', 'Pampanga', 'Single', 'No', 'Yes', '14', '128', '4', 'Street 14', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42391, '140', 'Dela Cruz', 'Ricardo', 'Panganiban', 'N/A', 'Male', '1934-08-24', 'Quezon City', 'Married', 'No', 'Yes', '14', '129', '5', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42392, '141', 'Garcia', 'Emilio', 'Salvador', 'N/A', 'Male', '1934-08-31', 'Manila', 'Married', 'No', 'Yes', '14', '130', '5', 'Street 4', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42393, '142', 'Torres', 'Carlos', 'Villanueva', 'N/A', 'Male', '1934-09-01', 'Zamboanga', 'Single', 'No', 'Yes', '14', '131', '2', 'Street 1', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42394, '143', 'Bautista', 'Elena', 'Salvador', 'N/A', 'Female', '1934-09-09', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '132', '4', 'Street 4', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42395, '144', 'Dela Cruz', 'Victoria', 'Panganiban', 'N/A', 'Female', '1934-09-12', 'Baguio', 'Widowed', 'No', 'Yes', '14', '133', '4', 'Street 16', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42396, '145', 'Mendoza', 'Jose', 'Ferrer', 'N/A', 'Male', '1934-09-19', 'Cavite', 'Married', 'No', 'Yes', '14', '134', '1', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42397, '146', 'Torres', 'Teresa', 'Toribio', 'N/A', 'Female', '1934-09-21', 'Baguio', 'Single', 'No', 'Yes', '14', '135', '4', 'Street 19', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42398, '147', 'Pascual', 'Lourdes', 'Villanueva', 'N/A', 'Female', '1934-09-23', 'Davao', 'Married', 'No', 'Yes', '14', '136', '2', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42399, '148', 'Gonzales', 'Miguel', 'Ferrer', 'N/A', 'Male', '1934-09-24', 'Quezon City', 'Single', 'No', 'Yes', '14', '137', '4', 'Street 18', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42400, '149', 'Castillo', 'Carlos', 'De Guzman', 'N/A', 'Male', '1934-09-30', 'Quezon City', 'Married', 'No', 'Yes', '14', '138', '3', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42401, '150', 'Bautista', 'Cristina', 'Toribio', 'N/A', 'Female', '1934-10-03', 'Manila', 'Widowed', 'No', 'Yes', '14', '139', '4', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42402, '151', 'Garcia', 'Cristina', 'Toribio', 'N/A', 'Female', '1934-10-06', 'Quezon City', 'Divorced', 'No', 'Yes', '14', '140', '5', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42403, '152', 'Reyes', 'Fernando', 'Salvador', 'N/A', 'Male', '1934-10-09', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '141', '1', 'Street 1', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42404, '153', 'Gonzales', 'Elena', 'Toribio', 'N/A', 'Female', '1934-10-20', 'Quezon City', 'Widowed', 'No', 'Yes', '14', '142', '2', 'Street 18', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42405, '154', 'Castillo', 'Antonio', 'Manalo', 'N/A', 'Male', '1934-10-20', 'Batangas', 'Widowed', 'No', 'Yes', '14', '143', '3', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42406, '155', 'Garcia', 'Lourdes', 'Manalo', 'N/A', 'Female', '1934-10-22', 'Quezon City', 'Married', 'No', 'Yes', '14', '144', '5', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42407, '156', 'Bautista', 'Andres', 'Toribio', 'N/A', 'Male', '1934-10-23', 'Cavite', 'Widowed', 'No', 'Yes', '14', '145', '2', 'Street 13', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42408, '157', 'Torres', 'Carmen', 'Ferrer', 'Sr.', 'Female', '1934-10-23', 'Batangas', 'Single', 'No', 'Yes', '14', '146', '4', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42409, '158', 'Torres', 'Andres', 'Agustin', 'Sr.', 'Male', '1934-10-29', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '147', '5', 'Street 1', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42410, '159', 'Mendoza', 'Ana', 'Panganiban', 'N/A', 'Female', '1934-11-08', 'Davao', 'Single', 'No', 'Yes', '14', '148', '1', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42411, '160', 'Pascual', 'Isabel', 'Manalo', 'N/A', 'Female', '1934-11-15', 'Manila', 'Single', 'No', 'Yes', '14', '149', '5', 'Street 20', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42412, '161', 'Santos', 'Elena', 'De Guzman', 'N/A', 'Female', '1934-11-28', 'Quezon City', 'Single', 'No', 'Yes', '14', '150', '3', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42413, '162', 'Torres', 'Isabel', 'Ferrer', 'V', 'Female', '1934-12-05', 'Batangas', 'Married', 'No', 'Yes', '14', '151', '5', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42414, '163', 'Mendoza', 'Carmen', 'Panganiban', 'N/A', 'Female', '1934-12-07', 'Batangas', 'Married', 'No', 'Yes', '14', '152', '1', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42415, '164', 'Reyes', 'Antonio', 'Salvador', 'N/A', 'Male', '1934-12-12', 'Pampanga', 'Married', 'No', 'Yes', '14', '153', '4', 'Street 14', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42416, '165', 'Gonzales', 'Emilio', 'Panganiban', 'N/A', 'Male', '1935-01-02', 'Cebu', 'Single', 'No', 'Yes', '14', '154', '2', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42417, '166', 'Pascual', 'Jose', 'Fernandez', 'N/A', 'Male', '1935-01-05', 'Baguio', 'Single', 'No', 'Yes', '14', '155', '1', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42418, '167', 'Gonzales', 'Rosario', 'Ramos', 'N/A', 'Female', '1935-01-07', 'Manila', 'Married', 'No', 'Yes', '14', '156', '2', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42419, '168', 'Reyes', 'Isabel', 'Agustin', 'V', 'Female', '1935-01-15', 'Cebu', 'Married', 'No', 'Yes', '14', '157', '2', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42420, '169', 'Castillo', 'Isabel', 'Toribio', 'V', 'Female', '1935-01-16', 'Manila', 'Single', 'No', 'Yes', '14', '158', '5', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42421, '170', 'Garcia', 'Andres', 'Villanueva', 'N/A', 'Male', '1935-01-23', 'Pampanga', 'Married', 'No', 'Yes', '14', '159', '5', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42422, '171', 'Pascual', 'Carlos', 'Fernandez', 'N/A', 'Male', '1935-01-23', 'Cebu', 'Married', 'No', 'Yes', '14', '160', '1', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42423, '172', 'Garcia', 'Miguel', 'De Guzman', 'N/A', 'Male', '1935-02-01', 'Batangas', 'Married', 'No', 'Yes', '14', '161', '2', 'Street 16', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42424, '173', 'Reyes', 'Rosario', 'Ferrer', 'V', 'Female', '1935-02-12', 'Batangas', 'Widowed', 'No', 'Yes', '14', '162', '1', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42425, '174', 'Garcia', 'Victoria', 'Ferrer', 'IV', 'Female', '1935-02-19', 'Zamboanga', 'Married', 'No', 'Yes', '14', '163', '4', 'Street 1', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42426, '175', 'Gonzales', 'Emilio', 'Ramos', 'N/A', 'Male', '1935-02-19', 'Cavite', 'Married', 'No', 'Yes', '14', '164', '1', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42427, '176', 'Reyes', 'Teresa', 'Salvador', 'None', 'Female', '1935-02-22', 'Davao', 'Married', 'No', 'Yes', '14', '165', '5', 'Street 4', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42428, '177', 'Bautista', 'Rosario', 'Toribio', 'N/A', 'Female', '1935-02-26', 'Quezon City', 'Single', 'No', 'Yes', '14', '166', '5', 'Street 13', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42429, '178', 'Santos', 'Jose', 'Toribio', 'Jr.', 'Male', '1935-02-28', 'Cebu', 'Single', 'No', 'Yes', '14', '167', '4', 'Street 1', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42430, '179', 'Castillo', 'Juan', 'Ramos', 'N/A', 'Male', '1935-02-28', 'Davao', 'Married', 'No', 'Yes', '14', '168', '1', 'Street 1', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42431, '180', 'Bautista', 'Ana', 'Toribio', 'Sr.', 'Female', '1935-03-01', 'Batangas', 'Divorced', 'No', 'Yes', '14', '169', '1', 'Street 8', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42432, '181', 'Dela Cruz', 'Antonio', 'Toribio', 'V', 'Male', '1935-03-02', 'Cavite', 'Single', 'No', 'Yes', '14', '170', '1', 'Street 8', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42433, '182', 'Gonzales', 'Emilio', 'Ramos', 'V', 'Male', '1935-03-03', 'Baguio', 'Divorced', 'No', 'Yes', '14', '171', '1', 'Street 6', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42434, '183', 'Mendoza', 'Isabel', 'Fernandez', 'N/A', 'Female', '1935-03-04', 'Cebu', 'Widowed', 'No', 'Yes', '14', '172', '2', 'Street 7', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42435, '184', 'Pascual', 'Emilio', 'Ferrer', 'N/A', 'Male', '1935-03-06', 'Manila', 'Married', 'No', 'Yes', '14', '173', '5', 'Street 11', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42436, '185', 'Castillo', 'Miguel', 'Ferrer', 'N/A', 'Male', '1935-03-15', 'Pampanga', 'Single', 'No', 'Yes', '14', '174', '1', 'Street 13', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42437, '186', 'Reyes', 'Carlos', 'Toribio', 'N/A', 'Male', '1935-03-29', 'Zamboanga', 'Married', 'No', 'Yes', '14', '175', '2', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42438, '187', 'Dela Cruz', 'Victoria', 'De Guzman', 'N/A', 'Female', '1935-04-15', 'Baguio', 'Single', 'No', 'Yes', '14', '176', '5', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42439, '188', 'Dela Cruz', 'Teresa', 'Ramos', 'N/A', 'Female', '1935-04-22', 'Pampanga', 'Married', 'No', 'Yes', '14', '177', '1', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42440, '189', 'Castillo', 'Cristina', 'Agustin', 'N/A', 'Female', '1935-04-28', 'Cebu', 'Widowed', 'No', 'Yes', '14', '178', '2', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42441, '190', 'Gonzales', 'Antonio', 'De Guzman', 'N/A', 'Male', '1935-04-30', 'Quezon City', 'Widowed', 'No', 'Yes', '14', '179', '1', 'Street 4', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42442, '191', 'Reyes', 'Ana', 'Toribio', 'N/A', 'Female', '1935-05-08', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '180', '4', 'Street 15', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42443, '192', 'Pascual', 'Miguel', 'Manalo', 'IV', 'Male', '1935-05-11', 'Quezon City', 'Single', 'No', 'Yes', '14', '181', '3', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42444, '193', 'Castillo', 'Juan', 'De Guzman', 'N/A', 'Male', '1935-05-14', 'Baguio', 'Married', 'No', 'Yes', '14', '182', '4', 'Street 6', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42445, '194', 'Bautista', 'Fernando', 'Salvador', 'N/A', 'Male', '1935-05-15', 'Davao', 'Married', 'No', 'Yes', '14', '183', '4', 'Street 11', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42446, '195', 'Bautista', 'Juan', 'Salvador', 'N/A', 'Male', '1935-05-17', 'Cebu', 'Married', 'No', 'Yes', '14', '184', '1', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42447, '196', 'Pascual', 'Fernando', 'Fernandez', 'N/A', 'Male', '1935-05-23', 'Cebu', 'Widowed', 'No', 'Yes', '14', '185', '5', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42448, '197', 'Santos', 'Jose', 'De Guzman', 'N/A', 'Male', '1935-05-24', 'Pampanga', 'Widowed', 'No', 'Yes', '14', '186', '3', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42449, '198', 'Bautista', 'Fernando', 'Toribio', 'N/A', 'Male', '1935-05-27', 'Manila', 'Married', 'No', 'Yes', '14', '187', '1', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42450, '199', 'Torres', 'Antonio', 'Salvador', 'None', 'Male', '1935-05-31', 'Pampanga', 'Widowed', 'No', 'Yes', '14', '188', '5', 'Street 11', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42451, '200', 'Gonzales', 'Carmen', 'De Guzman', 'N/A', 'Female', '1935-06-04', 'Quezon City', 'Single', 'No', 'Yes', '14', '189', '2', 'Street 3', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42452, '201', 'Pascual', 'Rosario', 'Agustin', 'N/A', 'Female', '1935-06-05', 'Pampanga', 'Single', 'No', 'Yes', '14', '190', '1', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42453, '202', 'Reyes', 'Antonio', 'Panganiban', 'N/A', 'Male', '1935-06-07', 'Pampanga', 'Single', 'No', 'Yes', '14', '191', '1', 'Street 13', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42454, '203', 'Reyes', 'Rosario', 'Villanueva', 'N/A', 'Female', '1935-06-11', 'Iloilo', 'Married', 'No', 'Yes', '14', '192', '1', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42455, '204', 'Mendoza', 'Juan', 'Fernandez', 'N/A', 'Male', '1935-06-14', 'Manila', 'Widowed', 'No', 'Yes', '14', '193', '2', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42456, '205', 'Torres', 'Emilio', 'Ferrer', 'Sr.', 'Male', '1935-06-19', 'Cebu', 'Single', 'No', 'Yes', '14', '194', '2', 'Street 7', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42457, '206', 'Dela Cruz', 'Rafael', 'Agustin', 'None', 'Male', '1935-06-20', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '195', '1', 'Street 13', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42458, '207', 'Castillo', 'Miguel', 'Panganiban', 'Sr.', 'Male', '1935-06-22', 'Iloilo', 'Widowed', 'No', 'Yes', '14', '196', '3', 'Street 14', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42459, '208', 'Castillo', 'Carmen', 'Salvador', 'N/A', 'Female', '1935-07-02', 'Pampanga', 'Single', 'No', 'Yes', '14', '197', '1', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42460, '209', 'Reyes', 'Juan', 'Ramos', 'N/A', 'Male', '1935-07-06', 'Cavite', 'Married', 'No', 'Yes', '14', '198', '5', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42461, '210', 'Torres', 'Teresa', 'Panganiban', 'N/A', 'Female', '1935-07-08', 'Baguio', 'Married', 'No', 'Yes', '14', '199', '1', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42462, '211', 'Santos', 'Carmen', 'Fernandez', 'Jr.', 'Female', '1935-07-09', 'Iloilo', 'Married', 'No', 'Yes', '14', '200', '1', 'Street 4', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42463, '212', 'Reyes', 'Teresa', 'Manalo', 'N/A', 'Female', '1935-07-13', 'Batangas', 'Married', 'No', 'Yes', '14', '201', '3', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32');
INSERT INTO `residents` (`id`, `res_num`, `last_name`, `first_name`, `middle_name`, `suffix_name`, `gender`, `birthday`, `birthplace`, `civil_status`, `isOccupation`, `isBeneficiaries`, `programId`, `house_number`, `purok`, `street`, `occupation`, `student`, `type_of_house`, `pwd`, `membership_prog`, `image`, `created_at`, `updated_at`) VALUES
(42464, '213', 'Dela Cruz', 'Victoria', 'Agustin', 'N/A', 'Female', '1935-07-17', 'Baguio', 'Married', 'No', 'Yes', '14', '202', '1', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42465, '214', 'Dela Cruz', 'Teresa', 'Agustin', 'N/A', 'Female', '1935-07-23', 'Manila', 'Married', 'No', 'Yes', '14', '203', '4', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42466, '215', 'Torres', 'Miguel', 'Salvador', 'N/A', 'Male', '1935-07-27', 'Manila', 'Widowed', 'No', 'Yes', '14', '204', '3', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42467, '216', 'Dela Cruz', 'Fernando', 'Agustin', 'N/A', 'Male', '1935-08-04', 'Quezon City', 'Single', 'No', 'Yes', '14', '205', '3', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42468, '217', 'Reyes', 'Cristina', 'Ramos', 'N/A', 'Female', '1935-08-06', 'Cebu', 'Widowed', 'No', 'Yes', '14', '206', '5', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42469, '218', 'Reyes', 'Cristina', 'Villanueva', 'None', 'Female', '1935-08-15', 'Baguio', 'Single', 'No', 'Yes', '14', '207', '5', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42470, '219', 'Bautista', 'Carlos', 'De Guzman', 'N/A', 'Male', '1935-09-03', 'Zamboanga', 'Divorced', 'No', 'Yes', '14', '208', '2', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42471, '220', 'Gonzales', 'Teresa', 'Panganiban', 'N/A', 'Female', '1935-09-08', 'Batangas', 'Widowed', 'No', 'Yes', '14', '209', '3', 'Street 19', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42472, '221', 'Santos', 'Andres', 'Manalo', 'N/A', 'Male', '1935-09-08', 'Quezon City', 'Single', 'No', 'Yes', '14', '210', '1', 'Street 6', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42473, '222', 'Pascual', 'Carlos', 'Toribio', 'N/A', 'Male', '1935-09-12', 'Baguio', 'Widowed', 'No', 'Yes', '14', '211', '2', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42474, '223', 'Gonzales', 'Rosario', 'Agustin', 'N/A', 'Female', '1935-09-13', 'Manila', 'Divorced', 'No', 'Yes', '14', '212', '2', 'Street 10', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42475, '224', 'Santos', 'Rafael', 'Agustin', 'N/A', 'Male', '1935-09-15', 'Zamboanga', 'Divorced', 'No', 'Yes', '14', '213', '1', 'Street 4', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42476, '225', 'Torres', 'Maria', 'Manalo', 'None', 'Female', '1935-09-20', 'Pampanga', 'Widowed', 'No', 'Yes', '14', '214', '5', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42477, '226', 'Gonzales', 'Andres', 'Fernandez', 'N/A', 'Male', '1935-09-21', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '215', '1', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:32', '2025-03-15 02:38:32'),
(42478, '227', 'Torres', 'Fernando', 'Ramos', 'N/A', 'Male', '1935-09-24', 'Pampanga', 'Single', 'No', 'Yes', '14', '216', '1', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42479, '228', 'Santos', 'Carlos', 'Fernandez', 'N/A', 'Male', '1935-09-28', 'Zamboanga', 'Married', 'No', 'Yes', '14', '217', '1', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42480, '229', 'Santos', 'Isabel', 'Manalo', 'N/A', 'Female', '1935-09-30', 'Manila', 'Married', 'No', 'Yes', '14', '218', '1', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42481, '230', 'Bautista', 'Fernando', 'Manalo', 'N/A', 'Male', '1935-10-07', 'Cavite', 'Widowed', 'No', 'Yes', '14', '219', '4', 'Street 3', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42482, '231', 'Garcia', 'Carmen', 'Ferrer', 'N/A', 'Female', '1935-10-11', 'Cebu', 'Single', 'No', 'Yes', '14', '220', '4', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42483, '232', 'Reyes', 'Teresa', 'Ferrer', 'Sr.', 'Female', '1935-10-21', 'Pampanga', 'Widowed', 'No', 'Yes', '14', '221', '5', 'Street 14', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42484, '233', 'Torres', 'Victoria', 'Toribio', 'N/A', 'Female', '1935-10-23', 'Cavite', 'Widowed', 'No', 'Yes', '14', '222', '2', 'Street 16', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42485, '234', 'Santos', 'Jose', 'Toribio', 'N/A', 'Male', '1935-11-01', 'Cavite', 'Divorced', 'No', 'Yes', '14', '223', '5', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42486, '235', 'Bautista', 'Miguel', 'Manalo', 'III', 'Male', '1935-11-09', 'Davao', 'Widowed', 'No', 'Yes', '14', '224', '5', 'Street 7', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42487, '236', 'Reyes', 'Emilio', 'Agustin', 'N/A', 'Male', '1935-11-21', 'Iloilo', 'Married', 'No', 'Yes', '14', '225', '1', 'Street 8', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42488, '237', 'Castillo', 'Ricardo', 'Panganiban', 'N/A', 'Male', '1935-11-28', 'Iloilo', 'Divorced', 'No', 'Yes', '14', '226', '3', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42489, '238', 'Garcia', 'Rafael', 'Villanueva', 'N/A', 'Male', '1935-12-13', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '227', '2', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42490, '239', 'Torres', 'Antonio', 'De Guzman', 'N/A', 'Male', '1935-12-18', 'Davao', 'Single', 'No', 'Yes', '14', '228', '2', 'Street 18', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42491, '240', 'Mendoza', 'Rafael', 'Salvador', 'N/A', 'Male', '1935-12-22', 'Quezon City', 'Married', 'No', 'Yes', '14', '229', '5', 'Street 1', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42492, '241', 'Torres', 'Emilio', 'Agustin', 'N/A', 'Male', '1935-12-24', 'Quezon City', 'Single', 'No', 'Yes', '14', '230', '2', 'Street 12', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42493, '242', 'Garcia', 'Fernando', 'Ferrer', 'N/A', 'Male', '1935-12-26', 'Baguio', 'Widowed', 'No', 'Yes', '14', '231', '1', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42494, '243', 'Dela Cruz', 'Emilio', 'Salvador', 'N/A', 'Male', '1935-12-30', 'Batangas', 'Single', 'No', 'Yes', '14', '232', '2', 'Street 7', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42495, '244', 'Gonzales', 'Victoria', 'De Guzman', 'IV', 'Female', '1936-01-03', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '233', '1', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42496, '245', 'Gonzales', 'Miguel', 'De Guzman', 'N/A', 'Male', '1936-01-09', 'Manila', 'Divorced', 'No', 'Yes', '14', '234', '3', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42497, '246', 'Pascual', 'Rosario', 'Ramos', 'V', 'Female', '1936-01-09', 'Pampanga', 'Divorced', 'No', 'Yes', '14', '235', '1', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42498, '247', 'Gonzales', 'Ricardo', 'De Guzman', 'N/A', 'Male', '1936-01-10', 'Quezon City', 'Married', 'No', 'Yes', '14', '236', '2', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42499, '248', 'Mendoza', 'Elena', 'Villanueva', 'N/A', 'Female', '1936-01-12', 'Davao', 'Single', 'No', 'Yes', '14', '237', '3', 'Street 13', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42500, '249', 'Gonzales', 'Teresa', 'Toribio', 'N/A', 'Female', '1936-01-16', 'Baguio', 'Widowed', 'No', 'Yes', '14', '238', '3', 'Street 5', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42501, '250', 'Santos', 'Antonio', 'Ferrer', 'N/A', 'Male', '1936-01-19', 'Davao', 'Single', 'No', 'Yes', '14', '239', '4', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42502, '251', 'Dela Cruz', 'Fernando', 'Salvador', 'N/A', 'Male', '1936-01-20', 'Baguio', 'Married', 'No', 'Yes', '14', '240', '5', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42503, '252', 'Torres', 'Miguel', 'Panganiban', 'N/A', 'Male', '1936-02-04', 'Baguio', 'Married', 'No', 'Yes', '14', '241', '1', 'Street 8', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42504, '253', 'Gonzales', 'Antonio', 'Ferrer', 'N/A', 'Male', '1936-02-05', 'Cavite', 'Single', 'No', 'Yes', '14', '242', '4', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42505, '254', 'Garcia', 'Carlos', 'Ramos', 'N/A', 'Male', '1936-02-17', 'Quezon City', 'Single', 'No', 'Yes', '14', '243', '4', 'Street 7', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42506, '255', 'Bautista', 'Ana', 'Fernandez', 'N/A', 'Female', '1936-02-22', 'Davao', 'Widowed', 'No', 'Yes', '14', '244', '2', 'Street 15', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42507, '256', 'Reyes', 'Jose', 'Fernandez', 'N/A', 'Male', '1936-02-27', 'Zamboanga', 'Single', 'No', 'Yes', '14', '245', '2', 'Street 19', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42508, '257', 'Mendoza', 'Ricardo', 'Toribio', 'IV', 'Male', '1936-02-28', 'Baguio', 'Single', 'No', 'Yes', '14', '246', '2', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42509, '258', 'Reyes', 'Cristina', 'De Guzman', 'Sr.', 'Female', '1936-03-01', 'Cavite', 'Single', 'No', 'Yes', '14', '247', '4', 'Street 12', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42510, '259', 'Pascual', 'Andres', 'Villanueva', 'N/A', 'Male', '1936-03-03', 'Manila', 'Single', 'No', 'Yes', '14', '248', '1', 'Street 1', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42511, '260', 'Santos', 'Juan', 'De Guzman', 'IV', 'Male', '1936-03-05', 'Baguio', 'Married', 'No', 'Yes', '14', '249', '1', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42512, '261', 'Reyes', 'Andres', 'Agustin', 'N/A', 'Male', '1936-03-10', 'Quezon City', 'Widowed', 'No', 'Yes', '14', '250', '1', 'Street 8', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42513, '262', 'Reyes', 'Elena', 'Manalo', 'N/A', 'Female', '1936-03-18', 'Cavite', 'Divorced', 'No', 'Yes', '14', '251', '5', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42514, '263', 'Reyes', 'Isabel', 'Panganiban', 'N/A', 'Female', '1936-03-27', 'Pampanga', 'Widowed', 'No', 'Yes', '14', '252', '2', 'Street 3', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42515, '264', 'Bautista', 'Elena', 'Panganiban', 'N/A', 'Female', '1936-03-30', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '253', '5', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42516, '265', 'Garcia', 'Victoria', 'Ferrer', 'N/A', 'Female', '1936-04-02', 'Manila', 'Widowed', 'No', 'Yes', '14', '254', '4', 'Street 18', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42517, '266', 'Santos', 'Rosario', 'Manalo', 'N/A', 'Female', '1936-04-10', 'Cavite', 'Divorced', 'No', 'Yes', '14', '255', '4', 'Street 3', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42518, '267', 'Mendoza', 'Teresa', 'Ferrer', 'N/A', 'Female', '1936-04-20', 'Baguio', 'Widowed', 'No', 'Yes', '14', '256', '2', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42519, '268', 'Reyes', 'Carmen', 'Manalo', 'Jr.', 'Female', '1936-04-26', 'Cebu', 'Single', 'No', 'Yes', '14', '257', '2', 'Street 14', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42520, '269', 'Bautista', 'Carmen', 'Toribio', 'N/A', 'Female', '1936-04-26', 'Cavite', 'Single', 'No', 'Yes', '14', '258', '1', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42521, '270', 'Dela Cruz', 'Ricardo', 'Ramos', 'N/A', 'Male', '1936-04-27', 'Iloilo', 'Single', 'No', 'Yes', '14', '259', '2', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42522, '271', 'Bautista', 'Teresa', 'Ramos', 'N/A', 'Female', '1936-04-28', 'Iloilo', 'Single', 'No', 'Yes', '14', '260', '1', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42523, '272', 'Santos', 'Fernando', 'Ferrer', 'N/A', 'Male', '1936-04-30', 'Quezon City', 'Single', 'No', 'Yes', '14', '261', '1', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42524, '273', 'Torres', 'Isabel', 'Ramos', 'N/A', 'Female', '1936-05-11', 'Zamboanga', 'Married', 'No', 'Yes', '14', '262', '1', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42525, '274', 'Reyes', 'Andres', 'Toribio', 'N/A', 'Male', '1936-05-13', 'Cavite', 'Married', 'No', 'Yes', '14', '263', '4', 'Street 1', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42526, '275', 'Reyes', 'Fernando', 'Ramos', 'N/A', 'Male', '1936-05-14', 'Baguio', 'Single', 'No', 'Yes', '14', '264', '5', 'Street 12', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42527, '276', 'Gonzales', 'Antonio', 'De Guzman', 'N/A', 'Male', '1936-05-16', 'Batangas', 'Single', 'No', 'Yes', '14', '265', '1', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42528, '277', 'Dela Cruz', 'Lourdes', 'Manalo', 'N/A', 'Female', '1936-05-23', 'Davao', 'Single', 'No', 'Yes', '14', '266', '2', 'Street 11', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42529, '278', 'Mendoza', 'Rafael', 'Panganiban', 'N/A', 'Male', '1936-05-31', 'Pampanga', 'Single', 'No', 'Yes', '14', '267', '2', 'Street 5', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42530, '279', 'Gonzales', 'Cristina', 'Ferrer', 'N/A', 'Female', '1936-06-02', 'Manila', 'Married', 'No', 'Yes', '14', '268', '2', 'Street 6', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42531, '280', 'Mendoza', 'Victoria', 'Ferrer', 'N/A', 'Female', '1936-06-03', 'Baguio', 'Single', 'No', 'Yes', '14', '269', '3', 'Street 7', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42532, '281', 'Mendoza', 'Fernando', 'Salvador', 'N/A', 'Male', '1936-06-03', 'Quezon City', 'Single', 'No', 'Yes', '14', '270', '5', 'Street 14', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42533, '282', 'Pascual', 'Emilio', 'Toribio', 'N/A', 'Male', '1936-06-07', 'Cebu', 'Widowed', 'No', 'Yes', '14', '271', '2', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42534, '283', 'Dela Cruz', 'Teresa', 'Villanueva', 'N/A', 'Female', '1936-06-23', 'Iloilo', 'Single', 'No', 'Yes', '14', '272', '2', 'Street 17', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42535, '284', 'Reyes', 'Antonio', 'Panganiban', 'N/A', 'Male', '1936-06-23', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '273', '1', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42536, '285', 'Castillo', 'Rafael', 'De Guzman', 'IV', 'Male', '1936-06-24', 'Iloilo', 'Married', 'No', 'Yes', '14', '274', '5', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42537, '286', 'Garcia', 'Teresa', 'Ferrer', 'Sr.', 'Female', '1936-06-24', 'Batangas', 'Single', 'No', 'Yes', '14', '275', '1', 'Street 11', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42538, '287', 'Bautista', 'Emilio', 'Toribio', 'N/A', 'Male', '1936-06-25', 'Davao', 'Married', 'No', 'Yes', '14', '276', '5', 'Street 18', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42539, '288', 'Pascual', 'Emilio', 'Manalo', 'V', 'Male', '1936-06-26', 'Manila', 'Single', 'No', 'Yes', '14', '277', '4', 'Street 4', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42540, '289', 'Mendoza', 'Rafael', 'Salvador', 'N/A', 'Male', '1936-06-26', 'Iloilo', 'Single', 'No', 'Yes', '14', '278', '1', 'Street 7', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42541, '290', 'Dela Cruz', 'Maria', 'Salvador', 'N/A', 'Female', '1936-06-28', 'Cebu', 'Widowed', 'No', 'Yes', '14', '279', '3', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42542, '291', 'Dela Cruz', 'Ricardo', 'De Guzman', 'N/A', 'Male', '1936-07-09', 'Iloilo', 'Single', 'No', 'Yes', '14', '280', '2', 'Street 15', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42543, '292', 'Mendoza', 'Teresa', 'Fernandez', 'N/A', 'Female', '1936-07-12', 'Manila', 'Single', 'No', 'Yes', '14', '281', '2', 'Street 20', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42544, '293', 'Reyes', 'Cristina', 'Manalo', 'IV', 'Female', '1936-07-20', 'Iloilo', 'Divorced', 'No', 'Yes', '14', '282', '2', 'Street 2', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42545, '294', 'Santos', 'Isabel', 'Panganiban', 'N/A', 'Female', '1936-07-23', 'Quezon City', 'Widowed', 'No', 'Yes', '14', '283', '2', 'Street 13', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42546, '295', 'Garcia', 'Emilio', 'Fernandez', 'N/A', 'Male', '1936-07-27', 'Quezon City', 'Married', 'No', 'Yes', '14', '284', '3', 'Street 19', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42547, '296', 'Mendoza', 'Carmen', 'Salvador', 'N/A', 'Female', '1936-07-27', 'Iloilo', 'Single', 'No', 'Yes', '14', '285', '1', 'Street 15', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42548, '297', 'Mendoza', 'Elena', 'Fernandez', 'N/A', 'Female', '1936-07-29', 'Cavite', 'Married', 'No', 'Yes', '14', '286', '4', 'Street 15', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42549, '298', 'Dela Cruz', 'Lourdes', 'Agustin', 'N/A', 'Female', '1936-08-01', 'Zamboanga', 'Single', 'No', 'Yes', '14', '287', '1', 'Street 7', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42550, '299', 'Santos', 'Miguel', 'Salvador', 'N/A', 'Male', '1936-08-05', 'Quezon City', 'Married', 'No', 'Yes', '14', '288', '3', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42551, '300', 'Bautista', 'Teresa', 'Ramos', 'N/A', 'Female', '1936-08-06', 'Cavite', 'Widowed', 'No', 'Yes', '14', '289', '2', 'Street 8', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42552, '301', 'Dela Cruz', 'Juan', 'Agustin', 'N/A', 'Male', '1936-08-13', 'Zamboanga', 'Widowed', 'No', 'Yes', '14', '290', '5', 'Street 12', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42553, '302', 'Reyes', 'Victoria', 'Ferrer', 'N/A', 'Female', '1936-08-16', 'Quezon City', 'Single', 'No', 'Yes', '14', '291', '5', 'Street 16', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42554, '303', 'Garcia', 'Emilio', 'Agustin', 'N/A', 'Male', '1936-08-21', 'Batangas', 'Single', 'No', 'Yes', '14', '292', '1', 'Street 9', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42555, '304', 'Pascual', 'Fernando', 'Salvador', 'III', 'Male', '1936-08-22', 'Cavite', 'Married', 'No', 'Yes', '14', '293', '2', 'Street 3', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42556, '305', 'Castillo', 'Victoria', 'De Guzman', 'N/A', 'Female', '1936-08-25', 'Davao', 'Married', 'No', 'Yes', '14', '294', '3', 'Street 16', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42557, '306', 'Santos', 'Jose', 'Panganiban', 'N/A', 'Male', '1936-08-27', 'Cavite', 'Married', 'No', 'Yes', '14', '295', '5', 'Street 8', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42558, '307', 'Castillo', 'Rosario', 'Ramos', 'N/A', 'Female', '1936-08-29', 'Cebu', 'Widowed', 'No', 'Yes', '14', '296', '1', 'Street 9', 'None', 'Not Applicable', 'Rented', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42559, '308', 'Torres', 'Lourdes', 'Ferrer', 'N/A', 'Female', '1936-09-02', 'Cebu', 'Widowed', 'No', 'Yes', '14', '297', '1', 'Street 17', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33'),
(42560, '309', 'Reyes', 'Fernando', 'Manalo', 'V', 'Male', '1936-09-03', 'Pampanga', 'Married', 'No', 'Yes', '14', '298', '3', 'Street 10', 'None', 'Not Applicable', 'Owned', 'No', 'No', NULL, '2025-03-15 02:38:33', '2025-03-15 02:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jahn', 'jahnhuerte@gmail.com', '2024-05-01 07:23:58', '$2y$10$oHHSGkMu0iNb53W5HpMynOk8HrVfQARcIff09Ftdsrn4t7jN/yYhK', 'Z7fUVomuWuEGZYot7BkVE4kYCLdCBxTxGburJnu9j8gogMAIecM4Sk6hYxOZ', '2024-05-01 07:23:58', '2024-05-01 07:23:58'),
(3, 'Jeruz Elises Claudel', 'jeclaudel@pnc.edu.ph', NULL, '$2y$10$Rdf8djymTDuR1hzKJG3Gc.4O0G4F5qX19kDbTxGCjehE9MlC1CdBO', NULL, '2024-07-15 14:32:46', '2024-07-15 14:32:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blotters`
--
ALTER TABLE `blotters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blotter_resident`
--
ALTER TABLE `blotter_resident`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blotter_resident_resident_id_foreign` (`resident_id`),
  ADD KEY `blotter_resident_blotter_id_foreign` (`blotter_id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_business_owner_id_foreign` (`business_owner_id`);

--
-- Indexes for table `clearances`
--
ALTER TABLE `clearances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diggings`
--
ALTER TABLE `diggings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fencings`
--
ALTER TABLE `fencings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchises`
--
ALTER TABLE `franchises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `franchises_franchisee_id_foreign` (`franchisee_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `meralco_clearances`
--
ALTER TABLE `meralco_clearances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD UNIQUE KEY `programId` (`programId`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blotters`
--
ALTER TABLE `blotters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blotter_resident`
--
ALTER TABLE `blotter_resident`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clearances`
--
ALTER TABLE `clearances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diggings`
--
ALTER TABLE `diggings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fencings`
--
ALTER TABLE `fencings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchises`
--
ALTER TABLE `franchises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `meralco_clearances`
--
ALTER TABLE `meralco_clearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42561;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blotter_resident`
--
ALTER TABLE `blotter_resident`
  ADD CONSTRAINT `blotter_resident_blotter_id_foreign` FOREIGN KEY (`blotter_id`) REFERENCES `blotters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blotter_resident_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_business_owner_id_foreign` FOREIGN KEY (`business_owner_id`) REFERENCES `residents` (`id`);

--
-- Constraints for table `franchises`
--
ALTER TABLE `franchises`
  ADD CONSTRAINT `franchises_franchisee_id_foreign` FOREIGN KEY (`franchisee_id`) REFERENCES `residents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
