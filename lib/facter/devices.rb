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

Facter.add('ens_array_available') do
  confine :kernel => 'AIX'
  setcode do
    begin
      ens = Facter::Core::Execution.exec('lsdev -Ct en -S a').split("\n").collect { |line| line.split[0] }
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

Facter.add('p_ents_array') do
  confine :kernel => 'AIX'
  setcode do
    begin
    # Hackish way of listing the physical network adapters below (don't know if
    # there are more types):
    # Available 04-00 4-Port 10/100/1000 Base-TX PCI-Express Adapter (14106803)
    # Available 06-01 2-Port 10/100/1000 Base-TX PCI-Express Adapter (14104003)
      ents = Facter::Core::Execution.exec('lsdev -Ct 1410[46][08]03').split("\n").collect { |line| line.split[0] }
    rescue
      ents = []
    end
  end
end
