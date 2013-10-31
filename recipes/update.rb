rvm_shell "run bundle update in app directory" do
  user node[:bundler][:user]
  group node[:bundler][:group]    

  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])

  code ". /etc/profile.d/rvm.sh; bundle update"
end
