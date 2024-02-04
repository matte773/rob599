// Generated by gencpp from file rob599_hw1/approachFeedback.msg
// DO NOT EDIT!


#ifndef ROB599_HW1_MESSAGE_APPROACHFEEDBACK_H
#define ROB599_HW1_MESSAGE_APPROACHFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rob599_hw1
{
template <class ContainerAllocator>
struct approachFeedback_
{
  typedef approachFeedback_<ContainerAllocator> Type;

  approachFeedback_()
    : distance_to_obstacle(0.0)  {
    }
  approachFeedback_(const ContainerAllocator& _alloc)
    : distance_to_obstacle(0.0)  {
  (void)_alloc;
    }



   typedef float _distance_to_obstacle_type;
  _distance_to_obstacle_type distance_to_obstacle;





  typedef boost::shared_ptr< ::rob599_hw1::approachFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rob599_hw1::approachFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct approachFeedback_

typedef ::rob599_hw1::approachFeedback_<std::allocator<void> > approachFeedback;

typedef boost::shared_ptr< ::rob599_hw1::approachFeedback > approachFeedbackPtr;
typedef boost::shared_ptr< ::rob599_hw1::approachFeedback const> approachFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rob599_hw1::approachFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rob599_hw1::approachFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rob599_hw1::approachFeedback_<ContainerAllocator1> & lhs, const ::rob599_hw1::approachFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.distance_to_obstacle == rhs.distance_to_obstacle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rob599_hw1::approachFeedback_<ContainerAllocator1> & lhs, const ::rob599_hw1::approachFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rob599_hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rob599_hw1::approachFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rob599_hw1::approachFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rob599_hw1::approachFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b0895f7086961063ab269c461c489df4";
  }

  static const char* value(const ::rob599_hw1::approachFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb0895f7086961063ULL;
  static const uint64_t static_value2 = 0xab269c461c489df4ULL;
};

template<class ContainerAllocator>
struct DataType< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rob599_hw1/approachFeedback";
  }

  static const char* value(const ::rob599_hw1::approachFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 distance_to_obstacle\n"
;
  }

  static const char* value(const ::rob599_hw1::approachFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance_to_obstacle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct approachFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rob599_hw1::approachFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rob599_hw1::approachFeedback_<ContainerAllocator>& v)
  {
    s << indent << "distance_to_obstacle: ";
    Printer<float>::stream(s, indent + "  ", v.distance_to_obstacle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROB599_HW1_MESSAGE_APPROACHFEEDBACK_H
