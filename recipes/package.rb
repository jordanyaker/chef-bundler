rvm_shell "run bundle package in app directory" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code %{sudo undle package}
end
