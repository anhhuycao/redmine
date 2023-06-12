#!/bin/bash

sudo yum check-update
sudo yum -y update
sudo yum install -y htop

# sudo tee /etc/yum.repos.d/kubernetes.repo<<EOF
# [kubernetes]
# name=Kubernetes
# baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
# enabled=1
# gpgcheck=1
# repo_gpgcheck=1
# gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
# EOF

# sudo yum clean all && sudo yum -y makecache
# sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

# sudo sed -i '/swap/d' /etc/fstab
# sudo swapoff -a
# sudo setenforce 0
# sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config
# sudo modprobe overlay
# sudo modprobe br_netfilter
# sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
# net.bridge.bridge-nf-call-ip6tables = 1
# net.bridge.bridge-nf-call-iptables = 1
# net.ipv4.ip_forward = 1
# EOF
# sudo sysctl --system

# # Configure persistent loading of modules
# sudo tee /etc/modules-load.d/containerd.conf <<EOF
# overlay
# br_netfilter
# EOF
# # Load at runtime
# sudo modprobe overlay
# sudo modprobe br_netfilter

# # Ensure sysctl params are set
# sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
# net.bridge.bridge-nf-call-ip6tables = 1
# net.bridge.bridge-nf-call-iptables = 1
# net.ipv4.ip_forward = 1
# EOF
# # Reload configs
# sudo sysctl --system
# # Install required packages
# sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# # Add Docker repo
# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# # Install containerd
# sudo yum update -y && yum install -y containerd.io
# # Configure containerd and start service
# sudo mkdir -p /etc/containerd
# sudo containerd config default > /etc/containerd/config.toml
# # restart containerd
# sudo systemctl restart containerd
# sudo systemctl enable containerd

# sudo firewall-cmd --add-port={6443,2379-2380,10250,10251,10252,5473,179,5473}/tcp --permanent
# sudo firewall-cmd --add-port={4789,8285,8472}/udp --permanent
# sudo firewall-cmd --reload