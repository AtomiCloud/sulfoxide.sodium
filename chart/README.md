# atomi-policies

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.7.5](https://img.shields.io/badge/AppVersion-2.7.5-informational?style=flat-square)

Chart to install AtomiCloud's Cluster Policies

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kyverno.github.io/kyverno/ | kyverno-policies | 2.7.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| globalExcludedNamespace[0] | string | `"kube-system"` |  |
| kyverno-policies.podSecuritySeverity | string | `"medium"` |  |
| kyverno-policies.podSecurityStandard | string | `"baseline"` |  |
| kyverno-policies.policyExclude.disallow-capabilities.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-host-namespaces.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-host-path.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-host-path.any[1].resources.names[0] | string | `"otel-container-logs-collector*"` |  |
| kyverno-policies.policyExclude.disallow-host-path.any[1].resources.namespaces[0] | string | `"otel"` |  |
| kyverno-policies.policyExclude.disallow-host-ports.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-host-process.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-privilege-escalation.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-privileged-containers.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-proc-mount.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.disallow-selinux.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.require-run-as-non-root-user.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.require-run-as-nonroot.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.restrict-apparmor-profiles.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.restrict-seccomp-strict.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.restrict-seccomp.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.restrict-sysctls.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.policyExclude.restrict-volume-types.any[0].resources.namespaces[0] | string | `"kube-system"` |  |
| kyverno-policies.validationFailureAction | string | `"Audit"` |  |
| policies.checkLandscapeAnnotation.enable | bool | `true` |  |
| policies.checkLandscapeAnnotation.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.checkLandscapeAnnotation.value | string | `"pichu"` |  |
| policies.checkLandscapeLabel.enable | bool | `true` |  |
| policies.checkLandscapeLabel.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.checkLandscapeLabel.value | string | `"pichu"` |  |
| policies.checkLayerAnnotation.enable | bool | `true` |  |
| policies.checkLayerAnnotation.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.checkLayerLabel.enable | bool | `true` |  |
| policies.checkLayerLabel.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.checkPlatformAnnotation.acceptedValues[0] | string | `"systems"` |  |
| policies.checkPlatformAnnotation.acceptedValues[1] | string | `"amide"` |  |
| policies.checkPlatformAnnotation.acceptedValues[2] | string | `"alkene"` |  |
| policies.checkPlatformAnnotation.enable | bool | `true` |  |
| policies.checkPlatformAnnotation.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.checkPlatformLabel.acceptedValues[0] | string | `"systems"` |  |
| policies.checkPlatformLabel.acceptedValues[1] | string | `"amide"` |  |
| policies.checkPlatformLabel.acceptedValues[2] | string | `"alkene"` |  |
| policies.checkPlatformLabel.enable | bool | `true` |  |
| policies.checkPlatformLabel.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.disableCriSockMount.enable | bool | `true` |  |
| policies.disableCriSockMount.exclude | object | `{}` |  |
| policies.disallowEmptyIngress.enable | bool | `true` |  |
| policies.disallowEmptyIngress.exclude | object | `{}` |  |
| policies.disallowLatestTag.enable | bool | `true` |  |
| policies.disallowLatestTag.exclude | object | `{}` |  |
| policies.disallowNodePorts.enable | bool | `true` |  |
| policies.disallowNodePorts.exclude | object | `{}` |  |
| policies.requireAtomiCloudAnnotations.enable | bool | `true` |  |
| policies.requireAtomiCloudAnnotations.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.requireAtomiCloudLabels.enable | bool | `true` |  |
| policies.requireAtomiCloudLabels.exclude.names[0] | string | `"kyverno-cleanup-controller-*"` |  |
| policies.requireRequestLimits.enable | bool | `true` |  |
| policies.requireRequestLimits.exclude.names[0] | string | `"otel-target-allocator-targetallocator-*"` |  |
| serviceTree.landscape | string | `"pichu"` |  |
| serviceTree.layer | string | `"1"` |  |
| serviceTree.module | string | `"policies"` |  |
| serviceTree.platform | string | `"systems"` |  |
| serviceTree.service | string | `"policy-engine"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.1](https://github.com/norwoodj/helm-docs/releases/v1.11.1)