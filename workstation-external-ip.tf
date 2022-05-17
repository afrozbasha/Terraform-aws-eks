# having a website such as icanhazip.com which retrieve your IP, set it in your terraform file as data
data "http" "workstation-external-ip" {
  url = "http://ipv4.icanhazip.com"
}

# Override with variable or hardcoded value if necessary
#whenever you want to place your IP just use data.http.myip.body

locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.body)}/32"
}