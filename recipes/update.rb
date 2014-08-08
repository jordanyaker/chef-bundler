Chef::Log.info "Running bundle update"
common_groups = node[:bundler][:bundler_without_groups]
common_groups = common_groups.join(' ')

bundler_deployment = node[:bundler][:bundler_deployment]
if bundler_deployment
  # Check for a Gemfile.lock
  bundler_deployment = ::File.exists?(::File.join(new_resource.release_path, "Gemfile.lock"))
end

bundle_options = node[:bundler][:bundle_options]

command = "#{node[:bundler][:bundle_command]} update"
command += " --without #{common_groups}" unless common_groups.empty?
command += " --deployment" if bundler_deployment
command += " #{bundle_options}" if bundle_options

execute command do
  cwd node[:bundler][:path]
  user node[:bundler][:user]
end
