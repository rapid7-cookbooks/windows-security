#
# Cookbook Name:: windows
# Recipe:: dep
#
# Copyright (c) 2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

# TODO: Just use :enabled, :disabled, :unchanged
# ASLR can be set to: 0, 1, -1
default[:windows][:aslr] = 1

# DEP can be set to: AlwaysOff, AlwaysOn, OptIn, or OptOut
default[:windows][:dep] = 'OptIn'
