resource "aws_elastic_beanstalk_environment" "welxome-2-env" {

  name = "welxome-2-tf-env"
  application = aws_elastic_beanstalk_application.welxome-2_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.9 running PHP 8.0"
  description = "environment for flask app"
  version_label = aws_elastic_beanstalk_application_version.welxome-2_app_ver.name

  setting {
      namespace = "aws:autoscaling:launchconfiguration"
      name = "IamInstanceProfile"
      value = "aws-elasticbeanstalk-ec2-role"
  }

}