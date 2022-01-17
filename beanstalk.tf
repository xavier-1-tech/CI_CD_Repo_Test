resource "aws_elastic_beanstalk_application" "eb_app" {
  name  = "eb-tf-app"
  description = "Hemia-project"

}
resource "aws_elastic_beanstalk_application_version" "eb_app_ver" {
    bucket = aws_s3_bucket.hemia_bucket.id
    key = aws_s3_bucket_object.eb_bucket_obj.id
    application = aws_elastic_beanstalk_application.eb_app.name
    name = "eb-tf-app-version-lable"

}