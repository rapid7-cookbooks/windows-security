#
# Cookbook Name:: windows
# Recipe:: aslr
#
# Copyright (c) 2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

unless node[:platform].eql? windows
  raise 'This recipe is meant to be run on a Windows node.'
end

include_recipe 'windows::reboot_handler'

registry_key 'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' do
  values [{
    :name => 'MoveImages',
    :type => :dword,
    :data => node[:windows][:aslr]
  }]
  action :create
end

windows_reboot 30 do
  reason 'ASLR settings have been updated.'
  action :request
end
