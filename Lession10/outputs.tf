

 output "latest_ubuntu_ami_id" {
 
   value = data.aws_ami.latest_ubuntu.id
 }

 output "latest_ubuntu_ami_name" {

   value = data.aws_ami.latest_ubuntu.name
 }

 output "latest_amazon_ami_id" {
  
   value = data.aws_ami.latest_amz_linux.id
 }

 output "latest_amazon_ami_name" {

   value = data.aws_ami.latest_amz_linux.name
 }
