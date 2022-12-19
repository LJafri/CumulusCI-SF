Introduction
CumulusCI helps development teams build great applications on the Salesforce platform by automating org setup, testing, and deployment.

Automation with CumulusCI
If your product development lifecycle and release process is anything like ours at Salesforce.org, it’s complex. You’re managing multiple packages, dependencies, orgs, and release versions. Not to mention managing org metadata and all the setup operations that need to run in the right sequence, before or after a package is installed, to create a properly configured org.

The CumulusCI command-line interface, cci, runs single-action tasks and multiple-action flows for development and testing.

MetaCI uses CumulusCI flows to build Salesforce managed packages from GitHub repositories.

MetaDeploy automates setup and configuration of customer orgs.

You can use the very same automation used internally by Salesforce.org to quickly:

Build sophisticated orgs with dependencies automatically installed.

Load and retrieve sample datasets to make your orgs feel like a production environment.

Apply transformations to existing metadata to tailor orgs to your specific requirements.

Run builds in continuous integration systems.

Create end-to-end browser tests and set up automation using Robot Framework.

The automation defined using CumulusCI is portable. It’s stored in a version control repository and can be run from your local command line, from a continuous integration system, or from a customer-facing installer. CumulusCI can run automation on scratch orgs created using the Salesforce CLI, or on persistent orgs like sandboxes, production orgs, and Developer Edition orgs.

Finally, by way of introduction, CumulusCI is more than just a set of tools. It represents our holistic approach to product development. Rather than focusing on just the Org Development Model or the Package Development Model, Salesforce.org has implemented its own Product Delivery Model using CumulusCI.

https://cumulusci.readthedocs.io/en/stable/intro.html
