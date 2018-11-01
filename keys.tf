resource "aws_key_pair" "${var.appname}" {
  key_name   = "project1"
  public_key = "${file("/var/lib/jenkins/.ssh/id_rsa.pub")}"
}
