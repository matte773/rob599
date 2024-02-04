// Auto-generated. Do not edit!

// (in-package rob599_hw1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class stopping_distanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stopping_distanceRequest
    // Serialize message field [input]
    bufferOffset = _serializer.float32(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stopping_distanceRequest
    let len;
    let data = new stopping_distanceRequest(null);
    // Deserialize message field [input]
    data.input = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rob599_hw1/stopping_distanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79c3c282188d9b61edcde55d5577527e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stopping_distanceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = 0.0
    }

    return resolved;
    }
};

class stopping_distanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stopping_distanceResponse
    // Serialize message field [output]
    bufferOffset = _serializer.bool(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stopping_distanceResponse
    let len;
    let data = new stopping_distanceResponse(null);
    // Deserialize message field [output]
    data.output = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rob599_hw1/stopping_distanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5fa62db5c86ed745052c3b25d12f430';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool output
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stopping_distanceResponse(null);
    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = false
    }

    return resolved;
    }
};

module.exports = {
  Request: stopping_distanceRequest,
  Response: stopping_distanceResponse,
  md5sum() { return 'df4297412d514e842de4f3301701343a'; },
  datatype() { return 'rob599_hw1/stopping_distance'; }
};
