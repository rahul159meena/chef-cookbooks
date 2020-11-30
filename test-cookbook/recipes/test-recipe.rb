#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file '/myfile' do
	content "Hello Dear Students , Gud morning, Gud Evening"
	action :create
end

execute "run a script" do
	command <<-EOH
	mkdir /saidir
	touch /saifile
	EOH
end

user "rahul" do
	action :create
end

group "Devops" do
	action :create
	members 'rahul'
	append true 
end
