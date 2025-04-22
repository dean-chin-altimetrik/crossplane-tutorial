# crossplane-general

This document contains a list of general notes about crossplane

## Links

Here are some useful links:
| Link | Description |
|---|---|
| https://marketplace.upbound.io/providers | Crossplane Marketplace |
| https://docs.crossplane.io/latest/api/ | Crossplane API page - has complete schema |


## Packages

There are three types of packages:
- Providers
- Configurations
- Functions

## Crossplane Compositions

Crossplane compositions consist of 3 components
- **Composite Resource Definitions**: They extend kubernetes by creating and manage custom resources
- Compositions
- Composite Resources

## Cool Tools

### kubectl-neat

I ended up adding it to my devbox.json `"kubectl-neat@2.0.3",`

Other way to install is the following, but I did not really try to hard to get it to work. Had to install krew using `brew install krew`.
Then installed as a kubectl plugin `kubectl krew install neat`

How to use:

```bash
kubectl neat get composition cluster-aws -o yaml | kubectl-neat  > composition-cluster-aws.yaml
```
