# atomi-policies

![Version: 1.5.0](https://img.shields.io/badge/Version-1.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.1.0](https://img.shields.io/badge/AppVersion-3.1.0-informational?style=flat-square)

Chart to install AtomiCloud's Cluster Policies

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kyverno.github.io/kyverno/ | kyverno-policies | 3.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| commonExclude.annotaions[0] | string | `"*-cleanup-controller-*"` |  |
| commonExclude.labels[0] | string | `"*-cleanup-controller-*"` |  |
| globalExcludedNamespace | list | `["kube-system"]` | Namespace to exclude globally |
| kyverno-policies | object | `{"includeRestrictedPolicies":["disallow-privilege-escalation","require-run-as-non-root-user","require-run-as-nonroot","restrict-volume-types"],"podSecuritySeverity":"medium","podSecurityStandard":"baseline","policyExclude":{"disallow-capabilities":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-host-namespaces":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-host-path":{"any":[{"resources":{"namespaces":["kube-system"]}},{"resources":{"names":["*-container-logs-collector*"],"namespaces":["sulfoxide"]}}]},"disallow-host-ports":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-host-process":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-privilege-escalation":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-privileged-containers":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-proc-mount":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"disallow-selinux":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"require-run-as-non-root-user":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"require-run-as-nonroot":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"restrict-apparmor-profiles":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"restrict-seccomp":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"restrict-seccomp-strict":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"restrict-sysctls":{"any":[{"resources":{"namespaces":["kube-system"]}}]},"restrict-volume-types":{"any":[{"resources":{"namespaces":["kube-system"]}}]}},"validationFailureAction":"Audit"}` | Official Kyverno Policies. See [Kyverno Policies](https://github.com/kyverno/kyverno/tree/main/charts/kyverno-policies) |
| landscape | string | `"lapras"` |  |
| platforms[0] | string | `"sulfoxide"` |  |
| platforms[1] | string | `"sulfone"` |  |
| platforms[2] | string | `"nitroso"` |  |
| platforms[3] | string | `"amide"` |  |
| platforms[4] | string | `"alkene"` |  |
| platforms[5] | string | `"carboxlic-acid"` |  |
| policies | object | `{"checkLandscapeAnnotation":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]},"value":"lapras"},"checkLandscapeLabel":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]},"value":"lapras"},"checkLayerAnnotation":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"checkLayerLabel":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"checkPlatformAnnotation":{"acceptedValues":["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"],"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"checkPlatformLabel":{"acceptedValues":["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"],"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"disableCriSockMount":{"enable":true,"exclude":{}},"disallowEmptyIngress":{"enable":true,"exclude":{}},"disallowLatestTag":{"enable":true,"exclude":{}},"disallowNodePorts":{"enable":true,"exclude":{}},"requireAtomiCloudAnnotations":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"requireAtomiCloudLabels":{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}},"requireRequestLimits":{"enable":true,"exclude":{"names":["*-target-allocator-targetallocator-*"]}}}` | Configure Policies |
| policies.checkLandscapeAnnotation | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]},"value":"lapras"}` | Check if landscape annotation (atomi.cloud/landscape) value is correct |
| policies.checkLandscapeAnnotation.enable | bool | `true` | Enable this policy |
| policies.checkLandscapeAnnotation.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.checkLandscapeAnnotation.value | string | `"lapras"` | The correct landscape value |
| policies.checkLandscapeLabel | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]},"value":"lapras"}` | Check if landscape label (atomi.cloud/landscape) value is correct |
| policies.checkLandscapeLabel.enable | bool | `true` | Enable this policy |
| policies.checkLandscapeLabel.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.checkLandscapeLabel.value | string | `"lapras"` | The correct landscape value |
| policies.checkLayerAnnotation | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Check if layer annotation (atomi.cloud/layer) value is between 0 - 2 |
| policies.checkLayerAnnotation.enable | bool | `true` | Enable this policy |
| policies.checkLayerAnnotation.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.checkLayerLabel | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Check if layer label (atomi.cloud/layer) value is between 0 - 2 |
| policies.checkLayerLabel.enable | bool | `true` | Enable this policy |
| policies.checkLayerLabel.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.checkPlatformAnnotation | object | `{"acceptedValues":["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"],"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Check if platform annotation (atomi.cloud/platform) value is correct |
| policies.checkPlatformAnnotation.acceptedValues | list | `["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"]` | The correct platform value |
| policies.checkPlatformAnnotation.enable | bool | `true` | Enable this policy |
| policies.checkPlatformAnnotation.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.checkPlatformLabel | object | `{"acceptedValues":["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"],"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Check if platform label (atomi.cloud/platform) value is correct |
| policies.checkPlatformLabel.acceptedValues | list | `["sulfoxide","sulfone","nitroso","amide","alkene","carboxlic-acid"]` | The correct platform value |
| policies.checkPlatformLabel.enable | bool | `true` | Enable this policy |
| policies.checkPlatformLabel.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.disableCriSockMount | object | `{"enable":true,"exclude":{}}` | Prevent CRI Sock Mount |
| policies.disableCriSockMount.enable | bool | `true` | Enable this policy |
| policies.disableCriSockMount.exclude | object | `{}` | Exclusion rules |
| policies.disallowEmptyIngress | object | `{"enable":true,"exclude":{}}` | Disallow empty ingress |
| policies.disallowEmptyIngress.enable | bool | `true` | Enable this policy |
| policies.disallowEmptyIngress.exclude | object | `{}` | Exclusion rules |
| policies.disallowLatestTag | object | `{"enable":true,"exclude":{}}` | Disallow latest tag for docker images |
| policies.disallowLatestTag.enable | bool | `true` | Enable this policy |
| policies.disallowLatestTag.exclude | object | `{}` | Exclusion rules |
| policies.disallowNodePorts | object | `{"enable":true,"exclude":{}}` | Disallow node ports |
| policies.disallowNodePorts.enable | bool | `true` | Enable this policy |
| policies.disallowNodePorts.exclude | object | `{}` | Exclusion rules |
| policies.requireAtomiCloudAnnotations | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Require annotations in AtomiCloud's Service tree |
| policies.requireAtomiCloudAnnotations.enable | bool | `true` | Enable this policy |
| policies.requireAtomiCloudAnnotations.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.requireAtomiCloudLabels | object | `{"enable":true,"exclude":{"names":["*-cleanup-controller-*"]}}` | Require labels in AtomiCloud's Service tree |
| policies.requireAtomiCloudLabels.enable | bool | `true` | Enable this policy |
| policies.requireAtomiCloudLabels.exclude | object | `{"names":["*-cleanup-controller-*"]}` | Exclusion rules |
| policies.requireRequestLimits | object | `{"enable":true,"exclude":{"names":["*-target-allocator-targetallocator-*"]}}` | Require pods to have request and limits |
| policies.requireRequestLimits.enable | bool | `true` | Enable this policy |
| policies.requireRequestLimits.exclude | object | `{"names":["*-target-allocator-targetallocator-*"]}` | Exclusion rules |
| serviceTree | object | `{"layer":"1","module":"policies","platform":"sulfoxide","service":"sodium"}` | AtomiCloud Service Tree. See [ServiceTree](https://atomicloud.larksuite.com/wiki/OkfJwTXGFiMJkrk6W3RuwRrZs64?theme=DARK&contentTheme=DARK#MHw5d76uDo2tBLx86cduFQMRsBb) |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.1](https://github.com/norwoodj/helm-docs/releases/v1.11.1)