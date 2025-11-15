package com.example.student.service;

import com.example.student.model.Student;

import java.util.List;
import java.util.Optional;

public interface StudentService {

    Student saveStudent(Student student);

    List<Student> getAllStudents();

    Optional<Student> getStudentById(Long id);

    Student updateStudent(Student student);

    void deleteStudent(Long id);

    List<Student> searchStudents(String keyword);

    Student getStudentByRollNo(String rollNo);   // added
}
