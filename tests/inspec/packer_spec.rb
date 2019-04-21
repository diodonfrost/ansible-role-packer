# Check if Packer is functionnal

control 'Packer-01' do
  impact 1.0
  title 'Packer install'
  desc 'Packer should be functionnal'
  describe command('/usr/local/bin/packer version') do
    its('exit_status') { should eq 0 }
  end
end
