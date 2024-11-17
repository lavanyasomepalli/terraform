output "lb_dns_name" {
description ="THe DNS name of the load balancer"
value="${aws_lb.external-alb.dns_name}"
}

