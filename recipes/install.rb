rvm_shell "run bundle install in app directory" do
  user node[:bundler][:user]
  group node[:bundler][:group]    

  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])

  command <<-SCRIPT
  	. /etc/profile.d/rvm.sh;
  	bundle install
  SCRIPT
end
