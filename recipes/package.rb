rvm_shell "run bundle package in app directory" do
  user node[:bundler][:user]
  group node[:bundler][:group]  
  
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])

  code <<-SCRIPT
  	. /etc/profile.d/rvm.sh;
  	bundle package
  SCRIPT
end
