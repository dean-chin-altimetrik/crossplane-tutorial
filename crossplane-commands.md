# crossplane-commands

This is a compilation for good to know crossplane commands

| COMMAND | DESCRIPTION | EXAMPLE |
|----|----|----|
| `crossplane beta trace <claim> <name> -n <namespace>` | Shows a tree-like structure of all the things managed by the claim | `crossplane beta trace clusterclaim cluster-01 --namespace a-team` |
| `kubectl get managed` | List of all resources managed by crossplane | |
| `kubectl get pkgrev` | Get all package versions | |
| `kubectl get providers` | Get all providers | |
| `kubectl get crds` | Get all custom resource definitions | |