# CIS-286-Project

CIS 286 Group Project
Due date: May 5, 2023 at 11:59 p.m.
Group structure: no more than 3 students per group.

Overview
This assessment provides an opportunity for you to apply the concepts and technologies
covered in class to a “real” project situation. In this project you will be design and implement a
PHP-based web application for SJCJC academic programs. By the end of the project, you will
have a non-trivial web application that can be a reasonable portfolio piece.
If working in a group, each member needs to take responsibility for and complete an
appropriate amount of the project. Be sure to consult the instructor at least one week prior to
the due date if your group is experiencing serious problems in this regard.

Guidance
There are three key parts to this project:
- the layout/design of the page
- creating the database and accessing the data
- integrating the data into the actual pages
- You might decide to divide these tasks between the group members (i.e., one member does the
layout, another does the database, and the other does the integration) or you might decide to
divide the work by pages (e.g., one group member does the major pages, another does the
course pages, and the other does the textbook pages).
- It would probably be best for all group members to get some experience with layout and
database access, so I would recommend taking the later approach.
- For the program design marks, be sure to use functions and include files to reduce code and
markup duplication.

Requirements
This project consists of 8 pages minimum with the following functionality:
1. You will be using the same visual design for all your pages. I strongly recommend that you
use the CSS Framework e.g. Bootstrap (http://getbootstrap.com/). The site must use a
single CSS file for any additional text and color formatting.

2. All the works must be done in HTML5, CSS, JavaScript, and PHP. Use your own discretion to
determine when to use which and the where to place images. The site must also use a
single JavaScript file. Note that the more dynamic the web page is, the more likely for you
to get a higher grade.

3. All pages must include a header, a search box, navigation menu, and a footer. All of these
should be consistent on all pages.

4. There must be an about page named aboutUs. This about page must specify that this site is
a project for CIS 286, your names, and contribution of each member.

5. The home page must be named index. This home page should contain different tracks of
programs provided by SJCJC. You can come up with your own set of tracks/programs.

6. The program-list page displays a list of all programs SJCJC offers. The program titles should
be links to the program-details page.
The program-list page should provide different ways to filter or sort the list of programs,
such as by tracks, or alphabetical order. e.g., clicking on the computer science track will
display only those programs that falls under computer science.

7. The program-detail page will display all information about the program/major specified by
the query string, which may include the program code, program title, total credit hours, the
department, and a list of professional courses. The course titles should be links to the
course-detail page.

8. The course-detail page will display all information about the course specified by the query
string. The information should include the course number, course title, credit hour,
department, course description, and a link to the textbook used for the course.

9. The textbook-detail page will display all the information about a book specified by the
query string, which may include the cover, title, author(s), ISBN, year, page count,
description, category, publisher, and the price of the book. On the detail page, there should
be a control that allows the SJC students to order the book at SJC bookstore. In order to
order a book, the students need to log on using their student ID number.

10. The search page contains an HTML form that allow user to specified different field in order
to search the courses that fit the criteria. If the page is requested via a link, it should at first
display only the search criteria, which may be course title or description. If the user has
typed in a value in the search box in the header on any page, then it should redirect to this
page using a query string, and perform a search by title for the query string value. The
search result will be displayed below the HTML form.

11. The last page would be the error page which handle a missing or invalid query string.
