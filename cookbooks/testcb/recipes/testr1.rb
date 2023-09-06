#
# Cookbook:: testcb
# Recipe:: testr1
#
# Copyright:: 2023, The Authors, All Rights Reserved.

#update system
execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end

file '/etc/motd' do
  content node.default['testcb']['testattrib']
  owner 'root'
  group 'root'
  mode '0666'
end
