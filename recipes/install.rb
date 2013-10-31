rvm_shell "run bundle install in app directory" do
  user node[:bundler][:user]
  group node[:bundler][:group]    

  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])

  code ". /etc/profile.d/rvm.sh; bundle install"
end
