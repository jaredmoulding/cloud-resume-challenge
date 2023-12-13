# Jared's Cloud Resume Challenge

This project deploys an an AWS-Hosted Static Website using Hashicorp Terraform.

## Architecture

### Front End
The website is hosted in AWS as a static website using an AWS S3 Bucket.  
  
Files for the website are located at src/frontend.

The website consists of three files:
```
    index.html
    styles.css
    error.html
```

### Backend
Terraform, using the AWS Provider, is used as the IaC solution to create and destroy the S3 Bucket and Objects.  
  
Files for the backend/Terraform code are located at src/backend