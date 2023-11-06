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

class BeamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.In = null;
    }
    else {
      if (initObj.hasOwnProperty('In')) {
        this.In = initObj.In
      }
      else {
        this.In = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BeamRequest
    // Serialize message field [In]
    bufferOffset = _serializer.string(obj.In, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeamRequest
    let len;
    let data = new BeamRequest(null);
    // Deserialize message field [In]
    data.In = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.In);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test2/BeamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06aee6843ff0faa82fe25c53acb8e761';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string In
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BeamRequest(null);
    if (msg.In !== undefined) {
      resolved.In = msg.In;
    }
    else {
      resolved.In = ''
    }

    return resolved;
    }
};

class BeamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ANG = null;
    }
    else {
      if (initObj.hasOwnProperty('ANG')) {
        this.ANG = initObj.ANG
      }
      else {
        this.ANG = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BeamResponse
    // Serialize message field [ANG]
    bufferOffset = _serializer.float64(obj.ANG, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeamResponse
    let len;
    let data = new BeamResponse(null);
    // Deserialize message field [ANG]
    data.ANG = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test2/BeamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab60b4a6b63abf3a7532145e682dc218';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ANG
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BeamResponse(null);
    if (msg.ANG !== undefined) {
      resolved.ANG = msg.ANG;
    }
    else {
      resolved.ANG = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: BeamRequest,
  Response: BeamResponse,
  md5sum() { return 'f776d2a85589bd6653da0466ec4b2203'; },
  datatype() { return 'test2/Beam'; }
};
