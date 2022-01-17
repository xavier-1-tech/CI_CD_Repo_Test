resource "aws_elastic_beanstalk_application" "welxome_app" {
  name  = "welxome-app"
  description = "welxome-project"

}
resource "aws_elastic_beanstalk_application_version" "welxome_app_ver" {
    bucket = aws_s3_bucket.hemia_bucket.id
    key = aws_s3_bucket_object.eb_bucket_obj.id
    application = aws_elastic_beanstalk_application.welxome_app.name
    name = "welxome-tf-app-version-lable"

}