resource "aws_elastic_beanstalk_application" "welxome-2_app" {
  name  = "welxome-2-app"
  description = "welxome-2-project"

}
resource "aws_elastic_beanstalk_application_version" "welxome-2_app_ver" {
    bucket = aws_s3_bucket.hemia_bucket.id
    key = aws_s3_bucket_object.eb_bucket_obj.id
    application = aws_elastic_beanstalk_application.welxome-2_app.name
    name = "welxome-tf-app-version-lable"

}