# Check if Packer is functionnal

packer_cmd = '/usr/local/bin/packer version'
packer_cmd = 'packer --version' if os.family == 'windows'
packer_cmd = 'packer --version' if os.family == 'darwin'

control 'packer-01' do
  impact 1.0
  title 'Packer install'
  desc 'Packer should be functionnal'
  describe command(packer_cmd) do
    its('exit_status') { should eq 0 }
  end
end
