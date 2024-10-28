const mongoose = require('mongoose');

const StudentSchema = new mongoose.Schema({
    name: { type: String, required: true },
    age: { type: Number, required: true },
    class: { type: String, required: true },
    attendance: [{ date: Date, present: Boolean }]
});

module.exports = mongoose.model('Student', StudentSchema);
