#include "ros/ros.h"
#include "hello_demo/add_srv.h"

bool add(hello_demo::add_srv::Request &req, 
    hello_demo::add_srv::Response &resp)
{
    resp.sum = req.A+req.B;
    ROS_INFO("service add handle...");

    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "service_add");

    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("serviceadd", add);
    ros::spin();

    return 0;
}
