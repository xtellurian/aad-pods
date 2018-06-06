# Introduction 

This project provides some samples on using Azure AAD Based Identities for pods in AKS. It's closely related to Azure Managed Service Identity (MSI)

## Project Structure

* aad-pod-identity: A git submodule. Code for using AAD in k8s. [GitHub](https://github.com/Azure/aad-pod-identity)
* Scripts: Useful bash scripts. Reproducable demo.
    * init-aks: Ordered scripts for creatking AKS cluster then configuring kubectl 

