-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 01:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sjc`
--
CREATE DATABASE IF NOT EXISTS `sjc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sjc`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `year` int(4) NOT NULL,
  `category` varchar(30) NOT NULL,
  `page_count` int(4) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `isbn` decimal(13,0) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `cover` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `year`, `category`, `page_count`, `author`, `publisher`, `isbn`, `price`, `cover`) VALUES
(1, 'Fundamental Accounting Principles 20th Edition', 'With 55 years of success in the principles of the accounting market, Fundamental Accounting Principles, 20th edition by Wild, Shaw and Chiappetta has endured and adapted to changes in accounting, technology, and student learning styles. Its innovation is reflected in its extensive use of small business examples, the integration of new technology learning tools, superior end-of-chapter material, and a highly engaging, pedagogical design.', 2010, 'Accounting', 1024, 'John Wild and Ken Shaw', 'McGraw-Hill Irwin', '9780078110870', '75.00', 'media/covers/Business/ACC102.jpg'),
(2, 'Computerized Accounting And Business Systems: A text book on the applications of Computers in Accounting and Business', 'Business life has become almost impossible without this electronic guru - the Computer. And the latest addition to this toolkit now is the Internet, the other face of computer-wedded communications. The contents of this book are designed to give management students and accounting professionals a sound theoretical understanding of the concepts of Computerized Accounting and Business Systems in modern business organizations.', 2012, 'Accounting', 152, 'Sharma, Neeraj', 'LAP LAMBERT Academic Publishing', '9783659276521', '75.00', 'media/covers/Business/ACC205.jpg'),
(3, 'CXC CAPE Accounting Unit 2 For Self-Study and Distance Learning', 'Study Guides for CAPE have been developed and written by CXC to provide CAPE candidates in schools and colleges with resource materials to help them prepare for their exams. Matching the topics in the syllabus, the student-friendly structure and content enable students to develop their skills and confidence as they approach the examination.', 2014, 'Accounting', 256, 'Sleeter, Doug', 'Oxford University Press', '9781408509050', '30.00', 'media/covers/Business/ACC216.jpg'),
(4, 'MGMT: Principles of Management (Book and Coursemate Access Card) 8th Edition', '4LTR Press solutions give students the option to choose the format that best suits their learning preferences. This option is perfect for those students who focus on the textbook as their main course resource.', 2015, 'Business Management', 448, 'Williams, Chuck', 'South-Western College', '9781285867502', '30.00', 'media/covers/Business/BUS105.jpg'),
(5, 'Marketing 5th Edition', 'Grewal\'s value-based approach emphasizes that even the best products and services will go unsold if marketers cannot communicate their value. M: Marketing is the most concise, impactful approach to Principles of Marketing on the market, with tightly integrated topics that explore both marketing fundamentals and new influencers, all in an engaging format that allows for easy classroom and assignment management. A robust suite of instructor resources and regularly updated Grewal/Levy author blog p', 2016, 'Marketing', 480, 'Grewal, Dhruv & Levy, Michael', 'McGraw-Hill Education', '9780077729028', '65.00', 'media/covers/Business/BUS213.jpg'),
(6, 'Law for Business Student (5th Edition)', 'Law for Business Students provides an approachable introduction to the law for those new to the subject or studying law as part of a non-law degree. Alix Adams\' writing style brings the subject to life and encourages you to apply the law to your own experiences and the world around you.', 2008, 'Business Law', 608, 'Adam, A.', 'Pearson Prentice Hall', '9781405858885', '30.00', 'media/covers/Business/BUS222.jpg'),
(7, 'Principles of Managerial Finance 12th Edition', 'Gitman’s proven Learning Goal System—a hallmark feature of Principles of Managerial Finance—weaves pedagogy into concepts and practice, providing readers with a road map to guide them through the text and supplementary tools. The Twelfth Edition now includes an emphasis on personal finance issues to add currency and relevance to the already cohesive learning framework.', 2008, 'Business Finance', 847, 'Gitman, L.J.', 'Pearson Prentice Hall', '9780321524133', '70.00', 'media/covers/Business/BUS223.jpg'),
(8, 'Business Ethics: Ethical Decision Making & Cases 12th Edition', 'Learn to make successful ethical decisions in today\'s complex managerial environment with Ferrell/Fraedrich/Ferrell\'s market-leading BUSINESS ETHICS: ETHICAL DECISION MAKING AND CASES, 12E. Packed with cases, exercises and simulations, this applied approach uses a proven managerial framework to address overall concepts, processes and best practices associated with top business ethics programs. You clearly see how to integrate ethics into key strategic business decisions. This thoroughly revised ', 2018, 'Business Ethics', 672, 'Fraedrich, John, Ferrell O.C., Ferrell Linda', 'Cengage Learning', '9781337614436', '70.00', 'media/covers/Business/BUS224.jpg'),
(9, 'Business Communication Today (11th Edition)', 'The field’s leading text for more than two decades, Business Communication Today continues to provide cutting-edge coverage that readers can count on to prepare them for real business practice. Other textbooks release new editions that don\'t reflect their copyright year, training readers in practices from the last decade Bovée/Thill provides real-world training for the business world of today and tomorrow.', 2011, 'Business Communication', 579, 'Bovee, C., & Thill, J.', 'Pearson New Jersey: Prentice Hall,', '9780132539555', '20.00', 'media/covers/Business/BUS251.jpg'),
(10, 'Small Business Management Essential Tools and Skills for Entrepreneurial Success', 'In order to become a successful entrepreneur, one has to have a clear understanding of how to effectively manage a small business. This valuable introduction shows budding entrepreneurs how to launch and run their own firm. In addition to explaining the value and appeal of small businesses, it offers a variety of essential start-up lessons, including how to write a business plan, obtain financing, and choose a legal form for any venture.', 2007, 'Business Management', 629, 'Hodgetts, Kuratko, Burlingme & Gulbrandsen', 'Wiley', '9780470111260', '20.00', 'media/covers/Business/BUS252.jpg'),
(11, 'Principles of Microeconomics, 6th Edition', 'With its clear and engaging writing style, PRINCIPLES OF MICROECONOMICS, Sixth Edition, continues to be one of the most popular books on economics available today. Mankiw emphasizes material that you are likely to find interesting about the economy (particularly if you are studying economics for the first time), including real-life scenarios, useful facts, and the many ways economic concepts play a role in the decisions you make every day.', 2011, 'Economics', 528, 'N. Gregory Mankiw', 'South-Western College', '9780538453059', '15.00', 'media/covers/Business/ECO106.jpg'),
(12, 'Principles of Microeconomics 4th edition', 'Principles of Microeconomics has been thoroughly revised, simplified, and updated for the Fourth Edition. Co-written by Joseph Stiglitz, winner of the Nobel Prize for his research on imperfect markets, and Carl E. Walsh, one of the leading monetary economists in the field, Principles of Microeconomics is the most modern and accurate text available.', 2005, 'Economics', 495, 'Stiglitz, J.E. & Walsh, C.E', 'W.W. Norton & Company, Inc. New York, NY', '9780393925738', '25.00', 'media/covers/Business/ECO210.jpg'),
(13, 'Principles of Macroeconomics 3rd edition', 'For the Third Edition, 2001 Nobel laureate Joseph Stiglitz joins forces with new co-author Carl Walsh, who brings both economic expertise and teaching savvy to the project. Together, Stiglitz and Walsh thoroughly integrate contemporary economics into the traditional curriculum. Recognizing the limitations of the traditional AS/AD model, the authors offer an improved framework for the analysis of macroeconomic fluctuations. This approach emphasizes the role of the Fed and the federal funds market', 2002, 'Economics', 520, 'Stiglitz, J.E. & Walsh, C.E', 'W.W. Norton & Company, Inc. New York, NY', '9780393975192', '20.00', 'media/covers/Business/ECO220.jpg'),
(14, 'The Fundamentals of Caribbean Tourism - The Ultimate Cape Tourism Reader Unit 1', 'The Fundamentals of Caribbean Tourism addresses all the major themes of Unit ONE CAPE © Tourism. It has a sample Internal Assessment to provide guidance to students and teachers as they conduct their research. This book is filled with relevant examples to help students understand the fundamentals of the tourism industry. The CAPE © Tourism Unit Two book entitled Caribbean Tourism Product Development, Marketing and Entrepreneurship captures all the relevant content, examples and activities necess', 2017, 'Hospitality', 164, 'Titus-Maxwell, Jody and Morrison, Shanice', 'CreateSpace Independent Publishing Platform', '9781544868561', '30.00', 'media/covers/Business/THM120.jpg'),
(15, 'Tourism Planning: Policies, Processes & Relationships', 'The new edition of this text is positioned - through its broad coverage, accessible style and presentation, and practical application - as the core learning resource for students of tourism planning. With an increased applied focus, a wider range of international case studies and examples, and two new chapters highlighting sustainability as a core tourism concern in the world today, the new edition will appeal across the spectrum of tourism students and practitioners from business and management', 2008, 'Tourism', 302, 'C. Michael Hall', 'Pearson Prentice Hall', '9780132046527', '20.00', 'media/covers/Business/THM236.jpg'),
(16, 'Marketing and Managing Tourism Destinations', 'Marketing and Managing Tourism Destinations is a comprehensive and integrated introductory textbook covering both destination marketing and destination management in one volume. It focuses on how destination management is planned, implemented and evaluated as well as the management and operations of destination management organizations (DMOs), how they conduct business, major opportunities, challenges and issues they face to compete for the global leisure and business travel markets.', 2018, 'Tourism', 690, 'Morrison, Alister', 'Routledge', '9780415672504', '65.00', 'media/covers/Business/THM255.jpg'),
(17, 'Group Genius: The Creative Power of Collaboration', 'Creativity has long been thought to be an individual gift, best pursued alone; schools, organizations, and whole industries are built on this idea. But what if the most common beliefs about how creativity works are wrong? Group Genius tears down some of the most popular myths about creativity, revealing that creativity is always collaborative -- even when you\'re alone. Sharing the results of his own acclaimed research on jazz groups, theater ensembles, and conversation analysis, Keith Sawyer sho', 2017, 'Entrepreneurship', 368, 'Sawyer, Keith', 'Basic Books', '9780465071920', '30.00', 'media/covers/Business/ENT105.jpg'),
(18, 'An Introduction to Entrepreneurship', 'Entrepreneurs play a pivotal role in boosting progress, productivity and prosperity. They drive economic growth and create new opportunities. Their innovations transform people’s lives. Yet their enormous contribution is not widely understood – and is often completely overlooked in economics textbooks. Here, author Eamonn Butler sets the record straight – explaining the vital role of entrepreneurship, exploring its economic and social significance, and examining the conditions needed for it to t', 2020, 'Entrepreneurship', 146, 'Butler, Eamonn', 'Institute Of Economic Affairs', '9780255367943', '40.00', 'media/covers/Business/ENT110.jpg'),
(19, 'Social Entrepreneurship 1st Edition', '\"Social Entrepreneurship: A Practical Introduction\" is the go-to handbook for people seeking to combat societal issues like poverty, racism, climate change, hunger and more using entrepreneurial techniques.', 2022, 'Entrepreneurship', 142, 'Weaver, Rasheda L.', 'Routledge', '9781032129433', '50.00', 'media/covers/Business/ENT210.jpg'),
(20, 'Business Information Systems: Analysis, Design & Practice 5th Edition', 'Helps students to gain a comprehensive understanding of how information systems can aid the realization of business objectives. The book covers BIS from a business, technical and systems development perspective.With balanced and clear coverage of the more technical systems aspects of BIS and the softer, more managerial topics together with an analytical approach, this well-established text provides a solid coverage of the topic from systems, design analysis and planning to data mining, business ', 2005, 'Information Systems', 686, 'Graham Curtis, David Cobham', 'Ft Pr', '9780273687924', '30.00', 'media/covers/Computer Science/CIS120.jpg'),
(21, 'Starting Out with C++: Early Objects (9th Edition)', 'Intended for use in a two-term, three-term, or accelerated one-term C++ programming sequence, this Ninth Edition of Starting Out with C++: Early Objects introduces the fundamentals of C++ to novices and experienced programmers alike. In clear, easy-to-understand terms, the text introduces all of the necessary topics for beginning C++ programmers. Real-world examples allow readers to apply their knowledge in understanding how, why, and when to implement the features of C++. The text is organized ', 2016, 'Computer Programming', 1272, 'Tony Gaddis, Judy Walters, Godfrey Muganda', 'Pearson', '9780134400242', '50.00', 'media/covers/Computer Science/CIS126.jpg'),
(22, 'Systems Analysis and Design 5th Edition', 'Alan Dennis\' 5 Edition of Systems Analysis and Design continues to build upon previous issues with its hands-on approach to systems analysis and design with an even more in-depth focus on the core set of skills that all analysts must possess. Dennis continues to capture the experience of developing and analyzing systems in a way that readers can understand and apply and develop a rich foundation of skills as a systems analyst.', 2012, 'Systems Analysis and Design', 592, 'Alan Dennis', 'Wiley', '9781118057629', '40.00', 'media/covers/Computer Science/CIS130.jpg'),
(23, 'Introduction to Database Design and SQL 2nd Edition', 'Introduction to SQL provides step-by-step instructions with plenty of graphics and examples to help students grasp the material and gain the skills needed for database-related employment. Students have access to a full human resources database that can be downloaded from the author\'s website. This database is referenced throughout the examples and end of chapter exercises to give readers hands-on experience as they work through the content.', 2019, 'Database', 284, 'Louis S. Sapia', 'Kendall Hunt Publishing', '9781792410864', '50.00', 'media/covers/Computer Science/CIS135.jpg'),
(24, 'Operating System Concepts 10th Edition', 'The tenth edition of Operating System Concepts has been revised to keep it fresh and up-to-date with contemporary examples of how operating systems function, as well as enhanced interactive elements to improve learning and the student\'s experience with the material. It combines instruction on concepts with real-world applications so that students can understand the practical usage of the content. End-of-chapter problems, exercises, review questions, and programming exercises help to further rein', 2021, 'Operating Systems', 1040, 'Abraham Silberschatz, Greg Gagne, Peter B. Galvin', 'Wiley', '9781119800361', '70.00', 'media/covers/Computer Science/CIS233.jpg'),
(25, 'A+ Guide to PC Hardware Maintenance & Repair 1st Edition', 'This manual serves equally well as a teaching guide for CompTIA\'s A+ Core Hardware Exam and as a useful general reference for the PC hardware technician. A thorough guide, it examines the basic components of computer hardware systems, as well as upgrading and troubleshooting computers. An easy-to-read approach is applied to the discussions of each primary component so that readers learn how each component functions, along with the key installation and troubleshooting tips related to that compone', 2004, 'Computer Engineering', 688, 'Michael Graves', 'Cengage Learning', '9781401852306', '20.00', 'media/covers/Computer Science/CIS240.jpg'),
(26, 'ADTs, Data Structures, and Problem Solving with C++ 2nd Edition', 'Reflecting the newest trends in computer science, new and revised material throughout the Second Edition of this book places increased emphasis on abstract data types (ADTs) and object-oriented design. This book continues to offer a thorough, well-organized, and up-to-date presentation of essential principles and practices in data structures using C++. Topics include C++\'s I/O and string classes, pointers and dynamic allocation, lists, array-based and linked-list implementations of stacks, queue', 2004, 'Computer Science', 1072, 'Larry R. Nyhoff', 'Prentice Hall', '9780131409095', '70.00', 'media/covers/Computer Science/CIS261.jpg'),
(27, 'Introduction to Java Programming, Brief Version, Global Edition', 'This text is intended for a 1-semester CS1 course sequence. The Brief Version contains the first 18 chapters of the Comprehensive Version. The first 13 chapters are appropriate for preparing for the AP Computer Science exam. For courses in Java Programming. A fundamentals-first introduction to basic programming concepts and techniques Designed to support an introductory programming course, Introduction to Java Programming and Data Structures, Brief Version teaches concepts of problem-solving and', 2018, 'Computer Programming', 1711, 'Daniel Y. Liang', 'Pearson', '9781292222035', '80.00', 'media/covers/Computer Science/CIS283.jpg'),
(28, 'Python GUI Programming with Tkinter: Design and build functional and user-friendly GUI applications, 2nd Edition', 'Python GUI Programming with Tkinter, Second Edition, will not only provide you with a working knowledge of the Tkinter GUI library, but also a valuable set of skills that will enable you to plan, implement, and maintain larger applications. You\'ll build a full-blown data entry application from scratch, learning how to grow and improve your code in response to continually changing user and business needs.', 2021, 'Computer Programming', 664, 'Alan D. Moore', 'Packt Publishing', '9781801815925', '50.00', 'media/covers/Computer Science/CIS284.jpg'),
(29, 'Web Development and Design Foundations with HTML5 (What\'s New in Computer Science) 9th Edition', 'Web Development and Design Foundations with HTML5 introduces HTML and CSS topics such as text configuration, color configuration, and page layout, with an enhanced focus on the topics of design, accessibility, and Web standards. The text relates both the necessary hard skills (such as HTML5, CSS, and JavaScript) and soft skills (design, e-commerce, and promotion strategies) considered fundamental to contemporary web development.', 2018, 'Computer Programming', 720, 'Terry Felke-Morris', 'Pearson', '9780134801148', '60.00', 'media/covers/Computer Science/CIS286.jpg'),
(30, 'NativeScript for Angular Mobile Development: Creating dynamic mobile apps for iOS and Android', 'This book focuses on the key concepts that you will need to know to build a NativeScript for Angular mobile app for iOS and Android. We’ll build a fun multitrack recording studio app, touching on powerful key concepts from both technologies that you may need to know when you start building an app of your own. The structure of the book takes the reader from a void to a deployed app on both the App Store and Google Play, serving as a reference guide and valuable tips/tricks handbook.', 2017, 'Computer Programming', 392, 'Nathan Walker, Nathanael J. Anderson', 'Packt Publishing', '9781787125766', '50.00', 'media/covers/Computer Science/CIS288.jpg'),
(31, 'Introduction to Networks: Companion Guide (Cisco Networking Academy) 1st Edition', 'Introduction to Networks Companion Guide is the official supplemental textbook for the Introduction to Networks course in the Cisco® Networking Academy® CCNA® Routing and Switching curriculum.', 2013, 'Computer Networking', 681, 'Cisco Press', 'Cisco Systems', '9781587133169', '60.00', 'media/covers/Computer Science/CNT135.jpg'),
(32, 'Routing and Switching Essentials Companion Guide 1st Edition', 'Routing and Switching Essentials Companion Guide is the official supplemental textbook for the Routing and Switching Essentials course in the Cisco® Networking Academy® CCNA® Routing and Switching curriculum.', 2014, 'Computer Networking', 815, 'Cisco Networking Academy', 'Cisco Systems', '9781587133183', '30.00', 'media/covers/Computer Science/CNT225.jpg'),
(33, 'Designing for Cisco Network Service Architectures (ARCH) Foundation Learning Guide: CCDP ARCH 300-320 (4thEdition) (Foundation Learning Guides) 4th Ed', 'Designing for Cisco Network Service Architectures (ARCH) Foundation Learning Guide , Fourth Edition, is a Cisco-authorized, self-paced learning tool for CCDP foundation learning. This book provides you with the knowledge needed to perform the conceptual, intermediate, and detailed design of a network infrastructure that supports desired network solutions over intelligent network services to achieve effective performance, scalability, and availability.', 2016, 'Computer Networking', 944, 'Marwan Al-shawi, Andre Laurent', 'Cisco Press', '9781587144622', '60.00', 'media/covers/Computer Science/CNT235.jpg'),
(34, 'Cisco Unified Computing System (UCS) (Data Center): A Complete Reference Guide to the Cisco Data Center Virtualization Server Architecture (Networking', 'With its new Unified Computing System (UCS) family of products, Cisco has introduced a fundamentally new vision for data center computing: one that reduces ownership cost, improves agility, and radically simplifies management. In this book, three Cisco insiders thoroughly explain UCS, and offer practical insights for IT professionals and decision-makers who are evaluating or implementing it.', 2010, 'Computer Networking', 400, 'Silvano Gai, Tommi Salli, Roger Andersson', 'Cisco Press', '9781587141935', '20.00', 'media/covers/Computer Science/CNT250.jpg'),
(35, 'Precalculus 8th Edition', 'The Eighth Edition of this highly dependable book retains its best features–accuracy, precision, depth, and abundant exercise sets–while substantially updating its content and pedagogy. Striving to teach mathematics as a way of life, Sullivan provides understandable, realistic applications that are consistent with the abilities of most readers. Chapter topics include Graphs; Polynomial and Rational Functions; Trigonometric Functions; Analytic Trigonometry; Analytic Geometry; Counting and Probabi', 2007, 'Mathematics', 1152, 'Michael Sullivan', 'Pearson Prentice Hall', '9780136152675', '50.00', 'media/covers/Math and Science/MTH140.jpg'),
(36, 'Thomas\' Calculus 12th Edition', 'Thomas’ Calculus, Twelfth Edition, helps your students successfully generalize and apply the key ideas of calculus through clear and precise explanations, clean design, thoughtfully chosen examples, and superior exercise sets.', 2009, 'Mathematics', 1152, 'George B. Thomas, Maurice D. Weir, Joel R. Hass, F', 'Pearson Global Edition', '9780321643636', '50.00', 'media/covers/Math and Science/MTH260.jpg'),
(37, 'A concise course in Advanced Level Statistics 4th Edition with worked examples', 'This best-selling book remains the most popular stand-alone text for Advanced Level Statistics. It covers the AS and A2 specifications in Statistics for Advanced Level Maths across all boards. Over 300 worked examples. Advice on how to break down calculations into easy stages. Extensive exercises including real exam questions for practice and exam preparation. End of chapter summaries for consolidation and revision.', 2014, 'Mathematics', 704, 'J. Crawshaw and J. Chambers', 'Nelson Thornes', '9780748754755', '50.00', 'media/covers/Math and Science/MTH246.jpg'),
(38, 'Sears and Zemansky\'s University Physics with Modern Physics 13th Ed.', 'University Physics with Modern Physics , Thirteenth Edition continues to set the benchmark for clarity and rigor combined with effective teaching and research-based innovation.', 2011, 'Physics', 1600, 'Young and Freedman', 'Addison-Wesley', '9780321696861', '60.00', 'media/covers/Math and Science/PHY236.jpg'),
(39, 'Introduction to the Thermodynamics of Materials 6th Edition', 'Maintaining the substance that made Introduction to the Thermodynamic of Materials a perennial best seller for decades, this Sixth Edition is updated to reflect the broadening field of materials science and engineering. The new edition is reorganized into three major sections to align the book for practical coursework, with the first (Thermodynamic Principles) and second (Phase Equilibria) sections aimed at use in a one semester undergraduate course.', 2017, 'Physics', 694, 'David R. Gaskell, David E. Laughlin', 'CRC Press', '9781498757003', '50.00', 'media/covers/Math and Science/PHY130.jpg'),
(40, 'Graphic Design Fundamentals: An Introduction & Workbook for Beginners', 'This book will cover the fundamental principles and ideas you should know in a concise and easy to digest way! From colors to layouts to fonts and so much more, you will get an introduction as well as illustrations for everything!', 2022, 'Graphic Design', 90, 'Kris Taft Miller', 'KT Design, LLC', '9781737820635', '30.00', 'media/covers/Humanities and Education/CGD118.jpg'),
(41, 'Design for Communication: Conceptual Graphic Design Basics 1st Edition', 'Design for Communication offers a unique approach to mastering the basic design principles, conceptual problem-solving methods, and critical-thinking skills that distinguish graphic designers from desktop technicians.', 2003, 'Graphic Design', 264, 'Elizabeth Resnick', 'Wiley', '9780471418290', '30.00', 'media/covers/Humanities and Education/CGD217.jpg'),
(42, 'The Business of Digital Publishing: An Introduction to the Digital Book and Journal Industries 2nd Edition', 'Thoroughly revised and updated throughout, the second edition of The Business of Digital Publishing provides an essential introduction to the development of digital products in the book and journal industries today.', 2022, 'Graphic Design', 260, 'Frania Hall', 'Routledge', '9781138390584', '40.00', 'media/covers/Humanities and Education/CGD220.jpg'),
(43, 'Computer Animation: Algorithms and Techniques 3rd Edition', 'Driven by demand from the entertainment industry for better and more realistic animation, technology continues to evolve and improve. The algorithms and techniques behind this technology are the foundation of this comprehensive book, which is written to teach you the fundamentals of animation programming.', 2012, 'Animation', 542, 'Rick Parent Ph.D.', 'Morgan Kaufmann', '9780124158429', '50.00', 'media/covers/Humanities and Education/CGD226.jpg'),
(44, 'The Art of Script Editing: A Practical Guide to Script Development (Creative Essentials)', 'Very little has been written about the contribution that script editors make to the industry, yet they are an essential part of film and television script development. The Art of Script Editing provides a comprehensive overview of this vital role, examining its responsibilities and functions during all stages of the development process, both in film and television. A valuable resource for anyone developing a script no matter where they are in the process.', 2015, 'Video Production', 192, 'Karol Griffiths', 'Creative Essentials', '9781843445074', '20.00', 'media/covers/Humanities and Education/CGD230.jpg'),
(45, 'Digital Photography Complete Course: Learn Everything You Need to Know in 20 Weeks (DK Complete Courses)', 'Introducing Digital Photography Complete Course - the perfect beginner’s learning program for any aspiring photographer, this photography book aims to teach you everything you need to know about photography in just 20 weeks, through easy-to-understand tutorials.', 2015, 'Photography', 360, 'David Taylor', 'DK', '9781465436078', '30.00', 'media/covers/Humanities and Education/CGD255.jpg'),
(46, 'Your Child\'s Growing Mind/Abnormal Child & Adolescent Psychology', 'The classic guide to understanding children’s mental development is now updated and better than ever!', 2004, 'Education', 432, 'Jane Healy, Jean Dumas & Wendy Nilsen', 'Pearson Education, Inc. Boston', '9780767916158', '10.00', 'media/covers/Humanities and Education/EDU111.jpg'),
(47, 'School: An Introduction to Education 3rd Edition', 'Learn what it takes to be an effective professional teacher with SCHOOL: AN INTRODUCTION TO EDUCATION, Third Edition. Standards developed by the Interstate Teacher Assessment and Support Consortium (InTASC) state that teachers are expected to be reflective, knowledgeable, highly skilled, and creative professionals who are lifelong learners.', 2013, 'Education', 544, 'Edward S. Ebert, Richard C. Culyer', 'Cengage Learning', '9781133600466', '40.00', 'media/covers/Humanities and Education/EDU112.jpg'),
(48, 'Methods for Effective Teaching: Meeting the Needs of All Students (5th Edition)', 'The fifth edition of Methods for Effective Teaching provides research-based coverage of K-12 general teaching methods while uniquely emphasizing today’s contemporary issues such as promoting student understanding, creating a learning community, and differentiating instruction. Accessible and reader-friendly, this book is the perfect combination of sound teaching methods and cutting edge content. The teaching strategies presented here will help teachers to be effective in meeting the needs of all', 2009, 'Education', 400, 'Edward S. Ebert, Richard C. Culyer', 'Pearson', '9780137008049', '10.00', 'media/covers/Humanities and Education/EDU115.jpg'),
(49, 'The Essentials of Teaching Physical Education: Curriculum, Instruction, and Assessment Second Edition', 'The Essentials of Teaching Physical Education, Second Edition, offers what every future physical educator wants: the opportunity to hit the ground running on day one of their career, ready to deliver an effective program.', 2021, 'Education', 264, 'Stephen A. Mitchell', 'Human Kinetics', '9781492598923', '50.00', 'media/covers/Humanities and Education/EDU120.jpg'),
(50, 'Teaching Integrated Arts in the Primary School: Dance, Drama, Music, and the Visual Arts (Crabapples)', 'This book reasserts the place of the arts - dance, drama, music and the visual arts - in the primary school curriculum at Reception and Key Stages 1 and 2. It acknowledges the time constraints in a crowded curriculum and stresses a common developmental approach to the different forms of creative and aesthetic expression.', 2000, 'Education', 164, 'Anne Bloomfield, John Childs', 'David Fulton Publishers', '9781853466601', '50.00', 'media/covers/Humanities and Education/EDU133.jpg'),
(51, 'Classroom Management for Elementary Teachers (7th Edition)', 'Describes principles for planning and organizing an elementary classroom, discusses communications skills, and tells how to solve behavior problems.', 2005, 'Education', 264, 'C. Everton ETAL', 'Pearson Merrill', '9780205578627', '10.00', 'media/covers/Humanities and Education/EDU210.jpg'),
(52, 'Health & Family Life Education Teacher\'s Book', 'Health and Family Life Education attempts to meet some of the challenges facing Caribbean societies today, including the HIV and AIDS epidemic, rising levels of violence, health and environmental problems. HIV in the Caribbean is increasing at a rate second only to sub-Saharan Africa and HFLE can be a major vehicle for preventive education in schools.', 2005, 'Education', 200, 'Clare Eastland', 'Macmillan Education', '9780230026056', '25.00', 'media/covers/Humanities and Education/EDU225.jpg'),
(53, 'Languages and Children--Making the Match: New Languages for Young Learners, Grades K-8 (3rd Edition)', 'Provides the rationale, strategies and activities for developing early language literacy, helping teachers make the connection between first and second language literacy and encouraging them to integrate the written word even at early points in language development. Offers strategies for interpersonal, interpretive, and presentational modes of communication as well as helpful ideas about classroom activities, assessment, and thematic planning that will revitalize their teaching.', 2005, 'Education', 528, 'Curtain, Helena & Dahlberg, Carol A.', 'Allyn & Bacon', '9780205366750', '35.00', 'media/covers/Humanities and Education/EDU230.jpg'),
(54, 'Teaching Children Science: A Discovery Approach 6th Edition', 'Teaching Children Science: A Discovery Approach encompasses everything pre-service elementary educators need to learn to effectively teach science to their students. Written in a clear, motivating style, this text helps aspiring elementary teachers become leaders who can inspire young children to experience science through the joys and challenges of inquiry and discovery. Additionally, six chapters devoted specifically to content knowledge in the areas of earth/space, life, and physical sciences', 2018, 'Education', 368, 'Abruscato, J.', 'Pearson Education, Inc. Boston', '9780205463640', '65.00', 'media/covers/Humanities and Education/EDU232.jpg'),
(55, 'Social Studies for Elementary School Classrooms: Preparing Children to be Global Citizens 3rd Edition', 'Based on the principle that the fundamental purpose of social studies should be the development of reflective, competent, and concerned global citizens, Social Studies for Elementary School Classrooms matches solid social studies teaching aids with examples of applications in real K-6 classrooms.', 2001, 'Education', 437, 'Peter H. Martorella, Candy Beal', 'Pearson College Div', '9780130937384', '10.00', 'media/covers/Humanities and Education/EDU234.jpg'),
(56, 'Elementary and Middle School Mathematics: Teaching Developmentally', 'Elementary and Middle School Mathematics: Teaching Developmentally illustrates how children learn mathematics, and then shows pre-service teachers the most effective methods of teaching PreK-8 math through hands-on, problem-based activities.', 2018, 'Education', 720, 'John A. Van de Walle et al.', 'Pearson Allyn & Bacon', '9780136101420', '50.00', 'media/covers/Humanities and Education/EDU238.jpg'),
(57, 'The Taming of the Shrew', 'The authoritative edition of The Taming of the Shrew from The Folger Shakespeare Library, is the trusted and widely used Shakespeare series for students and general readers.', 2004, 'Literature', 304, 'William Shakespeare', 'Penguin Classics', '9780140714258', '5.00', 'media/covers/Humanities and Education/LIT253.jpg'),
(58, 'Purple Hibiscus: A Novel', 'Purple Hibiscus is an exquisite novel about the emotional turmoil of adolescence, the powerful bonds of family, and the bright promise of freedom.', 2012, 'Literature', 336, 'Chimamanda Ngozi Adichie', 'Algonquin Books', '9781616202415', '10.00', NULL),
(59, 'Modern American and British Poetry (Classic Reprint)', 'This book is a reproduction of an important historical work. Forgotten Books uses state-of-the-art technology to digitally reconstruct the work, preserving the original format whilst repairing imperfections present in the aged copy.', 2018, 'Literature', 403, 'Louis Untermeyer', 'Forgotten Books', '9780331035834', '30.00', NULL),
(60, 'Wuthering Heights', 'Wuthering Heights is a wild, passionate story of the intense and almost demonic love between Catherine Earnshaw and Heathcliff, a foundling adopted by Catherine\'s father. After Mr Earnshaw\'s death, Heathcliff is bullied and humiliated by Catherine\'s brother Hindley and wrongly believing that his love for Catherine is not reciprocated, leaves Wuthering Heights, only to return years later as a wealthy and polished man. He proceeds to exact a terrible revenge for his former miseries. The action of ', 1997, 'Literature', 272, 'Bronte, Emily', 'Wordsworth Editions Ltd', '9780486292564', '10.00', NULL),
(61, 'Brown Girl, Brownstones', 'Purple Hibiscus is an exquisite novel about the emotional turmoil of adolescence, the powerful bonds of family, and the bright promise of freedom.', 2012, 'Literature', 318, 'Marshale, Paule', 'Martino Fine Books', '9780486468327', '10.00', NULL),
(62, 'Antony and Cleopatra', 'A magnificent drama of love and war, this riveting tragedy presents one of Shakespeare\'s greatest female characters—the seductive, cunning Egyptian queen Cleopatra. The Roman leader Mark Antony, a virtual prisoner of his passion for her, is a man torn between pleasure and virtue, between sensual indolence and duty . . . between an empire and love. Bold, rich, and splendid in its setting and emotions, Antony And Cleopatra ranks among Shakespeare\'s supreme achievements.', 1988, 'Literature', 186, 'William Shakespeare', 'Bantam Books', '9781904271017', '7.00', NULL),
(63, 'A Raisin in the Sun', 'This edition presents the fully restored, uncut version of Hansberry\'s landmark work with an introduction by Robert Nemiroff.', 2004, 'Literature', 151, 'William Shakespeare', 'Vintage', '9780679755333', '9.00', NULL),
(64, 'Gardening in the Tropics', 'Gardening in the Tropics contains a rich Caribbean world in poems offered to readers everywhere. Olive Senior\'s rich vein of humour can turn wry and then sharp in satire of color-consciousness, class-consciousness and racism. But her predominant tone is the verbal equivalent of a pair of wide-open arms. Praise for Olive Senior\'s work \"The thing that immediately strikes one is her control of tone — like a singer having perfect pitch.\" — E.A. Markham. ', 2009, 'Literature', 140, 'Senior, Olive', 'Canada: Insomniac Press', '9781897178003', '10.00', NULL),
(65, 'The House of the Seven Gables', 'First published in 1851, The House of the Seven Gables is one of Hawthorne\'s defining works, a vivid depiction of American life and values replete with brilliantly etched characters. The tale of a cursed house with a \"mysterious and terrible past\" and the generations linked to it, Hawthorne\'s chronicle of the Maule and Pyncheon families over two centuries reveals, in Mary Oliver\'s words, \"lives caught in the common fire of history.\"', 2001, 'Literature', 336, 'Nathaniel Hawthorne', 'Oxford University Press', '9780192826787', '12.00', NULL),
(66, 'Foundations of Drawing: A Practical Guide to Art History, Tools, Techniques, and Styles', 'Foundations of Drawing is a comprehensive and authoritative overview of the history, aesthetics, methods, and materials of the drawing medium. Throughout, clearly defined demonstrations provide easy access to the practice of drawing as well as the history and development of core drawing techniques. Richly illustrated, the book contains reproductions of the finest master drawings from the fifteenth century to the present. Unlike other drawing instruction books that focus on step-by-step lessons e', 2017, 'Art', 224, 'Al Gury', 'Watson-Guptill', '9780307987181', '15.00', 'media/covers/Humanities and Education/ART105.jpg'),
(67, 'Foundations of Art and Design 2nd Edition', 'Packed with hundreds of examples of classic and contemporary art, FOUNDATIONS OF ART AND DESIGN, 2E delivers a comprehensive guide to basic design that provides the ideal foundation to design principles. Appealing to readers at every ability level, the text\'s logical and structured organization moves from micro to macro topics, enabling learners to build on ideas and concepts of design and better understand the material.', 2014, 'Art', 336, 'Lois Fichner-Rathus', 'Cengage Learning', '9781285456546', '60.00', 'media/covers/Humanities and Education/ART110.jpg'),
(68, 'The Art and Science of Drawing: Learn to Observe, Analyze, and Draw Any Subject', 'Taking the reader through the entire process, beginning with the most basic skills to more advanced such as volumetric drawing, shading, and figure sketching, this book contains numerous projects and guidance on what and how to practice. It also features instructional images and diagrams as well as finished drawings that showcase Brent’s creative work. With this book and a dedication to practice, anyone can learn to draw!', 2021, 'Art', 224, 'Brent Eviston', 'Rocky Nook', '9781681987750', '30.00', 'media/covers/Humanities and Education/ART113.jpg'),
(69, 'How to Read Paintings: Western art explored through a close-reading of painted masterpieces (Looking at Art)', 'From works by Raphael to Monet, this wide-ranging book will introduce you to a selection of popular paintings and teach you how to understand their meaning. Along the way, the author provides the basic criteria to consider when looking at works of art, giving you a new perspective on art history.', 2022, 'Art', 87, 'Christopher P. Jones', 'Independently Published', '9798438964742', '15.00', 'media/covers/Humanities and Education/ART114.jpg'),
(70, 'Art Matters: A Contemporary Approach to Art Appreciation', 'Art Matters introduces students to the wide range of art that is around them. Featuring an enormous assortment of types of art that diverse artists have created for different people around the world, it demonstrates how pervasive and critical art is in our lives--from the emojis we text, to the furniture we sit on, to the buildings we live in, to the photographs we see.', 2019, 'Art', 672, 'Pamela Gordon', 'Oxford University Press', '9780199946518', '50.00', 'media/covers/Humanities and Education/ART118.jpg'),
(71, 'Sculpture: Materials, Techniques, Styles, and Practice (Britannica\'s Practical Guide to the Arts)', 'Looking at a work of art, like listening to music, becomes a rewarding experience only if the senses are alert to the qualities of the work and to the artist’s purpose that brought them into being. The language of sculpture must be learned. In this in-depth study, readers examine the materials, tools, methods, styles, and practices that are involved in sculpting and many of the techniques that have been used by accomplished artists who have contributed to sculpture as a fine art, from the marble', 2016, 'Art', 200, 'Cleo Kuhtz', 'Britannica Educational Pub', '9781680483758', '40.00', 'media/covers/Humanities and Education/ART221.jpg'),
(72, 'Mastering Hand Building: Techniques, Tips, and Tricks for Slabs, Coils, and More (Mastering Ceramics)', 'The Mastering Ceramics series is for artists who never stop learning. With compelling projects, expert insight, step-by-step photos, and galleries of work from today’s top artists, these books are the perfect studio companions.', 2018, 'Art', 208, 'Sunshine Cobb', 'Voyageur Press', '9780760352731', '30.00', 'media/covers/Humanities and Education/ART222.jpg'),
(73, 'The Visual Arts: A History', 'Hailed as the most up-to-date and comprehensive survey published in a single volume, this new revised edition is an authoritative and enlightened account of the history of art. It presents art history as an essential part of the development of humankind, encompassing the arts of Asia, Africa, Oceania, Europe, and the Americas-spanning from the primitive art of hunters 30,000 years ago to the most controversial art forms of today. The text is beautifully and generously illustrated with over 1,400', 2009, 'Art', 1004, 'Hugh Honour, John Fleming', 'Pearson', '9780205665358', '50.00', 'media/covers/Humanities and Education/ART245.jpg'),
(74, 'The Ensemble Musician; Six Principles for a More Rewarding Life in Music', 'In this practical guidebook, authors Robin Fountain and Thomas E. Verrier empower musicians to get the most out of their ensemble experience, exploring six concepts developed over years observing and interviewing musicians from one of the world s finest ensembles: The Berlin Philharmonic Orchestra.', 2020, 'Music', 92, 'Tom Verrier, Robin Fountain', 'Gia Publications', '9781622774418', '15.00', 'media/covers/Humanities and Education/MUEN201.jpg'),
(75, 'What You Need to Know Before you Learn Music Theory: A practical book that is taught via the piano and is applicable to all instruments', 'This self-guided, play along course is for the absolute beginner, intermediate and advanced student. It is taught via the piano, but the theory and concepts are applicable to all instruments. Included is a free Music History eBook, printable diagrams, charts, and embedded audio files.', 2023, 'Music', 113, 'Eric Fine', 'Hat Publications', '9798987985618', '15.00', 'media/covers/Humanities and Education/MUGN200.jpg'),
(76, 'Belizean Music: Punta Rock, Music of Belize, Land of the Free, Garifuna Music, Lebeha Drumming Center, Brukdown', 'Chapters: Punta rock, Music of Belize, Land of the Free, Garifuna music, Lebeha Drumming Center, Brukdown, . Source: Wikipedia. Pages: 32. Not illustrated. Free updates online.', 2010, 'Music', 200, 'LLC Books', 'Books LLC', '9781156008782', '25.00', 'media/covers/Humanities and Education/MUHL106.jpg'),
(77, 'Exploring Music Literature: Text and Anthology 1st Edition', 'EXPLORING MUSIC LITERATURE, a comprehensive introductory package, takes the student through the basic genres of music, including early music; keyboard music; song; chamber music; orchestral music; opera; and choral music. Within each genre chapter, the author has selected representative works for thorough analysis.', 1999, 'Music', 688, 'Michael Fink', 'Cengage Learning', '9780028648446', '50.00', 'media/covers/Humanities and Education/MUHL201.jpg'),
(78, 'Ludwig Van Beethoven Complete Piano Sonatas Volume 1 (Nos. 1-15)', 'This edition will be welcomed by all pianists, both professional and amateur, for its accuracy and reliability; it is highly desirable for instruction, study, reference, and enjoyment.', 1975, 'Music', 296, 'Ludwig van Beethoven', 'Dover Publications', '9780486231341', '30.00', 'media/covers/Humanities and Education/MUPC110.jpg'),
(79, 'Ludwig Van Beethoven Complete Piano Sonatas Volume 2 (Nos. 16-32)', 'Volume Two contains the seventeen sonatas from Beethoven\'s second and third periods, including the Waldstein, the Appassionata, and the Hammerklavier', 1975, 'Music', 336, 'Ludwig van Beethoven', 'Dover Publications', '9780486231358', '30.00', 'media/covers/Humanities and Education/MUPC111.jpg'),
(80, 'Basic Musicianship: Workbook and Text', 'Covers the basics, how to read notes on the staff, intervals, major and minor scales, key signatures, triads, inversions, basic rhythms and song forms, chord charts and lead sheets. Designed for complete beginners regardless of instrument. It\'s the same text I use in my Basic Musicianship courses. If you\'re looking to prep for a jazz/commercial college program and have no experience in music theory this will get you on the right track. All explanations are simple and to the point. Also great for', 2017, 'Music', 200, 'Bill Farrish', 'CreateSpace Independent Publishing Platform', '9781548100933', '30.00', 'media/covers/Humanities and Education/MUTH100.jpg'),
(81, 'Music Elements: Music Theory, Songwriting, Lyrics & Creativity Explained', 'It\'s time to embrace your inner artist, make your own rules and start creating like never before. Whether you\'re just starting out as a songwriter or are a more experienced one looking for a new perspective then this book will help you.', 2019, 'Music', 192, 'Tommy Swindal', 'Independently Published', '9781072110354', '15.00', 'media/covers/Humanities and Education/MUTH101.jpg'),
(82, 'Alfred\'s Essentials of Music Theory: A Complete Self-Study Course for All Musicians', 'This practical, easy-to-use, self-study course is perfect for pianists, guitarists, instrumentalists, vocalists, songwriters, arrangers and composers, and includes ear training CDs to help develop your musical ear. In this all-in-one theory course, you will learn the essentials of music through 75 concise lessons, practice your music reading and writing skills in the exercises, improve your listening skills with the enclosed ear training CDs, and test your knowledge with a review that completes ', 2004, 'Music', 152, 'Andrew Surmani, Karen Farnum Surmani, Morton Manus', 'Alfred Music', '9780739036358', '40.00', 'media/covers/Humanities and Education/MUTH201.jpg'),
(83, 'Biology: Concepts and Connections', 'This bestselling textbook is designed to help students stay focused with its hallmark modular organization around central concepts and engages students in connections between concepts and the world outside of the classroom with Scientific Thinking, Evolution Connection and Connection essays in every chapter.', 2017, 'Biology', 928, 'Campbell, et al', 'Pearson', '9780321526502', '50.00', 'media/covers/Math and Science/CHE140.jpg'),
(84, 'Human Health and Disease', 'Human Health and Disease is part of the Cambridge Modular Sciences series, developed in collaboration with the University of Cambridge Local Examinations Syndicate to support its A and AS level modular syllabuses. The books in the series can also be used with other syllabuses. Human Health and Disease studies the various factors related to health and disease in a global context.The effects on health of diet, exercise and drugs are discussed. Infectious diseases and the immune system are also stu', 1997, 'Biology', 112, 'Fosbery, R.', 'Cambridge Modular Sciences', '9780521421591', '30.00', 'media/covers/Math and Science/BIO242.jpg'),
(85, 'Chemistry- The Central Science', 'Unrivaled problem sets, notable scientific accuracy and currency, and remarkable clarity have made Chemistry: The Central Science the leading general chemistry text for more than a decade. Trusted, innovative, and calibrated, the text increases conceptual understanding and leads to greater student success in general chemistry by building on the expertise of the dynamic author team of leading researchers and award-winning teachers.', 2017, 'Chemistry', 1248, 'Brown-Lemay-Burnstein', 'Prentice Hall', '9780136006176', '50.00', 'media/covers/Math and Science/CHE129.jpg');
INSERT INTO `books` (`id`, `title`, `description`, `year`, `category`, `page_count`, `author`, `publisher`, `isbn`, `price`, `cover`) VALUES
(86, 'Organic Chemistry', 'The Ninth Edition of Organic Chemistry continues Solomons-Fryhle\'s tradition of excellence in teaching and preparing students for success in the organic classroom and beyond.Students are often overwhelmed by the early rigors of organic chemistry. Solomons-Fryhle prepares students for these early rigors by introducing acids & bases--topics they know from general chemistry--early, followed by chapters on structure and stereochemistry. Next, a discussion of ionic reactions gives students a foundati', 2007, 'Chemistry', 1280, 'T.W. Graham Solomons, Craig B. Fryhle', 'John Wiley and Sons, Inc.', '9780471684961', '30.00', 'media/covers/Math and Science/CHE136.jpg'),
(87, 'ANALYTICAL CHEMISTRY: A Fundamental Approach To Modern Separation Techniques', 'This book is an essential resource for anyone looking for an in-depth examination of the field. With its comprehensive coverage of topics, and clear explanations, it is an invaluable resource for both students and professionals.', 2022, 'Chemistry', 420, 'Stanley Chris (Ph.D)', 'Independently Published', '9798846499317', '30.00', 'media/covers/Math and Science/CHE230.jpg'),
(88, 'Organic Chemistry 6th Edition', 'Organic Chemistry continues to breathe new life into the organic chemistry world. This new sixth edition retains its popular delivery of organic chemistry content in a student-friendly format. Janice Smith draws on her extensive teaching background to deliver organic chemistry in a way in which students learn: with limited use of text paragraphs, and through concisely written bulleted lists and highly detailed, well-labeled “teaching” illustrations. The sixth edition features a modernized look w', 2019, 'Chemistry', 1392, 'Janice Smith', 'McGraw-Hill Education', '9781260565843', '40.00', 'media/covers/Math and Science/CHE234.jpg'),
(89, 'Inorganic Chemistry by Miessler, Gary L., Fischer, Paul J., Tarr, Donald A. (2013) Paperback Pearson New International Edition', 'Fifth Edition delivers the essentials of Inorganic Chemistry at just the right level for today\'s classroom -.. neither too high (for novice students) nor too low (for advanced students) Strong coverage of atomic theory and an emphasis on physical chemistry give students a firm understanding of the theoretical basis of inorganic chemistry. while a reorganized presentation of molecular orbital and group theory highlights key principles more clearly.', 2013, 'Chemistry', 289, 'Gary L. Miessler, Paul J. Fischer, Donal A. Torr', 'Pearson', '9781292020754', '60.00', 'media/covers/Math and Science/CHE239.jpg'),
(90, 'Environmental Science Toward a Sustainable Future 12/e', 'For introductory courses in Environmental Science, Environmental Studies, and Environmental Biology. With dramatically revised illustrations, the Twelfth Edition of Environmental Science: Toward a Sustainable Future is even more student-friendly while retaining the currency and accuracy that has made Wright/Boorse a best seller. The text and media program continue to help you understand the science behind environmental issues and what you can do to build a more sustainable future, with further e', 2014, 'Environmental Science', 279, 'Dorothy Boorse, Richard T. Wright', 'Pearson', '9780321811530', '60.00', 'media/covers/Math and Science/ENS121.jpg'),
(91, 'Physical Geography: A Landscape Appreciation', 'The 12th Edition offers a truly meaningful integration of visualization, technology, and the latest applied science, providing essential opportunities to teach and engage readers in these processes and patterns. Topics that are tied to readers’ real-world concerns such as global environmental change, along with new videos, photography, online lab resources, and updated interactive tools, make it the most effective learning program for physical geography.', 2016, 'Environmental Science', 688, 'McKnight & Hess', 'Pearson', '9780134195421', '60.00', 'media/covers/Math and Science/ENS122.jpg'),
(92, 'Agroforestry for sustainable agriculture (Burleigh Dodds Series in Agricultural Science) Illustrated Edition', 'This volume reviews the latest research on the role and implementation of main types of agroforestry, understanding and assessing the ecosystem services that agroforestry can deliver and techniques for optimizing agroforestry practice. The book\'s main focus is on temperate agroforestry, but also reviews particular issues facing agroforestry in the tropics.', 2019, 'Environmental Science', 542, 'Prof. María Rosa Mosquera-Losada', 'Burleigh Dodds Science Publishing', '9781786762207', '70.00', 'media/covers/Math and Science/ENS212.jpg'),
(93, 'Marine Fisheries Ecology 1st Edition', 'This topical and exciting textbook describes fisheries exploitation, biology, conservation and management, and reflects many recent and important changes in fisheries science. These include growing concerns about the environmental impacts of fisheries, the role of ecological interactions in determining population dynamics, and the incorporation of uncertainty and precautionary principles into management advice.', 2001, 'Environmental Science', 442, 'Simon Jennings, Michel J. Kaiser, John D. Reynolds', 'Blackwell Science', '9780632050987', '40.00', 'media/covers/Math and Science/ENS217.jpg'),
(94, 'The Atlantic World: Europeans, Africans and their Shared History, 1400-1900', 'This comprehensive, cohesively written textbook offers a balanced view of the activity in the Atlantic world. The 40 maps, 60 illustrations, and multiple excerpts from primary documents bring the history to life. Each chapter offers a reading list for those interested in a more in-depth look at the period.', 2009, 'History', 752, 'Benjamin, Thomas', 'Cambridge University Press', '9780521616492', '30.00', 'media/covers/Humanities and Education/HIS161.jpg'),
(95, 'Understanding Belize: A Historical Guide', 'Tiny, island-dotted Belize, perched on the Caribbean, south of Mexico and east of Guatemala, is a fascinating blend of Creole, Mestizo, Maya, Garifuna, English, East Indian, Mennonite, Lebanese and Chinese cultures. With its colonial background (English remains the official language) and a history of fending off its Latin neighbors, Belize has emerged as a relatively stable democracy that is as much Caribbean as it is Central America.', 2006, 'Belizean History', 240, 'Alan Twigg', 'Harbour Publishing', '9781550173253', '25.00', 'media/covers/Humanities and Education/HIS242.jpg'),
(96, 'The Caribbean History Reader', 'The Caribbean History Reader provides a thorough and up-to-date overview of Caribbean history from the pre-Columbian era to the present. It brings together a range of classic and innovative articles and primary sources, to create an introduction to Caribbean political, economic, social and cultural currents, providing an important first reference point to scholars and students alike.', 2012, 'Belizean History', 448, 'Nicola Foote', 'Routledge', '9780415800235', '20.00', 'media/covers/Humanities and Education/HIS252.jpg'),
(97, 'The Penguin History of the U.S.A.', 'This new edition of Brogan\'s superb one-volume history - from early British colonization to the Reagan years - captures an array of dynamic personalities and events. In a broad sweep of America\'s triumphant progress. Brogan explores the period leading to Independence from both the American and the British points of view, touching on permanent features of \'the American character\' - both the good and the bad. He provides a masterly synthesis of all the latest research illustrating America\'s rapid ', 2001, 'History', 752, 'Brogan, Hugh', 'Penguin Books', '9780140252552', '10.00', 'media/covers/Humanities and Education/HIS261.jpg'),
(98, 'Europe between Democracy and Dictatorship, 1900-1945', 'Fischer offers a captivating analysis of Europe’s turbulent history during the first half of the twentieth century, from the optimism at the turn of the century to the successive waves of destruction of the First and Second World Wars.', 2010, 'History', 408, 'Fischer, Conan', 'Wiley-Blackwell', '9780631215127', '30.00', 'media/covers/Humanities and Education/HIS262.jpg'),
(99, 'Sociology for Caribbean Students', 'In this second edition of Sociology for Caribbean Students, author Nasser Mustapha builds on the success of the earlier volume by continuing to demystify the science of Sociology for the introductory student. This text also stays true to the aims of the first edition by incorporating the perspective of the Caribbean and developing societies within the concepts and theories of Sociology. Fully up to date and in line with the requirements of the Caribbean Advanced Proficiency Examination (CAPE®) S', 2013, 'History', 532, 'Nasser Mustapha', 'Ian Randle Publishers', '9789766376277', '40.00', 'media/covers/Social Science/SOC234.jpg'),
(100, 'Introduction to International Relations: Theories and Approaches 6th Edition', 'Introduction to International Relations provides a concise and engaging introduction to the principal international relations theories and, uniquely, explores how theory can be used to analyze contemporary issues. Readers are introduced to the most important theories, encompassing both classical and contemporary approaches and debates.', 2016, 'International Relations', 352, 'Robert Jackson, Georg Sørensen', 'Oxford University Press', '9780198707554', '20.00', 'media/covers/Social Science/GOV200.jpg'),
(101, 'Essential Readings in World Politics', 'Essential Readings in World Politics introduces students to key literature in international relations and provides everything instructors need to round out their syllabus, including classic readings and contemporary articles on ongoing international issues drawn from a wide range of sources and accompanied by headnotes offering the context and background that introductory students need.', 2016, 'Political Science', 712, 'Jack Synder', 'W. W. Norton & Company', '9780393283662', '30.00', 'media/covers/Social Science/GOV115.jpg'),
(102, 'Psychology an introduction 10th Edition', 'College level introductory psychology book.', 2008, 'Psychology', 300, 'Lahey, Benjamin', 'McGraw Hill', '9780073531984', '15.00', 'media/covers/Social Science/PSY115.jpg'),
(103, 'Human Development', 'This long-trusted text features an interdisciplinary, cross-cultural, and contextual perspective on development. Applications to psychology, health care, social work, education, and family dynamics make this a perfect book for classes with a mixed population of majors.', 2011, 'Psychology', 768, 'J.W Vander Zanden', 'McGraw Hill', '9780072825954', '30.00', 'media/covers/Social Science/PSY125.jpg'),
(104, 'Personality Approach: A Student-Centered Approach 2nd edition', 'Personality Psychology: A Student-Centered Approach by Jim McMartin organizes the field of personality psychology around basic questions relevant to the reader’s past, present, and future selves. Answers to the questions are based on findings from up-to-date research and shed light on the validity of personality theories to help students deepen their understanding of their own personalities. Concise, conversational, and easy-to-understand, the Second Edition is enhanced with new chapters, new re', 2016, 'Psychology', 408, 'James(Jim) A. McMartin', 'Sage Publication', '9781483385259', '50.00', 'media/covers/Social Science/PSY135.jpg'),
(105, 'Introduction to Health Psychology 4th Edition', 'This fourth edition retains the highly praised approach of previous editions, with each chapter providing an overview of the theory and research before moving on to explore applications and intervention practice. The primary goals of health psychologists are to describe, predict and then to intervene and this book continues to reflect that process.', 2016, 'Psychology', 680, 'Val Morrison & Paul Bennett', 'Pearson', '9781292003139', '20.00', 'media/covers/Social Science/PSY220.jpg'),
(106, 'Social Psychology 7th Edition', 'This essential study guide has been engaging and educating students on social psychology theories and research for over 34 years.', 2009, 'Psychology', 624, 'Aronson, Elliot; Wilson, Timothy; Akert, Robin', 'Pearson', '9780138144784', '60.00', 'media/covers/Social Science/PSY225.jpg'),
(107, 'Fundamentals of Abnormal Psychology 3rd Edition', 'This text synthesizes theoretical models, research, clinical experiences, therapies, and controversies within the context of social and cultural influences. It weaves the main text, case studies, quotations, critical thinking questions, margin notes, cultural and gender differences, and other important elements into a cohesive narrative that is designed to keep students engaged. Comer encourages students to think critically about the science and study of abnormal psychology. His text also reveal', 2002, 'Psychology', 499, 'R. J. Comer', 'Worth Publishers', '9780716751199', '20.00', 'media/covers/Social Science/PSY230.jpg'),
(108, 'Commonwealth Caribbean Law', 'Effortlessly combining discussions of traditional subjects with those on more innovative subject areas, this book is an exciting exposition of Caribbean law and legal systems for those studying comparative law.', 2008, 'Law', 488, 'Antoine, Rose Marie Belle', 'Routledge-Cavendish', '9781859418536', '40.00', 'media/covers/Social Science/LAW110.jpg'),
(109, 'Introduction to Criminology: Theories, Methods, and Criminal Behavior 10th Edition', 'Introduction to Criminology, Tenth Edition, is a comprehensive introduction to the study of criminology, focusing on the vital core areas of the field―theory, method, and criminal behavior. With more attention to crime typologies than most introductory texts, authors Frank E. Hagan and Leah Elizabeth Daigle investigate all forms of criminal activity, such as organized crime, white collar crime, political crime, and environmental crime. The methods of operation, the effects on society and policy ', 2019, 'Law', 584, 'Frank E. Hagan, Leah E. Daigle', 'SAGE Publications', '9781544339023', '50.00', 'media/covers/Social Science/LAW111.jpg'),
(110, 'Smith and Hogan\'s Criminal Law 14th Edition', 'Celebrating fifty years since it first published in 1965, Smith & Hogan\'s Criminal Law is rightly regarded as the leading doctrinal textbook on criminal law in England and Wales. The book owes its consistent popularity to its accessible style, depth of analysis, and breadth of coverage.', 2015, 'Law', 1316, 'David Ormerod, Karl Laird', 'Oxford University Press', '9780198702313', '5.00', 'media/covers/Social Science/LAW215.jpg'),
(111, 'The Law of Real Property: Property and Land Law', 'Megarry & Wade: The Law of Real Property is an established textbook leading the way in land and property courses. It provides a succinct exposition of all the major topics commonly taught on undergraduate and CPE courses and sets out clearly the legal framework for real property. This edition emphasizes the increasing importance of registered land and considers the impact of the Land Registration Bill 2000 and the Human Rights Act 1998, plus updating all new legislation and Acts with detailed in', 2004, 'Law', 1632, 'Robert Megarry, William Wade', 'Thomson Professional Pub Canada', '9780421474703', '25.00', 'media/covers/Social Science/LAW225.jpg'),
(112, 'The Law of Torts 4th Edition', 'The Law of Torts, Fourth Edition, features: three new chapters on intentional torts that balance strong coverage of negligence: Protecting the Right of Possession: Trespass to Land Dueling Remedies: Trespass to Chattels and Conversion False Imprisonment: Protecting Freedom of Movement coverage that mirrors the content of most Torts courses - intentional torts, negligence, causation, duty, damages, etc.', 2010, 'Law', 696, 'Joseph W. Glannon', 'Aspen Publishers', '9780735588745', '15.00', 'media/covers/Social Science/LAW230.jpg'),
(113, 'Juvenile Justice, Seventh Edition: An Introduction 7th Edition', 'Juvenile Justice: An Introduction is a student-friendly analysis of all aspects of the juvenile justice system. The book covers the history and development of the juvenile justice system and the unique issues related to juveniles, including police interaction, court processes, due process, movements toward diversion and deinstitutionalization, and community intervention.', 2012, 'Law', 496, 'Whitehead and Lab', 'Anderson', '9781455778928', '20.00', 'media/covers/Social Science/CRJ240.jpg'),
(114, 'Corrections in the 21st Century 7th Edition', 'Corrections in the 21st Century uses a practical approach to introduce students to the ideas and practices characteristic of modern corrections while equipping them with the skills necessary to succeed in the field. Its approach to corrections includes a thorough description of correctional ideology, a comprehensive overview of correctional practice, and the development of personal skills applicable to the corrections field.', 2014, 'Law', 640, 'Schmalleger and Smykla', 'McGraw-Hill', '9780078140921', '30.00', 'media/covers/Social Science/CRJ245.jpg'),
(115, 'Mediation: Practice, Policy, and Ethics (Aspen Casebook Series) 3rd Edition', 'Mediation: Practice, Policy, and Ethics provides a comprehensive and current introduction to the world of mediation, including an overview of conflict, perspectives on justice, and dispute resolution processes to handle disputes in a variety of contexts. The book has chapters on negotiation theory and practice, as well as law and policy, case examples, and practice guidelines for mediators and attorney representatives.', 2020, 'Law', 568, 'Carrie J. Menkel-Meadow, Lela Porter-Love', 'Wolters Kluwer', '9781454877561', '40.00', 'media/covers/Social Science/PDV210.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` varchar(7) NOT NULL,
  `title` varchar(100) NOT NULL,
  `credits` tinyint(1) UNSIGNED NOT NULL,
  `department` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL,
  `txtbkid` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `credits`, `department`, `description`, `txtbkid`) VALUES
