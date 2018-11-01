resource "aws_key_pair" "${var.appname}" {
  key_name   = "${var.appname}"
  public_key = "${file("/var/lib/jenkins/.ssh/id_rsa.pub")}"
}
