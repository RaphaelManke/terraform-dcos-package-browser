resource "aws_launch_configuration" "app-launch-conf" {
  security_groups = ["${aws_security_group.app-allow_all.id}"]
  image_id = "${lookup(var.ubuntu_amis, var.aws_region)}"
  instance_type = "${var.app-instance-type}"
  key_name = "${aws_key_pair.ssh-key.key_name}"
  user_data = "${template_file.app_user_data.rendered}"
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = false
  }
}

resource "template_file" "app_user_data" {
  template = "${file("${path.module}/app-user_data.sh")}"

  vars {

  }
}