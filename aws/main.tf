resource "aws_instance" "spot_vm" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  availability_zone = var.aws_zone != "" ? var.aws_zone : null

  dynamic "instance_market_options" {
    for_each = var.spot_instance ? [1] : []
    content {
      market_type = "spot"
      spot_options {
        max_price = var.spot_price
      }
    }
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.instance_name_prefix}-${count.index}"
    }
  )
}
