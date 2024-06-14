module "prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  count_instances = 2
  chave = "IaC_Ansible"
}

output "IP_Ansible_1" {
  value = module.prod.IP_maquina_1
  
}
output "IP_Ansible_2" {
  value = module.prod.IP_maquina_2
  
}