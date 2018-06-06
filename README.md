# Introduction 

This project provides some samples on using Azure AAD Based Identities for pods in AKS. It's closely related to Azure Managed Service Identity (MSI)

## Project Structure

* aad-pod-identity: A git submodule. Code for using AAD in k8s. [GitHub](https://github.com/Azure/aad-pod-identity)
* Scripts: Useful bash scripts. Reproducable demo.
    * init-aks: Ordered scripts for creatking AKS cluster then configuring kubectl 


## STATUS

[Linked Isse](https://github.com/Azure/aad-pod-identity/issues/38)

Run through each of /scripts in numeric order.

When complete, you also need to run the following:

```sh
kubectl create -f aadpodidentity.yaml

```

and

```sh
kubectl create -f aadpodidentitybinding.yaml
```

with details as below

```yaml
apiVersion: "aadpodidentity.k8s.io/v1"
kind: AzureIdentity
metadata:
 name: <any-idname>
spec:
 type: 1
 ResourceID: /subscriptions/<subid>/resourcegroups/<resourcegroup>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idname>
 ClientID: <clientid>
```

```yaml
apiVersion: "aadpodidentity.k8s.io/v1"
kind: AzureIdentityBinding
metadata:
 name: demo1-azure-identity-binding
spec:
 AzureIdentity: <idname>
 Selector: <label value to match>
```

See [this repo](https://github.com/Azure/aad-pod-identity) for original docs