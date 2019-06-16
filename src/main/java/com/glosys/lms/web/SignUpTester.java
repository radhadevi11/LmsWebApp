package com.glosys.lms.web;

import com.glosys.lms.SignUp;
import com.glosys.lms.controller.SignUpController;

public class SignUpTester {
    public static void main(String[] args) {
        SignUpController signUpController = new SignUpController();
        signUpController.saveSignUp(new SignUp("Vishnu","kumar","vishnu@gmail.com","KEC","11","11"));
    }
}
