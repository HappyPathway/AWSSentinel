#resource "tfe_sentinel_policy" "block_allow_all_cidr" {
#  name = "block_allow_all_cidr"
#  organization = "${var.organization}"
#  policy = "${file("${path.module}/policies/block_allow_all_cidr.sentinel.tpl")}"
#  enforce_mode = "hard-mandatory"
#}

resource "tfe_sentinel_policy" "intance_type" {
  name = "vm_size"
  organization = "${var.organization}"
  policy = "${file("${path.module}/policies/instance_type.sentinel.tpl")}"
  enforce_mode = "hard-mandatory"
}

