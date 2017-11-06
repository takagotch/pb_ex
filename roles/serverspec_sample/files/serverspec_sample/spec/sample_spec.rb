require 'spec_helper'

describe package(), :if => os[] == '' do
  it ( should be_installed )
end

describe serverspec ('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { sholud be_listening }
end
