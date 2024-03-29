// Generated by gencpp from file driver/directions.msg
// DO NOT EDIT!


#ifndef DRIVER_MESSAGE_DIRECTIONS_H
#define DRIVER_MESSAGE_DIRECTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace driver
{
template <class ContainerAllocator>
struct directions_
{
  typedef directions_<ContainerAllocator> Type;

  directions_()
    : direction(0)
    , status(0)  {
    }
  directions_(const ContainerAllocator& _alloc)
    : direction(0)
    , status(0)  {
  (void)_alloc;
    }



   typedef int16_t _direction_type;
  _direction_type direction;

   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::driver::directions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::driver::directions_<ContainerAllocator> const> ConstPtr;

}; // struct directions_

typedef ::driver::directions_<std::allocator<void> > directions;

typedef boost::shared_ptr< ::driver::directions > directionsPtr;
typedef boost::shared_ptr< ::driver::directions const> directionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::driver::directions_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::driver::directions_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'driver': ['/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg', '/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::driver::directions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::driver::directions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::driver::directions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::driver::directions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::driver::directions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::driver::directions_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::driver::directions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c4878b49e480178b449ff864f10fa72";
  }

  static const char* value(const ::driver::directions_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c4878b49e480178ULL;
  static const uint64_t static_value2 = 0xb449ff864f10fa72ULL;
};

template<class ContainerAllocator>
struct DataType< ::driver::directions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "driver/directions";
  }

  static const char* value(const ::driver::directions_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::driver::directions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 direction\n"
"uint8 status\n"
;
  }

  static const char* value(const ::driver::directions_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::driver::directions_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct directions_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::driver::directions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::driver::directions_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int16_t>::stream(s, indent + "  ", v.direction);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRIVER_MESSAGE_DIRECTIONS_H
