module "k8s-aks" {
    env                                 = "k8s-aks"
    source                              = "./k8s-aks"
    subscription_id                     = "${var.subscription_id}"
    client_id                           = "${var.client_id}"
    client_secret                       = "${var.client_secret}"
    tenant_id                           = "${var.tenant_id}"
    location                            = "eastus"
    agent_count                         = 3
    dns_prefix                          = "k8saks"
    cluster_name                        = "k8saks"
    resource_group_name                 = "k8saks-ResourceGroup"
    log_analytics_workspace_name        = "k8saks-LogAnalyticsWorkspaceName"
    log_analytics_workspace_location    = "eastus"
    log_analytics_workspace_sku         = "PerGB2018"
    vm_size                             = "Standard_DS1_v2"
    os_type                             = "Linux"
    os_disk_size_gb                     = "30"
    admin_username                      = "ubuntu"
    ssh_public_key                      = "~/.ssh/id_rsa.pub"
}
