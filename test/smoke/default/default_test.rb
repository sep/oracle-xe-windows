# # encoding: utf-8

# Inspec test for recipe oracle-xe-windows::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

script = <<-EOH
  sqlplus "sys/password as sysdba" 
EOH

describe powershell(script) do
  its('stdout') { should match ".*SQL\\*Plus: Release 11.2.0.2.0 Production.*" }
  its('stdout') { should match ".*SQL\\>.*" }
end