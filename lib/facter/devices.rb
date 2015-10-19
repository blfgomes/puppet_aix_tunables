Facter.add('disks_array') do
  confine :kernel => 'AIX'
  setcode do
    begin
      pvs = Facter::Core::Execution.exec('lspv').split("\n").collect { |line| line.split[0] }
    rescue
      pvs = []
    end
  end
end

Facter.add('ens_array') do
  confine :kernel => 'AIX'
  setcode do
    begin
      ens = Facter::Core::Execution.exec('lsdev -Ct en').split("\n").collect { |line| line.split[0] }
    rescue
      ens = []
    end
  end
end

Facter.add('ents_array') do
  confine :kernel => 'AIX'
  setcode do
    begin
      ents = Facter::Core::Execution.exec('lsdev -Ct IBM,l-lan').split("\n").collect { |line| line.split[0] }
    rescue
      ents = []
    end
  end
end
