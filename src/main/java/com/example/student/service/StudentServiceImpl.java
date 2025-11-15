package com.example.student.service;

import com.example.student.model.Student;
import com.example.student.repository.StudentRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentServiceImpl implements StudentService {

    private final StudentRepository repo;

    public StudentServiceImpl(StudentRepository repo) {
        this.repo = repo;
    }

    @Override
    public Student saveStudent(Student student) {
        return repo.save(student);
    }

    @Override
    public List<Student> getAllStudents() {
        return repo.findAll();
    }

    @Override
    public Optional<Student> getStudentById(Long id) {
        return repo.findById(id);
    }

    @Override
    public Student updateStudent(Student student) {
        return repo.save(student);
    }

    @Override
    public void deleteStudent(Long id) {
        repo.deleteById(id);
    }

    @Override
    public List<Student> searchStudents(String keyword) {
        if (keyword == null || keyword.trim().isEmpty()) {
            return repo.findAll();
        }
        return repo.findByNameContainingIgnoreCaseOrCourseContainingIgnoreCaseOrRollNoContainingIgnoreCase(
                keyword, keyword, keyword);
    }

    @Override
    public Student getStudentByRollNo(String rollNo) {
        return repo.findByRollNo(rollNo);   // NEW METHOD
    }
}
