%w[python-software-properties].each do |pkg|
  package pkg
end

execute "add-apt-repository ppa:mythbuntu/#{node['mythtv']['version']}"
execute "apt-get update"
