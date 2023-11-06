// Generated by gencpp from file beam_test/Beam.msg
// DO NOT EDIT!


#ifndef BEAM_TEST_MESSAGE_BEAM_H
#define BEAM_TEST_MESSAGE_BEAM_H

#include <ros/service_traits.h>


#include <beam_test/BeamRequest.h>
#include <beam_test/BeamResponse.h>


namespace beam_test
{

struct Beam
{

typedef BeamRequest Request;
typedef BeamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Beam
} // namespace beam_test


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beam_test::Beam > {
  static const char* value()
  {
    return "f776d2a85589bd6653da0466ec4b2203";
  }

  static const char* value(const ::beam_test::Beam&) { return value(); }
};

template<>
struct DataType< ::beam_test::Beam > {
  static const char* value()
  {
    return "beam_test/Beam";
  }

  static const char* value(const ::beam_test::Beam&) { return value(); }
};


// service_traits::MD5Sum< ::beam_test::BeamRequest> should match
// service_traits::MD5Sum< ::beam_test::Beam >
template<>
struct MD5Sum< ::beam_test::BeamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beam_test::Beam >::value();
  }
  static const char* value(const ::beam_test::BeamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beam_test::BeamRequest> should match
// service_traits::DataType< ::beam_test::Beam >
template<>
struct DataType< ::beam_test::BeamRequest>
{
  static const char* value()
  {
    return DataType< ::beam_test::Beam >::value();
  }
  static const char* value(const ::beam_test::BeamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beam_test::BeamResponse> should match
// service_traits::MD5Sum< ::beam_test::Beam >
template<>
struct MD5Sum< ::beam_test::BeamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beam_test::Beam >::value();
  }
  static const char* value(const ::beam_test::BeamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beam_test::BeamResponse> should match
// service_traits::DataType< ::beam_test::Beam >
template<>
struct DataType< ::beam_test::BeamResponse>
{
  static const char* value()
  {
    return DataType< ::beam_test::Beam >::value();
  }
  static const char* value(const ::beam_test::BeamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEAM_TEST_MESSAGE_BEAM_H
