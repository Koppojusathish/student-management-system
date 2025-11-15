package com.example.student.repository;

import com.example.student.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

    // Search by keyword
    List<Student> findByNameContainingIgnoreCaseOrCourseContainingIgnoreCaseOrRollNoContainingIgnoreCase(
            String name, String course, String rollNo);

    // ⭐ Add this method
    Student findByRollNo(String rollNo);
}
