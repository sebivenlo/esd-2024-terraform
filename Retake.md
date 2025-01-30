# ESD - Terraform ~Retake
## Contents


 


## Terraform 
- Provider/Publisher: HashiCorp
- Language: HCL (HashiCorp Configuration Language)
- Purpose: Provision and manage infrastructure resources (multi-cloud and on-prem)
- License: MPL 2.0 and BSL for some advanced capabilities
- State Management: Uses a single state file (can be stored locally or remotely)


## Pulumi
- Provider/Publisher: Pulumi Corp.
- Language: Multiple programming languages (TypeScript, Python, Go, C#, Java, etc.)
- Purpose: Provision and manage infrastructure via an “Infrastructure as Software” approach
- License: Apache License 2.0 (Community Edition); additional commercial offerings
- State Management: Managed in the Pulumi Service (SaaS) or self-hosted (e.g., AWS S3, Git-based, etc.)


## AWS CloudFormation
- Provider/Publisher: Amazon Web Services (AWS)
- Language: JSON or YAML templates
- Purpose: Provision and manage AWS resources (primarily focused on AWS ecosystem)
- License: Proprietary (AWS service) – no additional cost for CloudFormation itself, but AWS usage fees apply
- State Management: Handled by AWS via “Stacks” stored within the CloudFormation service


## OpenTofu
- Provider/Publisher: Community-driven project (hosted under the Linux Foundation)
- Language: HCL (HashiCorp Configuration Language) / JSON
- Purpose: Provision and manage infrastructure resources across multiple providers; a fully open-source fork of Terraform
- License: MPL 2.0 (no BSL restrictions)
- State Management: Utilizes a state file (local or remote), analogous to Terraform



## Comparisons 
| Aspect                 | Terraform                                                 | Pulumi                                                                                | AWS CloudFormations                                                 | OpenTofu                                                                          |
|------------------------|-----------------------------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| Framework              | Standalone CLI tool                                       | CLI + optinal hosted services                                                         | AWS-native service for provisioning resources                       | Standalone CLI tool, community driven Terraform fork                              |
| Configuration Language | HCL/JSON                                                  | Multiply languages (TypeScript/JavaScript, Python, Go, C#, Java, F#, YAML)            | YAML/JSON                                                           | HCL/JSON                                                                          |
| Secret Management      | Secrets are stored in a seperate product(Vault)           | Secrets are encrypted in transit and in the state file                                | Deeply integrated in AWS Secres Manager and AWS SSM Parameter Store | Similar to terraform, no built-in store, recommended in a seperate product(vault) |
| State Handling         | Central state file,  supports remote backends (e.g S3)    | State managed in Pulumi Service or self-hosted (e.g S3)                               | AWS manages state internally (no local files)                       | Central state file, supports remote backends, just like Terraform                 |
| Extensibility          | Providers & Modules Ecosystem                             | Native providers(e.g AWS,Azure,GCP) + Terraform providers via Pulumi Terraform Bridge | Supports macros, nested stacks, and custom resources (AWS scope)    | Providers and modules (mirrowing Terraform ecosystem)                             |
| Execution Model        | Imperative runs on command                                | Imperative CLI approach                                                               | Declarative stack-based, changes orchestrated by AWS                | Imperative runs on command                                                        |
| Community Support      | Large established community, considered a standard in IaC | Growing community                                                                     | Large AWS user base, official AWS support                           | New Project (2023+), quickly growing                                              |
| Setup                  | Download Binary, add to PATH                              | Install CLI, or sign up for Pulumi Service                                            | No local setup needed (AWS console or CLI), part of AWS ecosystem   | Download Binary, add to PATH                                                      |
| Licensing              | BSL 1.1 from v1.5 onwards, previously MPL 2.0             | Apache License 2.0                                                                    | Proprietary (AWS Service), AWS resource usage fees                  | Mozilla Public License 2.0, no BSL restrictions                                   |




## S





