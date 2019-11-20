require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

['terraform', 'terraformer'].each do |cmd|
  describe command("#{cmd} version") do
    its(:exit_status) { should eq 0 }
  end
  describe file("/usr/local/bin/#{cmd}") do
    it { should exist }
  end
end

describe command('terraform version'), :if => ['alpine', 'debian'].include?(os[:family]) do
  its(:stdout) { should contain("Terraform v0.12.15") }
end

describe command('terraformer version'), :if => ['alpine', 'debian'].include?(os[:family]) do
  its(:stdout) { should contain("Terraformer v0.8.4") }
end
