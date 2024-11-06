#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>

#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui/highgui.hpp>
#include <vector>
#include <iostream>

class ImageSubscriber : public rclcpp::Node
{
public:
	ImageSubscriber() : Node("image_subscriber")
	{
		RCLCPP_INFO(this->get_logger(), "Initializing ImageSubscriber node");

		RCLCPP_INFO(this->get_logger(), "Starting camera subscription");

		camera_subscription_ = this->create_subscription<sensor_msgs::msg::Image>(
			"/image_raw",
			10,
			std::bind(&ImageSubscriber::onImageMsg, this, std::placeholders::_1));
	}

private:
	rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr camera_subscription_;

	void onImageMsg(const sensor_msgs::msg::Image::SharedPtr msg)
	{
		// RCLCPP_INFO(this->get_logger(), "Received image!");

		cv_bridge::CvImagePtr cv_ptr = cv_bridge::toCvCopy(msg, msg->encoding);
		cv::Mat img = cv_ptr->image;
		cv::Mat img_g;
		cv::cvtColor(img, img, cv::COLOR_BGR2RGB);
		cv::cvtColor(img, img_g, cv::COLOR_RGB2GRAY);
		// RCLCPP_INFO(this->get_logger(), "Image converted to gray!");

		// cv::imshow("Image", img_g);
		//  cv::imshow("Original", img);

		// printing the number of rows and columns
		// RCLCPP_INFO(this->get_logger(), "Rows: %d, Cols: %d", rows, cols);
		// printing the row imagedata of the image in the console as 8 bit integers

		// unsigned char *input = (unsigned char *)(img_g.data);
		//std::vector<int> image_data;
		int iTop = img_g.rows;
		int jTop = img_g.cols;
		// RCLCPP_INFO(this->get_logger(), "iTop is %d", iTop);
		// RCLCPP_INFO(this->get_logger(), "jTop is %d", jTop);


		//unsigned long int imageData[921600];
		//RCLCPP_INFO(this->get_logger(), "imageData size is %d", sizeof(imageData));

		//std:cout << "Image Data: " << image_data.size() << std::endl;
		// int b;
		//int temp = 0;
		//std::cout << "Image Data: " << img_g.rows << " " << img_g.cols << std::endl;
		// RCLCPP_INFO(this->get_logger(), "Ready for for loop!");

		int64_t count = 0;	
		for (int i = 0; i < iTop; i++)
		{

					
			for (int j = 0; j < jTop; j++)
			{
				// b = input[img_g.step * j + i];
				int pixel_value = img_g.at<uchar>(i, j);
				RCLCPP_INFO(this->get_logger(), "Image Data: %d", pixel_value);	

				// send to the common ram
				//RCLCPP_INFO(this->get_logger(), "Image Data: %d", b);			
				//std::cout << j << " " << i << std::endl;
				//image_data.push_back(b);
				// imageData[temp] = b;
				// temp++;
				// count ++;

			}
		}

		RCLCPP_INFO(this->get_logger(), "DOOOOOOOONEEEEE!");

		RCLCPP_INFO(this->get_logger(), "Image size: %d", count);

		// RCLCPP_INFO(this->get_logger(), "Image Data: ", *input);
		//std::cout << "Image Data: " << sizeof(imageData) << std::endl;
		//RCLCPP_INFO(this->get_logger(), "Successfully loaded image");
		//cv::waitKey(5000);
	}
};

int main(int argc, char *argv[])
{
	setvbuf(stdout, NULL, _IONBF, BUFSIZ);

	rclcpp::init(argc, argv);
	rclcpp::spin(std::make_shared<ImageSubscriber>());

	rclcpp::shutdown();
	return 0;
}
