// Auto-generated. Do not edit!

// (in-package test2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MultiplyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.B = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyRequest
    // Serialize message field [A]
    bufferOffset = _serializer.float64(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.float64(obj.B, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyRequest
    let len;
    let data = new MultiplyRequest(null);
    // Deserialize message field [A]
    data.A = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test2/MultiplyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ef19c74da855773d3bf3fef3bd6f069';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 A
    float64 B
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyRequest(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0.0
    }

    return resolved;
    }
};

class MultiplyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MUL = null;
    }
    else {
      if (initObj.hasOwnProperty('MUL')) {
        this.MUL = initObj.MUL
      }
      else {
        this.MUL = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyResponse
    // Serialize message field [MUL]
    bufferOffset = _serializer.float64(obj.MUL, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyResponse
    let len;
    let data = new MultiplyResponse(null);
    // Deserialize message field [MUL]
    data.MUL = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test2/MultiplyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c5ef433cb1dd7d4f8ca73c10abb2759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 MUL
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyResponse(null);
    if (msg.MUL !== undefined) {
      resolved.MUL = msg.MUL;
    }
    else {
      resolved.MUL = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: MultiplyRequest,
  Response: MultiplyResponse,
  md5sum() { return 'd93544996623378ddb27581d921401f7'; },
  datatype() { return 'test2/Multiply'; }
};
