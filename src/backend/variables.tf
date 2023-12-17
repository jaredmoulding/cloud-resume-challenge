variable "bucketname" {
    description = "Value of the S3 Bucket Name"
    type = string
    default = "jared-cloud-resume-aws"
}

variable "web-files-path" {
    description = "Path to the website files"
    type = string
    default = "C:\\terraform\\cloud-resume-challenge\\src\\frontend\\"
}

variable "local_paths" {
  description = "Local system paths to the files"
  type        = list(string)
  default     = ["/path/to/file1.txt", "/path/to/file2.txt", "/path/to/file3.txt"]
}