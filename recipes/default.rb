#
# Cookbook:: oracle-xe-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

oracle_installer = node['oracle-xe-windows']['url']
cookbook_tmp = 'C:\\oracle-xe-windows'.frozen

directory cookbook_tmp do
  recursive true
  action :create
end

template "#{cookbook_tmp}\\OracleXE-Install.iss" do
  source 'OracleXE-install.erb'
  variables(
    tns_port: node['oracle-xe-windows']['tns-port'],
    mts_port: node['oracle-xe-windows']['mts-port'],
    http_port: node['oracle-xe-windows']['http-port'],
    sys_password: node['oracle-xe-windows']['sys-password']
  )
end

package 'Oracle 11g xe' do
  installer_type :custom
  source oracle_installer
  options "/s /f1\"#{cookbook_tmp}\\OracleXE-Install.iss\" /f2\"#{cookbook_tmp}\\setup.log\""
  notifies :delete, "directory[#{cookbook_tmp}]"
end
