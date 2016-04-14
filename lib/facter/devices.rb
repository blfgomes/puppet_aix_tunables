## 
## Facts for disk, en and ent devices
##
## Returns array in Ruby
##
## Examples:
##
## disks_array => ["hdisk0", "hdisk1", "hdisk2", "hdisk3"]
## ens_array => ["en0", "en1", "en2"]
## ents_array => ["ent0", "ent1", "ent2"]
##

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
