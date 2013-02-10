%w[python-software-properties].each do |pkg|
  package pkg
end

execute "add-apt-repository ppa:mythbuntu/0.24"

execute "apt-get update" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end
