const mongoose = require('mongoose')
// need to run `npm install mongoose-type-phone` in terminal to validate phone
// https://www.npmjs.com/package/mongoose-type-phone
// const mongooseTypePhone = require('mongoose-type-phone')

const patientSchema = new mongoose.Schema({
  firstName: {
    type: String,
    required: true
  },
  lastName: {
    type: String,
    required: true
  },
  dob: {
    type: Date,
    required: true
  },
  gender: {
    type: String,
    // required: true,
    enum: ['female', 'male', 'unspecified'],
    default: 'unspecified'
  },
  phone: {
    // type: mongoose.SchemaTypes.Phone
    type: Number,
    required: true,
    min: 10,
    max: 11
  },
  email: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Patient', patientSchema)
