resource "aws_key_pair" "ssh-key" {
  key_name = "main-key"
  public_key = "${var.ssh_public_key}"
}
