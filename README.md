# Module 介绍:  
该 Module 定义创建 VMware 虚拟机模板。  

# 版本特性：  
支持自定义虚拟机规格  
支持 RHEL/CentOS 虚拟机创建  
支持自定义数据盘大小  
  
# 配置参考  
配置以下参数用于正常供给您的基础设施资源：  
- `idc_code` - (必填) 数据中心  
- `datastore` -（必填）数据存储  
- `resource_pool` - （必填）资源池  
- `network` - （必填）网络  
- `image` - （必填）操作系统  
- `data_disk_size_gb` - （必填）数据盘大小列表  
- `ips` - （必填）虚拟机ip地址  
- `netmask` - （必填）子网掩码  
- `gateway` - （必填）网关  
- `dns_server` - （必填）DNS域名解析  
- `data_disk_label` - （必填）数据盘标签  
- `thin_provisioned` - （必填）数据磁盘是否精简  
- `eagerly_scrub` - （必填）数据磁盘空间是否清零  
- `scsi_controller` - （必填）系统磁盘控制器  
- `data_disk_scsi_controller` - （必填）数据磁盘控制器  
- `domain` - （必填）主机域  
- `cpu` - （必填）虚拟机CPU配置  
- `memory` - （必填）虚拟机内存配置，单位MB  
- `disk_label` - （必填）系统盘标签  
- `instance_name` - （必填）主机名称  
- `instance_number` - （必填）创建实例数量  

只要设置了上述变量赋值，您应该可以使用 vSphere 6.5、6.7、7.0 环境进行虚拟机创建。  

使用示例：
```
module "vmware" {
  source = "../base-module/terraform-vmware-vm"
  idc_code                   = "请填写您的数据中心"
  datastore                  = "请填写您的存储名称"
  disk_label                 = ["disk0"]
  scsi_controller            = 0
  data_disk_scsi_controller  = []
  data_disk_label            = []
  data_disk_size_gb          = [10]
  thin_provisioned           = null
  eagerly_scrub              = null
  domain                     = "test.internal"
  instance_name              = "default-01"
  image                      = "请填写您的虚拟机模板"
  ips                        = "请填写您的虚拟机IP"
  dns_server                 = "请填写您的DNS服务器地址"
  netmask                    = "255.255.0.0"
  gateway                    = "请填写您的网关"
  cpu                        = 2
  memory                     = 4096
  network                    = var.network
  resource_pool              = "请填写您的资源池名称"
  instance_number            = 1
}
```