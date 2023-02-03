//OUTPUT
 output "content-from-get" {
   value = local_file.get.content
 }

 output "content-from-get2" {
   value = local_file.get.filename
 }