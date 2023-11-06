// Generated by gencpp from file beam_test/BeamResponse.msg
// DO NOT EDIT!


#ifndef BEAM_TEST_MESSAGE_BEAMRESPONSE_H
#define BEAM_TEST_MESSAGE_BEAMRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beam_test
{
template <class ContainerAllocator>
struct BeamResponse_
{
  typedef BeamResponse_<ContainerAllocator> Type;

  BeamResponse_()
    : ANG(0.0)  {
    }
  BeamResponse_(const ContainerAllocator& _alloc)
    : ANG(0.0)  {
  (void)_alloc;
    }



   typedef double _ANG_type;
  _ANG_type ANG;





  typedef boost::shared_ptr< ::beam_test::BeamResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beam_test::BeamResponse_<ContainerAllocator> const> ConstPtr;

}; // struct BeamResponse_

typedef ::beam_test::BeamResponse_<std::allocator<void> > BeamResponse;

typedef boost::shared_ptr< ::beam_test::BeamResponse > BeamResponsePtr;
typedef boost::shared_ptr< ::beam_test::BeamResponse const> BeamResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beam_test::BeamResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beam_test::BeamResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beam_test::BeamResponse_<ContainerAllocator1> & lhs, const ::beam_test::BeamResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ANG == rhs.ANG;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beam_test::BeamResponse_<ContainerAllocator1> & lhs, const ::beam_test::BeamResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beam_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beam_test::BeamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beam_test::BeamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beam_test::BeamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beam_test::BeamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beam_test::BeamResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beam_test::BeamResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beam_test::BeamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ab60b4a6b63abf3a7532145e682dc218";
  }

  static const char* value(const ::beam_test::BeamResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xab60b4a6b63abf3aULL;
  static const uint64_t static_value2 = 0x7532145e682dc218ULL;
};

template<class ContainerAllocator>
struct DataType< ::beam_test::BeamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beam_test/BeamResponse";
  }

  static const char* value(const ::beam_test::BeamResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beam_test::BeamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 ANG\n"
;
  }

  static const char* value(const ::beam_test::BeamResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beam_test::BeamResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ANG);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BeamResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beam_test::BeamResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beam_test::BeamResponse_<ContainerAllocator>& v)
  {
    s << indent << "ANG: ";
    Printer<double>::stream(s, indent + "  ", v.ANG);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEAM_TEST_MESSAGE_BEAMRESPONSE_H
