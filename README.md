# Description

This cookbook install Oracle 11g XE on Windows.
This cookbook will only work with the 64 bit version of the Installer

# Requirements

## Platform:

* Windows (= 10)

## Cookbooks:

*No dependencies defined*

# Attributes

* `node['oracle-xe-windows']['url']` -  Defaults to `nil`.
* `node['oracle-xe-windows']['http-port']` -  Defaults to `8080`.
* `node['oracle-xe-windows']['mts-port']` -  Defaults to `2031`.
* `node['oracle-xe-windows']['tns-port']` -  Defaults to `1521`.
* `node['oracle-xe-windows']['sys-password']` -  Defaults to `password`.

# Recipes

* oracle-xe-windows::default

# License and Maintainer

Maintainer:: Bob Nowadly (<rmnowadly@sep.com>)
Source:: https://github.com/sep/oracle-xe-windows
Issues:: https://github.com/sep/oracle-xe-windows/issues

License:: Apache License 2.0
