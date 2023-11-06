// Generated by gencpp from file test2/MultiplyRequest.msg
// DO NOT EDIT!


#ifndef TEST2_MESSAGE_MULTIPLYREQUEST_H
#define TEST2_MESSAGE_MULTIPLYREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test2
{
template <class ContainerAllocator>
struct MultiplyRequest_
{
  typedef MultiplyRequest_<ContainerAllocator> Type;

  MultiplyRequest_()
    : A(0.0)
    , B(0.0)  {
    }
  MultiplyRequest_(const ContainerAllocator& _alloc)
    : A(0.0)
    , B(0.0)  {
  (void)_alloc;
    }



   typedef double _A_type;
  _A_type A;

   typedef double _B_type;
  _B_type B;





  typedef boost::shared_ptr< ::test2::MultiplyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test2::MultiplyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MultiplyRequest_

typedef ::test2::MultiplyRequest_<std::allocator<void> > MultiplyRequest;

typedef boost::shared_ptr< ::test2::MultiplyRequest > MultiplyRequestPtr;
typedef boost::shared_ptr< ::test2::MultiplyRequest const> MultiplyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test2::MultiplyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test2::MultiplyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::test2::MultiplyRequest_<ContainerAllocator1> & lhs, const ::test2::MultiplyRequest_<ContainerAllocator2> & rhs)
{
  return lhs.A == rhs.A &&
    lhs.B == rhs.B;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::test2::MultiplyRequest_<ContainerAllocator1> & lhs, const ::test2::MultiplyRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace test2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::test2::MultiplyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test2::MultiplyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test2::MultiplyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test2::MultiplyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test2::MultiplyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test2::MultiplyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test2::MultiplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ef19c74da855773d3bf3fef3bd6f069";
  }

  static const char* value(const ::test2::MultiplyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ef19c74da855773ULL;
  static const uint64_t static_value2 = 0xd3bf3fef3bd6f069ULL;
};

template<class ContainerAllocator>
struct DataType< ::test2::MultiplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test2/MultiplyRequest";
  }

  static const char* value(const ::test2::MultiplyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test2::MultiplyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 A\n"
"float64 B\n"
;
  }

  static const char* value(const ::test2::MultiplyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test2::MultiplyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
      stream.next(m.B);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiplyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test2::MultiplyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test2::MultiplyRequest_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<double>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<double>::stream(s, indent + "  ", v.B);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST2_MESSAGE_MULTIPLYREQUEST_H
