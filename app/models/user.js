const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
  name: {
    first: {
      type: String,
      required: true
    },
    middle: {
      type: String
    },
    last: {
      type: String,
      required: true
    }
  },
  specialty: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true,
    unique: true
  },
  hashedPassword: {
    type: String,
    required: true
  },
  token: String
}, {
  timestamps: true,
  toObject: {
    // remove `hashedPassword` field when we call `.toObject`
    transform: (_doc, user) => {
      delete user.hashedPassword
      return user
    }
  }
})

module.exports = mongoose.model('User', userSchema)
