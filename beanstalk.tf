resource "aws_elastic_beanstalk_application" "eb_app" {
  name  = "eb-tf-app"
  description = "Hemia-project"
  
  appversion_lifecycle {
    max_count             = 128
    delete_source_from_s3 = true
  }

}

resource "aws_elastic_beanstalk_application_version" "eb_app_ver" {
    bucket = aws_s3_bucket.hemia_bucket.id
    key = aws_s3_bucket_object.eb_bucket_obj.id
    application = aws_elastic_beanstalk_application.eb_app.name
    name = "eb-tf-app-version-lable"

}
