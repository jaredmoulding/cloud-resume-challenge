# Provider Block
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

# S3 Bucket
resource "aws_s3_bucket" "jared-cloud-resume" {
    bucket = var.bucketname

        tags = {
            Name        = "S3 Bucket for Cloud Resume Project"
  }
}

resource "aws_s3_bucket_ownership_controls" "jared-cloud-resume" {
    bucket = aws_s3_bucket.jared-cloud-resume.id

    rule {
        object_ownership = "BucketOwnerPreferred"
    }
  }

resource "aws_s3_bucket_public_access_block" "jared-cloud-resume" {
  bucket = aws_s3_bucket.jared-cloud-resume.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "jared-cloud-resume" {
  depends_on = [
    aws_s3_bucket_ownership_controls.jared-cloud-resume,
    aws_s3_bucket_public_access_block.jared-cloud-resume,
  ]

  bucket = aws_s3_bucket.jared-cloud-resume.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.jared-cloud-resume.id
  key = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.jared-cloud-resume.id
  key = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "doggo" {
  bucket = aws_s3_bucket.jared-cloud-resume.id
  key = "doggo.jpg"
  source = "doggo.jpg"
  acl = "public-read"
}