package com.glosys.lms.web.admin;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DatePickerTester {
    public static void main(String[] args) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MM yyyy");
        String text1 = "10-10-2019";
        String replaceString = text1.replace("-", " ");
        LocalDate parsedDate = LocalDate.parse(replaceString, formatter);
        System.out.println(parsedDate);
    }
}
