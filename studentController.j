const Student = require('../models/Student');

exports.createStudent = async (req, res) => {
    const { name, age, class } = req.body;
    try {
        const newStudent = new Student({ name, age, class });
        await newStudent.save();
        res.status(201).json(newStudent);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

exports.getStudents = async (req, res) => {
    try {
        const students = await Student.find();
        res.json(students);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

// Add more CRUD operations as needed...
