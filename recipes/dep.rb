#
# Cookbook Name:: windows
# Recipe:: dep
#
# Copyright (c) 2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

unless node[:platform].eql? windows
  raise 'This recipe is meant to be run on a Windows node.'
end

include_recipe 'windows::reboot_handler'

windows_batch "update DEP to #{node[:windows][:dep]}" do
  code "bcdedit.exe /set {current} nx #{node[:windows][:dep]}"
end

windows_reboot 30 do
  reason 'DEP settings have been updated.'
  action :request
end
