variable "idc_code" {
    description = "(必填)数据中心"
    type        = string
}

variable "datastore" {
    description = "数据存储"
    type        = string
}

variable "resource_pool" {
    description = "资源池"
    type        = string
}

variable "instance_name" {
    description = "主机名称"
    type        = string
}

variable "network" {
    description = "网络"
    type = string
}

variable "image" {
    description = "操作系统"
    type = string
}

variable "domain" {
    description = "主机域"
    type        = string
}

variable "cpu" {
    description = "虚拟机CPU配置"
    type        = number
}

variable "memory" {
    description = "虚拟机内存配置"
    type        = number
}

variable "disk_label" {
    description = "系统盘标签"
    type        = list(any)
}


variable "data_disk_size_gb" {
    description = "数据盘大小列表"
    type        = list
}

variable "data_disk_label" {
    description = "数据盘标签"
    type        = list
}

variable "thin_provisioned" {
    description = "数据磁盘是否精简，默认是true"
    type        = list
}

variable "eagerly_scrub" {
    description = "数据磁盘空间是否清零"
    type        = list
}

variable "scsi_controller" {
    description = "系统磁盘控制器"
    type        = number
}
variable "data_disk_scsi_controller" {
    description = "数据磁盘控制器"
    type        = list
}

variable "ips" {
    description = "虚拟机ip地址"
    type        = string
}

variable "netmask" {
    description = "子网掩码"
    type        = string
}

variable "gateway" {
    description = "网关"
    type        = string
}

variable "dns_server" {
    description = "DNS域名解析"
    type        = list(string)
}

variable "instance_number" {
    description = "创建虚拟机数量"
    type        = number
}