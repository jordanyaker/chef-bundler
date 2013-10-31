rvm_shell "run bundle update in app directory" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code %{sudo bundle update}
end
