resource "aws_autoscaling_group" "app-autoscaling-group" {
  name = "app-autoscaling-group"
  min_size = "${var.app-instance-count}"
  max_size = "${var.app-instance-count}"
  desired_capacity = "${var.app-instance-count}"

  availability_zones = ["${aws_subnet.vpc.availability_zone}"]
  vpc_zone_identifier = ["${aws_subnet.vpc.id}"]
  load_balancers = ["${aws_elb.app-load_balancer.id}"]
  launch_configuration = "${aws_launch_configuration.app-launch-conf.id}"
}