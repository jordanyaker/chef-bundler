rvm_shell "run bundle install in app directory" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code %{sudo bundle install}
end
