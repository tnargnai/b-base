#
# Cookbook Name:: b-base
# Recipe:: default
#

if platform_family?('rhel')
  include_recipe 'b-base::epel'
end

if platform_family?('debian')
  include_recipe 'apt'
end

# Install tools
node['default']['tools'].each do |pkg|
  package pkg do
    timeout 120
  end
end
