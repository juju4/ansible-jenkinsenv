require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('python3-virtualenv'), :if => (os[:family] == 'ubuntu' && os[:release] == '20.04') do
  it { should be_installed }
end
describe package('python-virtualenv'), :if => !(os[:family] == 'ubuntu' && os[:release] == '20.04') do
  it { should be_installed }
end
describe package('git') do
  it { should be_installed }
end
describe package('ansible') do
  it { should be_installed }
end
