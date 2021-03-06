// Generated by gencpp from file hello_demo/add_srvRequest.msg
// DO NOT EDIT!


#ifndef HELLO_DEMO_MESSAGE_ADD_SRVREQUEST_H
#define HELLO_DEMO_MESSAGE_ADD_SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello_demo
{
template <class ContainerAllocator>
struct add_srvRequest_
{
  typedef add_srvRequest_<ContainerAllocator> Type;

  add_srvRequest_()
    : A(0)
    , B(0)
    , C(0)  {
    }
  add_srvRequest_(const ContainerAllocator& _alloc)
    : A(0)
    , B(0)
    , C(0)  {
  (void)_alloc;
    }



   typedef int32_t _A_type;
  _A_type A;

   typedef int32_t _B_type;
  _B_type B;

   typedef int32_t _C_type;
  _C_type C;





  typedef boost::shared_ptr< ::hello_demo::add_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_demo::add_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct add_srvRequest_

typedef ::hello_demo::add_srvRequest_<std::allocator<void> > add_srvRequest;

typedef boost::shared_ptr< ::hello_demo::add_srvRequest > add_srvRequestPtr;
typedef boost::shared_ptr< ::hello_demo::add_srvRequest const> add_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_demo::add_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_demo::add_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hello_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hello_demo::add_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_demo::add_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_demo::add_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_demo::add_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_demo::add_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_demo::add_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_demo::add_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7a68ce4e0b75a9719b4950a7069c9d4";
  }

  static const char* value(const ::hello_demo::add_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7a68ce4e0b75a97ULL;
  static const uint64_t static_value2 = 0x19b4950a7069c9d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_demo::add_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_demo/add_srvRequest";
  }

  static const char* value(const ::hello_demo::add_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_demo::add_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 A\n"
"int32 B\n"
"int32 C\n"
;
  }

  static const char* value(const ::hello_demo::add_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_demo::add_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
      stream.next(m.B);
      stream.next(m.C);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct add_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_demo::add_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_demo::add_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<int32_t>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<int32_t>::stream(s, indent + "  ", v.B);
    s << indent << "C: ";
    Printer<int32_t>::stream(s, indent + "  ", v.C);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_DEMO_MESSAGE_ADD_SRVREQUEST_H
