require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('python-virtualenv') do
  it { should be_installed }
end
describe package('git') do
  it { should be_installed }
end
describe package('ansible') do
  it { should be_installed }
end
