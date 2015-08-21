Facter.add('disks_array') do
  setcode do
    pvs = Facter::Core::Execution.exec('lspv').split("\n").collect { |line| line.split[0] }
  end
end
