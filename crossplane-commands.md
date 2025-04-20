# crossplane-commands

This is a compilation for good to know crossplane commands

| COMMAND | DESCRIPTION | EXAMPLE |
|----|----|----|
| `crossplane beta trace <claim> <name> -n <namespace>` | Shows a tree-like structure of all the things managed by the claim | `crossplane beta trace clusterclaim cluster-01 --namespace a-team` |
| kubectol get managed | List of all resources managed by crossplane | |