# lldpd

#### Table of Contents

1. [Overview](#overview)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module provides Vincent Bernat's lldpd. It only installs the package, enables the service and starts it.

Read more about LLDP here: https://vincentbernat.github.io/lldpd/ 

## Usage

    class { 'lldp': }

## Limitations

Only tested with Ubuntu and FreeBSD.

## Development

https://github.com/alxwr/puppet-alexw-lldp

Pull requests are welcome!
