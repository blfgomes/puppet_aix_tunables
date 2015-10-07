# aix_tunables

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What aix_tunables affects](#what-aix_tunables-affects)
    * [Beginning with aix_tunables](#beginning-with-aix_tunables)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
7. [Authors](#authors)
8. [Contributors](#contributors)

## Overview

Configures AIX Kernel Tunables and Devices.

## Module Description

This module configures the following Kernel Tunables on AIX:
* asoo
* ioo
* nfso
* no
* schedo
* vmo

Restricted tunables are not currently supported.

The following devices are configurable through this module:
* disk
* en
* ent
* sys0

## Setup

### What aix_tunables affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Beginning with aix_tunables

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

Tested on AIX 6.1 and Puppet 3.7.3.
Restricted tunables are not currently supported.

## Development

If you have any interest in contributing or using this module, please let me know!
(See my email below!)

## Authors

Bruno Gomes <blfgomes@gmail.com>

## Contributors

Many thanks to Daniel Meireles <danielbmeireles@gmail.com>, an ex-IBM employee,
for helping me out with his AIX knowledge!
Release Notes/Contributors/Etc **Optional**
