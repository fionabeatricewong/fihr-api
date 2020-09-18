const mongoose = require('mongoose')
// need to run `npm install mongoose-type-phone` in terminal to validate phone
// https://www.npmjs.com/package/mongoose-type-phone
// const mongooseTypePhone = require('mongoose-type-phone')

const patientSchema = new mongoose.Schema({
  firstName: {
    type: String,
    required: true
  },
  middleName: {
    type: String
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
    required: true,
    enum: ['female', 'Female', 'F', 'male', 'Male', 'M', 'unspecified', 'Unspecified', 'U'],
    default: 'unspecified'
  },
  phone: {
    // type: mongoose.SchemaTypes.Phone
    type: String,
    required: true,
    minlength: 10,
    maxlength: 16
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
