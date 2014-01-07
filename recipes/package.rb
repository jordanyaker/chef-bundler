rbenv_script "run bundle package in app directory" do
  user node[:bundler][:user]
  group node[:bundler][:group]  
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code %{bundle package}
end
