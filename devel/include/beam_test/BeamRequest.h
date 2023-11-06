// Generated by gencpp from file beam_test/BeamRequest.msg
// DO NOT EDIT!


#ifndef BEAM_TEST_MESSAGE_BEAMREQUEST_H
#define BEAM_TEST_MESSAGE_BEAMREQUEST_H


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
struct BeamRequest_
{
  typedef BeamRequest_<ContainerAllocator> Type;

  BeamRequest_()
    : In()  {
    }
  BeamRequest_(const ContainerAllocator& _alloc)
    : In(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _In_type;
  _In_type In;





  typedef boost::shared_ptr< ::beam_test::BeamRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beam_test::BeamRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BeamRequest_

typedef ::beam_test::BeamRequest_<std::allocator<void> > BeamRequest;

typedef boost::shared_ptr< ::beam_test::BeamRequest > BeamRequestPtr;
typedef boost::shared_ptr< ::beam_test::BeamRequest const> BeamRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beam_test::BeamRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beam_test::BeamRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beam_test::BeamRequest_<ContainerAllocator1> & lhs, const ::beam_test::BeamRequest_<ContainerAllocator2> & rhs)
{
  return lhs.In == rhs.In;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beam_test::BeamRequest_<ContainerAllocator1> & lhs, const ::beam_test::BeamRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beam_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beam_test::BeamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beam_test::BeamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beam_test::BeamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beam_test::BeamRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beam_test::BeamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beam_test::BeamRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beam_test::BeamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06aee6843ff0faa82fe25c53acb8e761";
  }

  static const char* value(const ::beam_test::BeamRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06aee6843ff0faa8ULL;
  static const uint64_t static_value2 = 0x2fe25c53acb8e761ULL;
};

template<class ContainerAllocator>
struct DataType< ::beam_test::BeamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beam_test/BeamRequest";
  }

  static const char* value(const ::beam_test::BeamRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beam_test::BeamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string In\n"
;
  }

  static const char* value(const ::beam_test::BeamRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beam_test::BeamRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.In);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BeamRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beam_test::BeamRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beam_test::BeamRequest_<ContainerAllocator>& v)
  {
    s << indent << "In: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.In);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEAM_TEST_MESSAGE_BEAMREQUEST_H