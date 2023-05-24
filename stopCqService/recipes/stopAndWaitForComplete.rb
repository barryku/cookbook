#
# Cookbook Name:: stopCqService
# Recipe:: stopAndWaitForComplete
#
# Copyright 2022, Adobe Systems, Inc.
#
# All rights reserved - Do Not Redistribute
#

cq_port = node['this']['application-configuration']['port']

service "cq5" do
	action :stop
end

cq_wait_for_stop_complete "Wait for AEM to stop completely" do
  cq_port cq_port
end

