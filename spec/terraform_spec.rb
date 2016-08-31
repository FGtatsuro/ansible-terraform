require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('terraform --version') do
  its(:exit_status) { should eq 0 }
end

describe command('terraform --version'), :if => ['alpine', 'debian'].include?(os[:family]) do
  its(:stdout) { should contain("Terraform v0.7.2") }
end