('ACC101', 'Principles of Accounting I', 3, 'Business', 'Introduces basic accounting principles, financial statements, and the accounting cycle.', 1),
('ACC102', 'Principles of Accounting II', 3, 'Business', 'Covers accounting for partnerships and corporations, financial statement analysis, and cost accounting.', 1),
('ACC205', 'Computer Applications in Accounting', 3, 'Business', 'Introduces computer software used in accounting, including spreadsheet and database applications.', 2),
('ACC215', 'Intermediate Cost & Managerial Accounting I', 3, 'Business', 'Focuses on cost accounting, budgeting, and performance evaluation in business organizations.', 3),
('ACC216', 'Intermediate Cost & Managerial Accounting II', 3, 'Business', 'Covers advanced topics in cost accounting, including cost behavior and cost-volume-profit analysis.', 3),
('ART105', 'Foundations in Drawing', 3, 'Humanities and Education', 'This course provides an introduction to the fundamentals of drawing, including line, form, and perspective.', 66),
('ART110', 'Foundations in Painting', 3, 'Humanities and Education', 'This course covers the basics of painting, including color theory, brushwork, and composition.', 67),
('ART113', 'Drawing', 3, 'Humanities and Education', 'This course focuses on the development of drawing skills, including still life, figure drawing, and landscape drawing.', 68),
('ART114', 'Painting', 3, 'Humanities and Education', 'This course provides an in-depth study of painting techniques, including color mixing, layering, and glazing.', 69),
('ART118', 'Art Appreciation', 3, 'Humanities and Education', 'This course introduces students to the history and theory of art, with a focus on the appreciation and critique of artistic works.', 70),
('ART221', 'Sculpture', 3, 'Humanities and Education', 'This course covers the principles and practices of sculpting, including techniques for working with various materials.', 71),
('ART222', 'Pottery', 3, 'Humanities and Education', 'This course focuses on the creation of ceramic art, including hand-building and wheel-throwing techniques.', 72),
('ART245', 'Art History', 3, 'Humanities and Education', 'This course provides a survey of art history, including the major art movements and styles throughout history.', 73),
('ART255', 'Studio Art', 3, 'Humanities and Education', 'This course is a hands-on studio course that allows students to develop their artistic skills and techniques.', 0),
('BIO131', 'Cellular Biology', 3, 'Math and Science', 'A course that covers the structure and function of cells, including topics such as cell organelles, metabolism, and cellular communication.', 83),
('BIO131L', 'Cellular Biology LAB', 1, 'Math and Science', 'A laboratory course that accompanies Cellular Biology, where students will apply theoretical concepts to practical experiments related to cellular bio', 0),
('BIO231', 'Evolution and Biodiversity', 3, 'Math and Science', 'A course that explores the diversity of life on Earth, including its evolutionary history and ecological relationships between organisms.', 83),
('BIO231L', 'Evolution and Biodiversity LAB', 1, 'Math and Science', 'A laboratory course that accompanies Evolution & Biodiversity, where students will examine the diversity of life through hands-on experimentation and ', 0),
('BIO232', 'Genetics', 3, 'Math and Science', 'A course that covers the principles of inheritance, genetic variation, and molecular genetics.', 83),
('BIO240', 'Plant Physiology and Anatomy', 3, 'Math and Science', 'A course that explores the anatomy and physiology of plants, including their growth, development, and responses to the environment.', 83),
('BIO240L', 'Plant Physiology and Anatomy Lab', 1, 'Math and Science', 'A laboratory course that accompanies Plant Physiology and Anatomy, where students will conduct experiments related to the principles of plant physiolo', 0),
('BIO241', 'Human Anatomy and Physiology', 3, 'Math and Science', 'A course that covers the structure and function of the human body, including the nervous, skeletal, muscular, circulatory, respiratory, digestive, and', 83),
('BIO241L', 'Human Anatomy and Physiology LAB', 1, 'Math and Science', 'A laboratory course that accompanies Human Anatomy & Physiology, where students will examine human anatomical structures and physiological processes t', 0),
('BIO242', 'Human Health and Disease', 3, 'Math and Science', 'A course that examines the causes, mechanisms, and treatments of various diseases that affect humans.', 84),
('BUS105', 'Principles of Management', 3, 'Business', 'Covers basic principles of management, including planning, organizing, leading, and controlling.', 4),
('BUS213', 'Principles of Marketing', 3, 'Business', 'Introduces fundamental concepts of marketing, including market research, product development, and pricing strategies.', 5),
('BUS222', 'Business Law', 3, 'Business', 'Examines legal issues affecting businesses, including contracts, torts, and intellectual property.', 6),
('BUS223', 'Business Finance', 3, 'Business', 'Covers financial management concepts and tools, including time value of money, capital budgeting, and risk analysis.', 7),
('BUS224', 'Business Ethics', 3, 'Business', 'Examines ethical issues and decision-making in business organizations.', 8),
('BUS251', 'Business Communication', 3, 'Business', 'Focuses on effective communication in business settings, including writing, speaking, and nonverbal communication.', 9),
('BUS252', 'Small Business Management', 3, 'Business', 'Covers key topics in managing a small business, including marketing, finance, and operations management.', 10),
('BUS253', 'Business Internship', 1, 'Business', 'Provides practical experience in a business organization.', 0),
('CGD118', 'Graphic Design', 3, 'Humanities and Education', 'This course provides an introduction to the principles and techniques of graphic design, including typography, color theory, and layout.', 40),
('CGD217', 'Design Communication', 3, 'Humanities and Education', 'This course explores the use of visual communication in design, including graphic design, web design, and multimedia design.', 41),
('CGD220', 'Digital Publishing', 3, 'Humanities and Education', 'This course covers the production and distribution of digital content, including e-books, magazines, and other forms of digital publishing.', 42),
('CGD226', 'Imaging and Animation', 3, 'Humanities and Education', 'This course provides an introduction to digital imaging and animation, including the use of software tools for creating and editing visual content.', 43),
('CGD230', 'Script and Video Editing', 3, 'Humanities and Education', 'This course covers the techniques and tools used in video production, including scriptwriting, editing, and post-production.', 44),
('CGD255', 'Digital Photography', 3, 'Humanities and Education', 'This course covers the principles and practices of digital photography, including camera settings, composition, and image editing.', 45),
('CHE123', 'Principles of Chemistry I', 3, 'Math and Science', 'A course that covers the fundamental concepts of chemistry, including atomic structure, chemical bonding, chemical reactions, and stoichiometry.', 85),
('CHE123L', 'Principles of Chemistry I LAB', 1, 'Math and Science', 'A laboratory course that accompanies Principles of Chemistry I, where students will conduct experiments related to the principles of chemistry.', 0),
('CHE129', 'Principles of Chemistry II', 3, 'Math and Science', 'A course that builds on the principles covered in Principles of Chemistry, including topics such as thermodynamics, kinetics, equilibrium, acids and b', 85),
('CHE129L', 'Principles of Chemistry II LAB', 1, 'Math and Science', 'A laboratory course that accompanies Principles of Chemistry II, where students will conduct experiments related to the principles of chemistry covere', 0),
('CHE136', 'Fundamental Organic Chemistry', 3, 'Math and Science', 'A course that covers the principles of organic chemistry, including the structure, properties, and reactions of organic molecules.', 86),
('CHE140', 'Biochemistry', 3, 'Math and Science', 'A course that explores the chemical processes that occur within living organisms, including the structure and function of proteins, carbohydrates, lip', 83),
('CHE140L', 'Biochemistry Lab', 1, 'Math and Science', 'A laboratory course that accompanies Biochemistry, where students will conduct experiments related to the principles of biochemistry.', 0),
('CHE230', 'Analytical Methods in Chemistry', 3, 'Math and Science', 'A course that covers the various techniques and methods used to analyze chemical compounds, including spectroscopy, chromatography, and electrochemist', 87),
('CHE234', 'Organic Chemistry', 3, 'Math and Science', 'A course that builds on the principles covered in Fundamental Organic Chemistry, including topics such as reaction mechanisms, functional groups, and ', 88),
('CHE234L', 'Organic Chemistry Lab', 1, 'Math and Science', 'A laboratory course that accompanies Organic Chemistry, where students will conduct experiments related to the principles of organic chemistry covered', 0),
('CHE239', 'Inorganic Chemistry', 3, 'Math and Science', 'A course that covers the principles of inorganic chemistry, including the structure and reactivity of inorganic compounds and their applications in va', 89),
('CHE239L', 'Inorganic Chemistry Lab', 1, 'Math and Science', 'A laboratory course that accompanies Inorganic Chemistry, where students will conduct experiments related to the principles of inorganic chemistry cov', 0),
('CIS120', 'Business Information Systems', 3, 'Computer Science', 'The course may cover topics such as the role of information systems in supporting business operations, data management, information security, e-commer', 20),
('CIS125', 'Principles of Programming I', 3, 'Computer Science', 'Introduces basic concepts and programming techniques using a high-level programming language.', 21),
('CIS126', 'Principles of Programming II', 3, 'Computer Science', 'Covers advanced programming concepts, data structures, and algorithms.', 21),
('CIS130', 'Systems Analysis and Design', 3, 'Computer Science', 'Focuses on the process of analyzing and designing information systems for business organizations.', 22),
('CIS135', 'Introduction to Database Design using SQL', 3, 'Computer Science', 'Introduces database design concepts and SQL programming language.', 23),
('CIS233', 'Operating Systems', 3, 'Computer Science', 'Covers fundamental concepts and features of computer operating systems.', 24),
('CIS240', 'Data Structures', 3, 'Computer Science', 'Focuses on advanced data structures and algorithms used in computer science.', 26),
('CIS261', 'Hardware Fundamentals and PC Repair', 3, 'Computer Science', 'Provides an overview of computer hardware components and maintenance techniques.', 25),
('CIS283', 'Object Oriented Programming with JAVA', 3, 'Computer Science', 'Covers object-oriented programming concepts using Java programming language.', 27),
('CIS284', 'GUI Programming', 3, 'Computer Science', 'Introduces graphical user interface programming using a high-level programming language.', 28),
('CIS286', 'WWW Interactive Programming', 3, 'Computer Science', 'Focuses on interactive programming concepts and techniques using HTML, CSS, Javascript and PHP.', 29),
('CIS288', 'Application Development', 3, 'Computer Science', 'Provides practical experience in developing software applications using a high-level programming language.', 30),
('CIS290', 'CIS Project', 3, 'Computer Science', 'CIS Project is a course that provides students with the opportunity to apply the knowledge and skills gained from other computer and information scien', 0),
('CNT125', 'Introduction to Networking', 3, 'Computer Science', 'This course provides an introduction to computer networking, including the basics of networking technologies, protocols, and network architecture.', 31),
('CNT135', 'Intermediate Networking', 3, 'Computer Science', 'This course builds on the fundamentals of computer networking and covers more advanced topics such as network design, routing, and switching.', 31),
('CNT225', 'Routing and Switching', 3, 'Computer Science', 'This course provides an in-depth study of the concepts and practices of network routing and switching, including configuration and troubleshooting.', 32),
('CNT235', 'Network Design and Support', 3, 'Computer Science', 'This course covers the principles and practices of designing and supporting computer networks, including network topology, security, and management.', 33),
('CNT250', 'Server Management', 3, 'Computer Science', 'This course covers the administration and management of computer servers, including installation, configuration, maintenance, and troubleshooting.', 34),
('CNT290', 'Computer Networking Project', 3, 'Computer Science', 'This course involves the design and implementation of a computer networking project, providing students with practical experience in applying their kn', 0),
('CRJ235', 'Criminal Investigation', 3, 'Social Science', 'Course that examines the theory, principles, and practices of criminal investigations, including crime scene management, evidence collection and prese', 0),
('CRJ240', 'Juvenile Justice', 3, 'Social Science', 'The course may cover topics such as the history and structure of the court system, the roles and functions of the various actors involved in the syste', 113),
('CRJ245', 'Introduction to Corrections', 3, 'Social Science', 'The course may cover topics such as the history and evolution of corrections, the roles and functions of correctional officers and staff, and the vari', 114),
('CRJ250', 'Criminal Justice Research Paper', 3, 'Social Science', 'This course is designed to teach students how to conduct research on topics related to criminal justice and to develop skills in writing research pape', 0),
('CRJ255', 'Professional Experience in Criminal Justice', 3, 'Social Science', 'Students will gain practical experience in a criminal justice agency or organization under the supervision of a professional in the field.', 0),
('ECO105', 'Principles of Microeconomics', 3, 'Business', 'Introduces basic economic concepts and models related to individual decision-making and market interactions.', 11),
('ECO106', 'Principles of Macroeconomics', 3, 'Business', 'Covers macroeconomic topics such as GDP, inflation, and monetary policy.', 11),
('ECO210', 'Intermediate Microeconomics', 3, 'Business', 'Focuses on advanced economic concepts related to consumer and producer behavior, market equilibrium, and market failure.', 12),
('ECO220', 'Intermediate Macroeconomics', 3, 'Business', 'Focuses on advanced economic concepts related to consumer and producer behavior, market equilibrium, and market failure.', 13),
('EDU111', 'Nature of the Learner', 4, 'Humanities and Education', 'An introduction to the psychological and developmental aspects of the learning process, and how they affect teaching strategies.', 46),
('EDU112', 'Introduction to Education', 3, 'Humanities and Education', 'An overview of the field of education, including historical, social, and philosophical aspects, and the role of educators in society.', 47),
('EDU115', 'Teaching Methods for the Primary Classroom', 4, 'Humanities and Education', 'An exploration of teaching methods and strategies for the primary grades, including lesson planning and assessment.', 48),
('EDU120', 'Physical Education', 3, 'Humanities and Education', 'An examination of the principles and practices of physical education, including the development of motor skills and physical fitness in students.', 49),
('EDU131', 'Dance and Drama Education', 3, 'Humanities and Education', 'An introduction to the use of dance and drama in the classroom to enhance students creativity and self-expression.', 50),
('EDU132', 'Music Education', 3, 'Humanities and Education', 'An exploration of the role of music in education, including the teaching of music theory, performance, and appreciation.', 50),
('EDU133', 'Visual Arts Education', 3, 'Humanities and Education', 'An overview of the principles and practices of art education, including the use of various art forms to enhance students creativity and visual literac', 50),
('EDU210', 'Managing the Regular and Multigrade Classroom', 3, 'Humanities and Education', 'An examination of classroom management techniques for both regular and multigrade classrooms, including discipline, organization, and communication sk', 51),
('EDU225', 'Health and Family Life Education', 3, 'Humanities and Education', 'An exploration of the concepts and practices related to health and family life education, including physical and emotional health, family relationship', 52),
('EDU226', 'Spanish Methods for the Primary Classroom', 3, 'Humanities and Education', 'An introduction to teaching Spanish to primary students, including methods and techniques for language acquisition and cultural understanding.', 53),
('EDU230', 'Language Arts Methods for Primary Grades I', 3, 'Humanities and Education', 'An overview of language arts teaching methods for primary grades, including reading, writing, and language development.', 53),
('EDU232', 'Language Arts Methods for the Primary Grades II', 3, 'Humanities and Education', 'A continuation of EDU 230, with a focus on more advanced language arts concepts and teaching strategies.', 53),
('EDU233', 'Science Concepts and Methods for the Primary Classroom', 3, 'Humanities and Education', 'An exploration of the principles and practices of science education for primary students, including the development of scientific thinking and experim', 54),
('EDU234', 'Social Studies Concepts and Methods for the Primary Classroom', 3, 'Humanities and Education', 'An overview of social studies education for primary students, including history, geography, and cultural diversity.', 55),
('EDU238', 'Math Concepts and Methods for the Primary Classroom', 4, 'Humanities and Education', 'An examination of the principles and practices of math education for primary students, including numeracy, problem-solving, and critical thinking skil', 56),
('EDU290', 'Teaching Practicum I', 3, 'Humanities and Education', 'An opportunity for pre-service teachers to observe and assist experienced teachers in primary classrooms.', 0),
('EDU291', 'Internship in Primary Education', 9, 'Humanities and Education', 'A supervised teaching experience in a primary school setting, allowing pre-service teachers to apply their learning in a practical setting.', 0),
('ENS120', 'Fundamental Ecological Principles', 4, 'Math and Science', 'A course that explores the principles and concepts of ecology, including ecosystem structure and function, population dynamics, and community interact', 90),
('ENS121', 'Environment and Society', 3, 'Math and Science', 'A course that examines the relationship between humans and the environment, including the social, economic, and political factors that influence envir', 90),
('ENS122', 'Geography of Environmental Systems', 4, 'Math and Science', 'A course that examines the physical and human geography of the environment, including topics such as biogeography, hydrology, and climate change.', 91),
('ENS212', 'Sustainable Agriculture/Agro-forestry', 3, 'Math and Science', 'This course introduces sustainable agriculture and agroforestry practices to students, with a focus on ecological, economic and social sustainability.', 92),
('ENS216', 'Environmental Chemistry and Monitoring', 4, 'Math and Science', 'This course provides students with an understanding of environmental chemistry, including the impact of chemicals on the environment and methods for m', 0),
('ENS217', 'Marine and Fish Ecology', 4, 'Math and Science', 'A course that explores the ecology of marine and freshwater ecosystems, including the diversity of aquatic organisms and their interactions with the e', 93),
('ENS221', 'Tropical Ecology Research', 3, 'Math and Science', 'This course provides students with the opportunity to engage in field research on tropical ecosystems and learn about the biodiversity and complexity ', 0),
('ENS241', 'Internship in Environmental Science', 1, 'Math and Science', 'This course provides students with practical experience in the field of environmental science through internships with environmental organizations, ag', 0),
('ENT105', 'Creativity, Innovation and Idea Development', 3, 'Business', 'Explores the process of generating new ideas and innovative solutions in collaborative settings.', 17),
('ENT110', 'Introduction to Entrepreneurship', 3, 'Business', 'Introduces key concepts related to starting and managing a new business.', 18),
('ENT210', 'Social Entrepreneurship', 3, 'Business', 'Focuses on entrepreneurship that aims to create social or environmental impact, in addition to financial returns.', 19),
('ENT230', 'Entrepreneurship Capstone Project', 3, 'Business', 'Allows students to apply entrepreneurship concepts and skills to a real-world project.', 0),
('GOV105', 'Introduction to International Relations', 3, 'Social Science', 'Students will learn about the fundamental concepts and theories of international relations, including the actors, issues, and institutions of the inte', 100),
('GOV115', 'Introduction to Government and Politics', 3, 'Social Science', 'This course provides an overview of the structures and functions of governments, political institutions, and political behavior.', 101),
('GOV200', 'International Relations Theories and Approaches', 3, 'Social Science', 'This course explores different theories and approaches to the study of international relations, including realism, liberalism, and constructivism.', 100),
('HIS153', 'Indigenous Societies of Latin America and the Caribbean', 3, 'Humanities and Education', 'This course examines the histories, cultures, and contemporary issues of indigenous communities in the region.', 94),
('HIS161', 'Atlantic World Interactions', 3, 'Humanities and Education', 'This course studies the interactions between Europe, Africa, and the Americas during the period of European expansion and colonization.', 94),
('HIS242', 'History of Belize’s International Relations', 3, 'Humanities and Education', 'This course explores the diplomatic relations of Belize with other countries, regional and international organizations, and its involvement in interna', 95),
('HIS251', 'Caribbean Slave Systems', 3, 'Humanities and Education', 'This course provides an overview of the history and impact of the transatlantic slave trade in the Caribbean.', 96),
('HIS252', 'Transformations in Caribbean Societies from Emancipation to the Present Day', 3, 'Humanities and Education', 'Students will learn about the social, cultural, and economic transformations that have occurred in Caribbean societies since the colonial period.', 96),
('HIS261', 'Atlantic Development: Identity and Industry', 3, 'Humanities and Education', 'This course focuses on the economic and social development of Atlantic communities, with a focus on the impact of industrialization on identity and cu', 97),
('HIS262', 'Conflict and Liberation in International Relations in the Twentieth Century Literature', 3, 'Humanities and Education', 'This course examines the global conflicts and liberation movements that shaped international relations during the 20th century.', 98),
('LAW110', 'Caribbean Legal Environment', 3, 'Social Science', 'An overview of the legal framework in the Caribbean with a focus on common law, civil law and customary law systems.', 108),
('LAW111', 'Introduction to Criminology', 3, 'Social Science', 'This course introduces students to the study of crime, criminal behavior, and the criminal justice system.', 109),
('LAW210', 'Contract Law', 3, 'Social Science', 'Students will learn about the principles and practices of contract law, including the formation, interpretation, and enforcement of contracts.', 0),
('LAW215', 'Introduction to Criminal Law', 3, 'Social Science', 'Students will learn the fundamentals of criminal law including the elements of crimes, the defenses available to accused persons, and the procedures o', 110),
('LAW225', 'Real Property Law', 3, 'Social Science', 'This course focuses on the law of real property, including the transfer, acquisition, and ownership of land and buildings.', 111),
('LAW230', 'Law of Tort', 3, 'Social Science', 'Students will study the law of tort, which deals with civil wrongs that result in harm or injury to individuals or property.', 112),
('LIT151', 'Literatures in English: An Introductory Writing Seminar', 3, 'Humanities and Education', 'This course provides an introduction to academic writing, including research, critical analysis, and argumentation.', 57),
('LIT152', 'Literatures in English: British and American Poetry', 3, 'Humanities and Education', 'This course covers the major poets and poetic movements in British and American literature.', 59),
('LIT153', 'Literatures in English: Prose Fiction I', 3, 'Humanities and Education', 'This course focuses on the analysis and critique of fictional prose, including short stories and novels.', 60),
('LIT251', 'Literatures in English: Drama', 4, 'Humanities and Education', 'This course provides an introduction to the principles and practices of drama, including script analysis, acting, and stagecraft.', 62),
('LIT252', 'Literatures in English: Caribbean Poetry', 3, 'Humanities and Education', 'This course covers the major poets and poetic movements in Caribbean literature.', 64),
('LIT253', 'Literatures in English: Prose Fiction II', 4, 'Humanities and Education', 'This course builds on the analysis and critique of fictional prose covered in Prose Fiction I.', 65),
('MIS290', 'MIS Project', 3, 'Computer Science', 'This course focuses on the design and implementation of information systems in organizations, with an emphasis on project management and system develo', 0),
('MTH115', 'College Algebra', 4, 'Math and Science', 'This course covers fundamental algebraic concepts and operations, including linear and quadratic equations, functions, and systems of equations.', 35),
('MTH119', 'Trigonometry', 4, 'Math and Science', 'This course covers the study of trigonometric functions, identities, and applications in solving problems related to triangles and circular motion.', 35),
('MTH140', 'Analytic Geometry', 3, 'Math and Science', 'This course covers topics in analytic geometry, including lines, circles, conic sections, and transformations.', 35),
('MTH145', 'Calculus I', 4, 'Math and Science', 'This course covers the fundamentals of calculus, including limits, derivatives, and integrals of algebraic and transcendental functions.', 36),
('MTH236', 'Calculus II', 4, 'Math and Science', 'This course builds on Calculus I, covering advanced topics such as integration techniques, sequences and series, and applications of calculus.', 36),
('MTH246', 'Probability and Statistics', 4, 'Math and Science', 'This course covers probability theory, statistical analysis, and methods for data collection and analysis.', 37),
('MTH250', 'Further Sequences and Mathematical Modeling', 3, 'Math and Science', 'This course covers sequences and series, mathematical induction, and mathematical modeling with a focus on real-world applications.', 36),
('MTH260', 'Linear Algebra', 3, 'Math and Science', 'This course covers the theory and applications of linear algebra, including systems of linear equations, matrices, determinants, vector spaces, and li', 36),
('MUEN100', 'Music Ensemble', 1, 'Humanities and Education', 'These courses offer students the opportunity to join a music ensemble, where they can perform music in a group setting and develop their musical skill', 74),
('MUEN101', 'Music Ensemble', 1, 'Humanities and Education', 'These courses offer students the opportunity to join a music ensemble, where they can perform music in a group setting and develop their musical skill', 74),
('MUEN200', 'Music Ensemble', 1, 'Humanities and Education', 'These courses offer students the opportunity to join a music ensemble, where they can perform music in a group setting and develop their musical skill', 74),
('MUEN201', 'Music Ensemble', 1, 'Humanities and Education', 'These courses offer students the opportunity to join a music ensemble, where they can perform music in a group setting and develop their musical skill', 74),
('MUGN200', 'Music Instruction', 3, 'Humanities and Education', 'This course is designed to provide students with instruction on how to play a musical instrument or sing, regardless of their current skill level.', 75),
('MUHL106', 'Music in Belize', 2, 'Humanities and Education', 'This course explores the history and culture of Belize through its music, covering a variety of genres and styles from traditional to modern.', 76),
('MUHL201', 'Introduction to Music Literature', 3, 'Humanities and Education', 'This course provides an overview of Western music history, examining the development of various musical styles and genres and their historical and cul', 77),
('MUPC110', 'Class Piano I', 2, 'Humanities and Education', 'These courses teach students the basics of playing the piano, including technique, music theory, and performance.', 78),
('MUPC111', 'Class Piano II', 2, 'Humanities and Education', 'These courses teach students the basics of playing the piano, including technique, music theory, and performance.', 79),
('MUPR100', 'Applied Study I', 1, 'Humanities and Education', 'These courses provide one-on-one instruction to students who want to develop their skills in a particular instrument or voice.', 0),
('MUPR101', 'Applied Study II', 1, 'Humanities and Education', 'These courses provide one-on-one instruction to students who want to develop their skills in a particular instrument or voice.', 0),
('MUPR200', 'Applied Study III', 1, 'Humanities and Education', 'These courses provide one-on-one instruction to students who want to develop their skills in a particular instrument or voice.', 0),
('MUPR201', 'Applied Study IV', 1, 'Humanities and Education', 'These courses provide one-on-one instruction to students who want to develop their skills in a particular instrument or voice.', 0),
('MUTH100', 'Basic Musicianship', 3, 'Humanities and Education', 'This course provides an introduction to the fundamentals of music theory and notation, including rhythm, melody, and harmony.', 80),
('MUTH101', 'Elements of Theory', 3, 'Humanities and Education', 'This course expands upon the basics of music theory covered in MUTH 100, covering more advanced topics like chord progressions and musical form.', 81),
('MUTH200', 'Music Theory I', 4, 'Humanities and Education', 'These courses provide a comprehensive study of music theory, covering topics like harmony, counterpoint, and musical analysis.', 82),
('MUTH201', 'Music Theory II', 4, 'Humanities and Education', 'These courses provide a comprehensive study of music theory, covering topics like harmony, counterpoint, and musical analysis.', 82),
('PDV210', 'Professional Conduct, Ethics & Mediation', 3, 'Social Science', 'This course focuses on the principles of professional conduct, ethical decision-making, and conflict resolution in the criminal justice system.', 115),
('PHY116', 'Classical Mechanics for Scientists and Engineers', 3, 'Math and Science', 'This course covers the fundamental principles of classical mechanics, including motion, forces, energy, and momentum.', 38),
('PHY116L', 'Classical Mechanics for Scientists and Engineers LAB', 1, 'Math and Science', 'This course provides students with hands-on experience in applying the principles of classical mechanics through laboratory experiments.', 0),
('PHY120', 'Introduction to Fluids, Materials and Thermodynamics', 3, 'Math and Science', 'This course covers the fundamental principles of fluid mechanics, materials science, and thermodynamics.', 38),
('PHY130', 'Introduction to Analog and Digital Electronics', 3, 'Math and Science', 'This course introduces students to analog and digital electronics, including electronic circuits and devices.', 39),
('PHY130L', 'Introduction to Analog and Digital Electronics LAB', 1, 'Math and Science', 'This course provides students with hands-on experience in designing and building electronic circuits and devices.', 0),
('PHY216', 'Light, Waves and Oscillations', 3, 'Math and Science', 'This course covers the physics of waves and oscillations, including sound and light waves, and their applications.', 38),
('PHY216L', 'Light, Waves and Oscillations LAB', 1, 'Math and Science', 'This course provides students with hands-on experience in exploring the properties and applications of waves and oscillations through laboratory exper', 0),
('PHY226', 'Electromagnetism', 3, 'Math and Science', 'This course covers the fundamental principles of electromagnetism, including electric and magnetic fields, electromagnetic waves, and their applicatio', 38),
('PHY226L', 'Electromagnetism LAB', 1, 'Math and Science', 'This course provides students with hands-on experience in applying the principles of electromagnetism through laboratory experiments.', 0),
('PHY236', 'Modern Physics with Electronics', 3, 'Math and Science', 'This course covers modern physics topics such as quantum mechanics, special relativity, and nuclear physics, with a focus on their applications in ele', 38),
('PHY236L', 'Modern Physics with Electronics Lab', 1, 'Math and Science', 'This course provides students with hands-on experience in exploring modern physics concepts and their applications in electronic devices through labor', 0),
('PSY115', 'Introduction to Psychology', 3, 'Social Science', 'This course provides an introduction to the study of psychology, including the history of the field, research methods, and major theoretical approache', 102),
('PSY125', 'Developmental Psychology', 3, 'Social Science', 'Students will learn about the psychological development of individuals across the lifespan, including physical, cognitive, and social-emotional develo', 103),
('PSY135', 'Personality Psychology', 3, 'Social Science', 'This course explores the major theories and approaches to the study of personality, including trait theory, psychoanalytic theory, and humanistic theo', 104),
('PSY220', 'Health Psychology', 3, 'Social Science', 'This course focuses on the relationship between psychology and health, including the biological, psychological, and social factors that influence heal', 105),
('PSY225', 'Social Psychology', 3, 'Social Science', 'This course focuses on the scientific study of how people think, feel, and behave in social situations. Topics include social influence, group dynamic', 106),
('PSY230', 'Abnormal Psychology', 3, 'Social Science', 'This course examines abnormal behavior, its causes, and its treatments. Students will explore a range of psychological disorders, including anxiety, d', 107),
('SOC134', 'Sociology, Society and Culture', 3, 'Social Science', 'This course introduces students to the principles of sociology and examines the relationships between society, culture, and individual behavior. Topic', 99),
('SOC144', 'Education, Social Stratification and Mobility', 3, 'Social Science', 'This course examines the role of education in society, focusing on the ways in which education both reflects and reinforces social stratification. Top', 99),
('SOC214', 'Population Studies, Poverty and Development', 3, 'Social Science', 'This course explores the complex relationships between population, poverty, and development. Students will examine demographic trends, poverty dynamic', 99),
('SOC234', 'Social Control, Crime and Deviance', 4, 'Social Science', 'This course focuses on the study of crime and deviance in society. Topics include the social construction of crime, theories of criminal behavior, and', 99),
('THM120', 'Introduction to Tourism and Hospitality Management', 3, 'Business', 'Provides an overview of the tourism and hospitality industry, including key concepts and trends.', 14),
('THM236', 'Tourism Planning and Policy', 3, 'Business', 'Covers planning and policy issues related to tourism development, including sustainability and community involvement.', 15),
('THM255', 'Destination Planning and Product Development', 3, 'Business', 'Focuses on the process of developing tourism products and promoting destinations.', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `textbook` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `student_id`, `textbook`, `price`, `order_date`) VALUES
(9, 1082119766, '9783659276521', '75.00', '2023-05-01 23:21:55'),
(10, 1082119766, '9783659276521', '75.00', '2023-05-01 23:27:31'),
(11, 1082119766, '9783659276521', '75.00', '2023-05-01 23:29:35'),
(12, 1082119766, '9783659276521', '75.00', '2023-05-01 23:29:45'),
(13, 1082119766, '9781285867502', '30.00', '2023-05-01 23:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `programcourse`
--

CREATE TABLE `programcourse` (
  `program_id` varchar(6) NOT NULL,
  `course_id` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programcourse`
--

INSERT INTO `programcourse` (`program_id`, `course_id`) VALUES
('BA', 'ACC205'),
('BA', 'BUS105'),
('BA', 'BUS213'),
('BA', 'BUS222'),
('BA', 'BUS223'),
('BA', 'BUS224'),
('BA', 'BUS251'),
('BA', 'BUS252'),
('BA', 'BUS253'),
('ECO', 'ECO105'),
('ECO', 'ECO106'),
('ECO', 'ECO210'),
('ECO', 'ECO220'),
('TM', 'THM120'),
('TM', 'THM236'),
('TM', 'THM255'),
('ENT', 'ENT105'),
('ENT', 'ENT110'),
('ENT', 'ENT210'),
('ENT', 'ENT230'),
('CIS', 'CIS125'),
('CIS', 'CIS126'),
('CIS', 'CIS130'),
('CIS', 'CIS135'),
('CIS', 'CIS233'),
('CIS', 'CIS240'),
('CIS', 'CIS283'),
('CIS', 'CIS284'),
('CIS', 'CIS286'),
('CIS', 'CIS288'),
('CIS', 'CIS290'),
('CIS', 'CNT125'),
('CNT', 'CIS125'),
('CNT', 'CIS130'),
('CNT', 'CIS135'),
('CNT', 'CIS233'),
('CNT', 'CIS261'),
('CNT', 'CIS283'),
('CNT', 'CNT125'),
('CNT', 'CNT135'),
('CNT', 'CNT225'),
('CNT', 'CNT235'),
('CNT', 'CNT250'),
('CNT', 'CNT290'),
('CS', 'CIS125'),
('CS', 'CIS126'),
('CS', 'CIS130'),
('CS', 'CIS135'),
('CS', 'CIS233'),
('CS', 'CIS240'),
('CS', 'CIS286'),
('CS', 'CIS290'),
('CS', 'MTH119'),
('CS', 'MTH145'),
('CS', 'PY116'),
('CS', 'PHY116L'),
('MIS', 'CIS120'),
('MIS', 'CIS125'),
('MIS', 'CIS130'),
('MIS', 'CIS135'),
('MIS', 'CIS284'),
('MIS', 'CIS286'),
('MIS', 'CIS288'),
('MIS', 'MIS290'),
('IT', 'CIS125'),
('IT', 'CIS126'),
('IT', 'CIS130'),
('IT', 'CIS135'),
('IT', 'CIS233'),
('IT', 'CIS240'),
('IT', 'CIS261'),
('IT', 'CIS283'),
('IT', 'CIS284'),
('IT', 'CIS286'),
('IT', 'CIS288'),
('IT', 'CIS290'),
('IT', 'CNT125'),
('CGD', 'CGD118'),
('CGD', 'CGD217'),
('CGD', 'CGD220'),
('CGD', 'CGD226'),
('CGD', 'CGD230'),
('CGD', 'CGD255'),
('EDU', 'EDU111'),
('EDU', 'EDU112'),
('EDU', 'EDU115'),
('EDU', 'EDU120'),
('EDU', 'EDU131'),
('EDU', 'EDU132'),
('EDU', 'EDU133'),
('EDU', 'EDU210'),
('EDU', 'EDU225'),
('EDU', 'EDU226'),
('EDU', 'EDU230'),
('EDU', 'EDU232'),
('EDU', 'EDU234'),
('EDU', 'EDU238'),
('EDU', 'EDU290'),
('EDU', 'EDU291'),
('LIT', 'LIT151'),
('LIT', 'LIT152'),
('LIT', 'LIT153'),
('LIT', 'LIT251'),
('LIT', 'LIT252'),
('LIT', 'LIT253'),
('FA', 'ART105'),
('FA', 'ART110'),
('FA', 'ART113'),
('FA', 'ART114'),
('FA', 'ART118'),
('FA', 'ART221'),
('FA', 'ART222'),
('FA', 'ART245'),
('FA', 'ART255'),
('MU', 'MUEN100'),
('MU', 'MUEN101'),
('MU', 'MUEN200'),
('MU', 'MUEN201'),
('MU', 'MUGN200'),
('MU', 'MUHL106'),
('MU', 'MUHL201'),
('MU', 'MUPC110'),
('MU', 'MUPC111'),
('MU', 'MUPR100'),
('MU', 'MUPR101'),
('MU', 'MUPR200'),
('MU', 'MUPR201'),
('MU', 'MUTH100'),
('MU', 'MUTH101'),
('MU', 'MUTH200'),
('MU', 'MUTH201'),
('BIO', 'BIO131'),
('BIO', 'BIO131L'),
('BIO', 'BIO231'),
('BIO', 'BIO231L'),
('BIO', 'BIO232'),
('BIO', 'BIO240'),
('BIO', 'BIO240L'),
('BIO', 'BIO241'),
('BIO', 'BIO241L'),
('BIO', 'BIO242'),
('CHE', 'CHE123'),
('CHE', 'CHE123L'),
('CHE', 'CHE129'),
('CHE', 'CHE129L'),
('CHE', 'CHE136'),
('CHE', 'CHE140'),
('CHE', 'CHE140L'),
('CHE', 'CHE230'),
('CHE', 'CHE234'),
('CHE', 'CHE234L'),
('CHE', 'CHE239'),
('CHE', 'CHE239L'),
('ENS', 'ENS120'),
('ENS', 'ENS121'),
('ENS', 'ENS122'),
('ENS', 'ENS212'),
('ENS', 'ENS216'),
('ENS', 'ENS217'),
('ENS', 'ENS221'),
('ENS', 'ENS241'),
('MTH', 'MTH115'),
('MTH', 'MTH119'),
('MTH', 'MTH140'),
('MTH', 'MTH145'),
('MTH', 'MTH236'),
('MTH', 'MTH246'),
('MTH', 'MTH250'),
('MTH', 'MTH260'),
('PHY', 'PHY116'),
('PHY', 'PHY116L'),
('PHY', 'PHY120'),
('PHY', 'PHY130'),
('PHY', 'PHY130L'),
('PHY', 'PHY216'),
('PHY', 'PHY216L'),
('PHY', 'PHY226'),
('PHY', 'PHY226L'),
('PHY', 'PHY236'),
('PHY', 'PHY236L'),
('HIS', 'HIS153'),
('HIS', 'HIS161'),
('HIS', 'HIS242'),
('HIS', 'HIS251'),
('HIS', 'HIS252'),
('HIS', 'HIS261'),
('HIS', 'HIS262'),
('SOC', 'SOC134'),
('SOC', 'SOC144'),
('SOC', 'SOC214'),
('SOC', 'SOC234'),
('IR', 'GOV105'),
('IR', 'GOV115'),
('IR', 'GOV200'),
('PSY', 'PSY115'),
('PSY', 'PSY125'),
('PSY', 'PSY135'),
('PSY', 'PSY220'),
('PSY', 'PSY225'),
('PSY', 'PSY230'),
('CJ', 'LAW110'),
('CJ', 'LAW111'),
('CJ', 'LAW215'),
('CJ', 'CRJ235'),
('CJ', 'CRJ240'),
('CJ', 'CRJ245'),
('CJ', 'CRJ250'),
('CJ', 'CRJ255'),
('CJ', 'PDV210'),
('LAW', 'LAW110'),
('LAW', 'LAW111'),
('LAW', 'LAW210'),
('LAW', 'LAW215'),
('LAW', 'LAW225'),
('LAW', 'LAW230'),
('BAA', 'ACC205'),
('BAA', 'BUS105'),
('BAA', 'BUS213'),
('BAA', 'BUS222'),
('BAA', 'BUS223'),
('BAA', 'BUS224'),
('BAA', 'BUS251'),
('BAA', 'BUS252'),
('BAA', 'BUS253'),
('BAA', 'ACC101'),
('BAA', 'ACC102'),
('BAA', 'ACC215'),
('BAA', 'ACC216'),
('BAE', 'ACC205'),
('BAE', 'BUS105'),
('BAE', 'BUS213'),
('BAE', 'BUS222'),
('BAE', 'BUS223'),
('BAE', 'BUS224'),
('BAE', 'BUS251'),
('BAE', 'BUS252'),
('BAE', 'BUS253'),
('BAE', 'ECO105'),
('BAE', 'ECO106'),
('BAE', 'ECO210'),
('BAE', 'ECO220'),
('BAAE', 'ACC205'),
('BAAE', 'BUS105'),
('BAAE', 'BUS213'),
('BAAE', 'BUS222'),
('BAAE', 'BUS223'),
('BAAE', 'BUS224'),
('BAAE', 'BUS251'),
('BAAE', 'BUS252'),
('BAAE', 'BUS253'),
('BAAE', 'ACC101'),
('BAAE', 'ACC102'),
('BAAE', 'ACC215'),
('BAAE', 'ACC216'),
('BAAE', 'ECO105'),
('BAAE', 'ECO106'),
('BAAE', 'ECO210'),
('BAAE', 'ECO220'),
('BACGD', 'ACC205'),
('BACGD', 'BUS105'),
('BACGD', 'BUS213'),
('BACGD', 'BUS222'),
('BACGD', 'BUS223'),
('BACGD', 'BUS224'),
('BACGD', 'BUS251'),
('BACGD', 'BUS252'),
('BACGD', 'BUS253'),
('BACGD', 'CGD118'),
('BACGD', 'CGD217'),
('BACGD', 'CGD220'),
('BACGD', 'CGD226'),
('BACGD', 'CGD230'),
('BACGD', 'CGD255'),
('HISLIT', 'HIS153'),
('HISLIT', 'HIS161'),
('HISLIT', 'HIS242'),
('HISLIT', 'HIS251'),
('HISLIT', 'HIS252'),
('HISLIT', 'HIS261'),
('HISLIT', 'HIS262'),
('HISLIT', 'LIT151'),
('HISLIT', 'LIT152'),
('HISLIT', 'LIT153'),
('HISLIT', 'LIT251'),
('HISLIT', 'LIT252'),
('HISLIT', 'LIT253'),
('LA', 'ACC205'),
('LA', 'BUS105'),
('LA', 'BUS213'),
('LA', 'HIS153'),
('LA', 'HIS161'),
('LA', 'ECO105'),
('LA', 'ECO106'),
('LA', 'SOC134'),
('LA', 'PSY115'),
('LA', 'LAW110'),
('FAM', 'ART105'),
('FAM', 'ART110'),
('FAM', 'ART113'),
('FAM', 'ART114'),
('FAM', 'ART118'),
('FAM', 'ART221'),
('FAM', 'ART222'),
('FAM', 'ART245'),
('FAM', 'ART255'),
('FAM', 'MUEN100'),
('FAM', 'MUEN101'),
('FAM', 'MUEN200'),
('FAM', 'MUEN201'),
('FAM', 'MUGN200'),
('FAM', 'MUHL106'),
('FAM', 'MUHL201'),
('FAM', 'MUPC110'),
('FAM', 'MUPC111'),
('FAM', 'MUPR100'),
('FAM', 'MUPR101'),
('FAM', 'MUPR200'),
('FAM', 'MUPR201'),
('FAM', 'MUTH100'),
('FAM', 'MUTH101'),
('FAM', 'MUTH200'),
('FAM', 'MUTH201'),
('BIOCHE', 'BIO131'),
('BIOCHE', 'BIO131L'),
('BIOCHE', 'BIO231'),
('BIOCHE', 'BIO231L'),
('BIOCHE', 'BIO232'),
('BIOCHE', 'BIO240'),
('BIOCHE', 'BIO240L'),
('BIOCHE', 'BIO241'),
('BIOCHE', 'BIO241L'),
('BIOCHE', 'BIO242'),
('BIOCHE', 'CHE123'),
('BIOCHE', 'CHE123L'),
('BIOCHE', 'CHE129'),
('BIOCHE', 'CHE129L'),
('BIOCHE', 'CHE136'),
('BIOCHE', 'CHE140'),
('BIOCHE', 'CHE140L'),
('BIOCHE', 'CHE230'),
('BIOCHE', 'CHE234'),
('BIOCHE', 'CHE234L'),
('BIOCHE', 'CHE239'),
('BIOCHE', 'CHE239L'),
('MTHCHE', 'MTH115'),
('MTHCHE', 'MTH119'),
('MTHCHE', 'MTH140'),
('MTHCHE', 'MTH145'),
('MTHCHE', 'MTH236'),
('MTHCHE', 'MTH246'),
('MTHCHE', 'MTH250'),
('MTHCHE', 'MTH260'),
('MTHCHE', 'CHE123'),
('MTHCHE', 'CHE123L'),
('MTHCHE', 'CHE129'),
('MTHCHE', 'CHE129L'),
('MTHCHE', 'CHE136'),
('MTHCHE', 'CHE140'),
('MTHCHE', 'CHE140L'),
('MTHCHE', 'CHE230'),
('MTHCHE', 'CHE234'),
('MTHCHE', 'CHE234L'),
('MTHCHE', 'CHE239'),
('MTHCHE', 'CHE239L'),
('IS', 'BIO131'),
('IS', 'BIO131L'),
('IS', 'BIO231'),
('IS', 'BIO231L'),
('IS', 'CHE123'),
('IS', 'CHE123L'),
('IS', 'CHE129'),
('IS', 'CHE129L'),
('IS', 'ENS120'),
('IS', 'ENS121'),
('IS', 'ENS122'),
('IS', 'MTH115'),
('IS', 'MTH119'),
('IS', 'MTH140'),
('IS', 'PHY116'),
('IS', 'PHY116L'),
('IS', 'PHY120'),
('IS', 'PHY130'),
('IS', 'PHY130L'),
('IS', 'CIS125'),
('IS', 'CIS126'),
('IS', 'CNT125'),
('HISECO', 'HIS153'),
('HISECO', 'HIS161'),
('HISECO', 'HIS242'),
('HISECO', 'HIS251'),
('HISECO', 'HIS252'),
('HISECO', 'HIS261'),
('HISECO', 'HIS262'),
('HISECO', 'ECO105'),
('HISECO', 'ECO106'),
('HISECO', 'ECO210'),
('HISECO', 'ECO220'),
('HISSOC', 'HIS153'),
('HISSOC', 'HIS161'),
('HISSOC', 'HIS242'),
('HISSOC', 'HIS251'),
('HISSOC', 'HIS252'),
('HISSOC', 'HIS261'),
('HISSOC', 'HIS262'),
('HISSOC', 'SOC134'),
('HISSOC', 'SOC144'),
('HISSOC', 'SOC214'),
('HISSOC', 'SOC234'),
('SOCPSY', 'SOC134'),
('SOCPSY', 'SOC144'),
('SOCPSY', 'SOC214'),
('SOCPSY', 'SOC234'),
('SOCPSY', 'PSY115'),
('SOCPSY', 'PSY125'),
('SOCPSY', 'PSY135'),
('SOCPSY', 'PSY220'),
('SOCPSY', 'PSY225'),
('SOCPSY', 'PSY230'),
('SOCECO', 'SOC134'),
('SOCECO', 'SOC144'),
('SOCECO', 'SOC214'),
('SOCECO', 'SOC234'),
('SOCECO', 'ECO105'),
('SOCECO', 'ECO106'),
('SOCECO', 'ECO210'),
('SOCECO', 'ECO220');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_code` varchar(6) NOT NULL,
  `program_name` varchar(50) NOT NULL,
  `credits` tinyint(2) UNSIGNED NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_code`, `program_name`, `credits`, `department`) VALUES
('BA', 'Business Administration', 71, 'Business'),
('BAA', 'Business Administration with Accounting', 77, 'Business'),
('BAAE', 'Business Administration with Accounting and Econom', 80, 'Business'),
('BACGD', 'Business Administration with Graphic Design', 77, 'Business'),
('BAE', 'Business Administration with Economics', 77, 'Business'),
('BIO', 'Biology', 75, 'Math and Science'),
('BIOCHE', 'Biology and Chemistry', 79, 'Math and Science'),
('CGD', 'Commercial Graphic Design', 73, 'Humanities and Education'),
('CHE', 'Chemistry', 75, 'Math and Science'),
('CIS', 'Computer Information Systems', 73, 'Computer Science'),
('CJ', 'Criminal Justice', 73, 'Social Science'),
('CNT', 'Computer Networking', 73, 'Computer Science'),
('CS', 'Computer Science', 77, 'Computer Science'),
('ECO', 'Economics', 74, 'Social Science'),
('EDU', 'Education', 91, 'Humanities and Education'),
('ENS', 'Environmental Science', 74, 'Math and Science'),
('ENT', 'Entrepreneurship', 80, 'Business'),
('FA', 'Fine Arts', 70, 'Humanities and Education'),
('FAM', 'Fine Arts and Music', 83, 'Humanities and Education'),
('HIS', 'History', 74, 'Social Science'),
('HISECO', 'History and Economics', 77, 'Social Science'),
('HISLIT', 'History and Literature', 76, 'Humanities and Education'),
('HISSOC', 'History and Sociology', 78, 'Social Science'),
('IR', 'International Relations', 75, 'Social Science'),
('IS', 'Interdisciplinary Science', 73, 'Math and Science'),
('IT', 'Information Technology', 73, 'Computer Science'),
('LA', 'Liberal Arts', 71, 'Humanities and Education'),
('LAW', 'Law', 78, 'Social Science'),
('LIT', 'Literature', 73, 'Humanities and Education'),
('MIS', 'Management Information Systems', 73, 'Computer Science'),
('MTH', 'Math', 72, 'Math and Science'),
('MTHCHE', 'Math and Chemistry', 77, 'Math and Science'),
('MU', 'Music', 71, 'Humanities and Education'),
('PHY', 'Physics', 78, 'Math and Science'),
('PSY', 'Psychology', 72, 'Social Science'),
('SOC', 'Sociology', 72, 'Social Science'),
('SOCECO', 'Sociology and Economics', 78, 'Social Science'),
('SOCPSY', 'Sociology and Psychology', 79, 'Social Science'),
('TM', 'Tourism Management', 80, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` decimal(10,0) NOT NULL,
  `pwdUsers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `pwdUsers`) VALUES
('1082119766', 'password1'),
('1082120227', 'password3'),
('1082122717', 'password2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table books
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sjc', 'books', '{\"sorted_col\":\"`books`.`page_count` ASC\"}', '2023-04-14 23:06:10');

--
-- Metadata for table courses
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sjc', 'courses', '{\"sorted_col\":\"`courses`.`txtbkid` ASC\"}', '2023-04-30 18:44:31');

--
-- Metadata for table orders
--

--
-- Metadata for table programcourse
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sjc', 'programcourse', '{\"sorted_col\":\"`programcourse`.`program_id` ASC\"}', '2023-05-01 20:39:14');

--
-- Metadata for table programs
--

--
-- Metadata for table users
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sjc', 'users', '{\"sorted_col\":\"`users`.`pwdUsers` ASC\"}', '2023-04-14 10:39:33');

--
-- Metadata for database sjc
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
