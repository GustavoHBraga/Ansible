resource "aws_instance" "maquina" {
    depends_on = [ aws_key_pair.chaveSSH ]
  ami      = "ami-0e001c9271cf7f3b9" # Ubuntu Server
  instance_type = var.instancia
  key_name = var.chave
  count = var.count_instances
  tags = {
    Name = "Terraform Ansible Python"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name = var.chave
  public_key = "${file("${var.chave}.pub")}"
}

output "IP_maquina_1" {
  value = aws_instance.maquina[0].public_ip
}

output "IP_maquina_2" {
  value = aws_instance.maquina[1].public_ip
}