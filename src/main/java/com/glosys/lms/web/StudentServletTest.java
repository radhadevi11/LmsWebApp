package com.glosys.lms.web;


import com.glosys.lms.Student;
import com.glosys.lms.controller.StudentController;

public class StudentServletTest {
    public static void main(String[] args) {
        StudentController studentController = new StudentController();
        studentController.saveStudent(new Student("Vishnu","kumar","vishnu@gmail.com","KEC","11","11"));
    }
}
