require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/local/bin/phpunit48') do
  it { should be_executable }
end
describe file('/usr/local/bin/phpunit54') do
  it { should be_executable }
end
describe file('/usr/local/bin/phpmetrics') do
  it { should be_executable }
end

