#ifndef ICP_H
#define ICP_H
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <sophus/se3.hpp>

float ICP(pcl::PointCloud<pcl::PointXYZ> reference,
    pcl::PointCloud<pcl::PointXYZ> source, Sophus::SE3d &Trs);

Eigen::Matrix<float, 4, 4> localize(pcl::PointCloud<pcl::PointXYZ> reference,
    pcl::PointCloud<pcl::PointXYZ> source, std::vector<int> matched);

#endif
