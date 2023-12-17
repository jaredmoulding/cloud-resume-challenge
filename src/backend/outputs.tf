output "path-output" {
    value = var.web-files-path
}

output "debug_info" {
  value = fileset("${path.module}\\cloud-resume-challenge\\src\\frontend\\*", "*")
}