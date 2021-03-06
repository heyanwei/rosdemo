// Generated by gencpp from file hello_demo/add_srv.msg
// DO NOT EDIT!


#ifndef HELLO_DEMO_MESSAGE_ADD_SRV_H
#define HELLO_DEMO_MESSAGE_ADD_SRV_H

#include <ros/service_traits.h>


#include <hello_demo/add_srvRequest.h>
#include <hello_demo/add_srvResponse.h>


namespace hello_demo
{

struct add_srv
{

typedef add_srvRequest Request;
typedef add_srvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct add_srv
} // namespace hello_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hello_demo::add_srv > {
  static const char* value()
  {
    return "2a5c7a37218262bae4fcfaa1007692aa";
  }

  static const char* value(const ::hello_demo::add_srv&) { return value(); }
};

template<>
struct DataType< ::hello_demo::add_srv > {
  static const char* value()
  {
    return "hello_demo/add_srv";
  }

  static const char* value(const ::hello_demo::add_srv&) { return value(); }
};


// service_traits::MD5Sum< ::hello_demo::add_srvRequest> should match 
// service_traits::MD5Sum< ::hello_demo::add_srv > 
template<>
struct MD5Sum< ::hello_demo::add_srvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hello_demo::add_srv >::value();
  }
  static const char* value(const ::hello_demo::add_srvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_demo::add_srvRequest> should match 
// service_traits::DataType< ::hello_demo::add_srv > 
template<>
struct DataType< ::hello_demo::add_srvRequest>
{
  static const char* value()
  {
    return DataType< ::hello_demo::add_srv >::value();
  }
  static const char* value(const ::hello_demo::add_srvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hello_demo::add_srvResponse> should match 
// service_traits::MD5Sum< ::hello_demo::add_srv > 
template<>
struct MD5Sum< ::hello_demo::add_srvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hello_demo::add_srv >::value();
  }
  static const char* value(const ::hello_demo::add_srvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_demo::add_srvResponse> should match 
// service_traits::DataType< ::hello_demo::add_srv > 
template<>
struct DataType< ::hello_demo::add_srvResponse>
{
  static const char* value()
  {
    return DataType< ::hello_demo::add_srv >::value();
  }
  static const char* value(const ::hello_demo::add_srvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HELLO_DEMO_MESSAGE_ADD_SRV_H
