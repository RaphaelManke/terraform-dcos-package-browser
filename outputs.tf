output "loadBalancer" {
  value = "${aws_elb.app-load_balancer.dns_name}"
}
