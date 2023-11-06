// Generated by gencpp from file test2/AddTwoInts.msg
// DO NOT EDIT!


#ifndef TEST2_MESSAGE_ADDTWOINTS_H
#define TEST2_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <test2/AddTwoIntsRequest.h>
#include <test2/AddTwoIntsResponse.h>


namespace test2
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace test2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test2::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::test2::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::test2::AddTwoInts > {
  static const char* value()
  {
    return "test2/AddTwoInts";
  }

  static const char* value(const ::test2::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::test2::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::test2::AddTwoInts >
template<>
struct MD5Sum< ::test2::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test2::AddTwoInts >::value();
  }
  static const char* value(const ::test2::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test2::AddTwoIntsRequest> should match
// service_traits::DataType< ::test2::AddTwoInts >
template<>
struct DataType< ::test2::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::test2::AddTwoInts >::value();
  }
  static const char* value(const ::test2::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test2::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::test2::AddTwoInts >
template<>
struct MD5Sum< ::test2::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test2::AddTwoInts >::value();
  }
  static const char* value(const ::test2::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test2::AddTwoIntsResponse> should match
// service_traits::DataType< ::test2::AddTwoInts >
template<>
struct DataType< ::test2::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::test2::AddTwoInts >::value();
  }
  static const char* value(const ::test2::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST2_MESSAGE_ADDTWOINTS_H