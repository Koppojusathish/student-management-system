package com.example.student.controller;

import com.example.student.model.Student;
import com.example.student.service.StudentService;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/students")
public class StudentController {

    private final StudentService service;

    public StudentController(StudentService service) {
        this.service = service;
    }

    // List all students - home
    @GetMapping
    public String viewHome(Model model) {
        model.addAttribute("students", service.getAllStudents());
        return "index"; // /WEB-INF/views/index.jsp
    }

    // Show add student form
    @GetMapping("/new")
    public String showAddForm(Model model) {
        model.addAttribute("student", new Student());
        return "add-student";
    }

    // Save new student
    @PostMapping
    public String saveStudent(@ModelAttribute("student") Student student) {
        service.saveStudent(student);
        return "redirect:/students";
    }

    // Show edit page
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Student student = service.getStudentById(id).orElseThrow(() ->
                new IllegalArgumentException("Invalid student Id:" + id));
        model.addAttribute("student", student);
        return "edit-student";
    }

    // Update student
    @PostMapping("/update/{id}")
    public String updateStudent(@PathVariable Long id, @ModelAttribute("student") Student student) {
        // ensure id is set
        student.setId(id);
        service.updateStudent(student);
        return "redirect:/students";
    }

    // Delete
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        service.deleteStudent(id);
        return "redirect:/students";
    }
    
//    @GetMapping("/students/search-by-roll")
//    public String searchByRoll(@RequestParam String rollNo, Model model) {
//
//        Student s = service.getStudentByRollNo(rollNo);
//
//        if (s == null) {
//            model.addAttribute("message", "No student found with Roll No: " + rollNo);
//            return "error-page";   // use error.jsp
//        }
//
//        model.addAttribute("student", s);
//        return "index";
//    }

    //search by keyword
    @GetMapping("/search")
    public String searchStudents(@RequestParam("keyword") String keyword, Model model) {
        List<Student> students = service.searchStudents(keyword);
        
        if (students.isEmpty()) {
            return "noRecords"; // redirect to noRecords.jsp
        }

        model.addAttribute("students", students);
        model.addAttribute("keyword", keyword);
        return "index"; // show results if not empty
    }

}
