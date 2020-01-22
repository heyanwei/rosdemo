#include "ros/ros.h"
#include "hello_demo/add_srv.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "client_add");

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<hello_demo::add_srv>("serviceadd");

    hello_demo::add_srv srv;

    srv.request.A = 1;
    srv.request.B = 2;

    if(client.call(srv))
    {
        ROS_INFO("client_add success, result: %d", srv.response.sum);
        return 1;
    }
    else
    {
        ROS_INFO("client_add failed...");
        return 1;
    }
}