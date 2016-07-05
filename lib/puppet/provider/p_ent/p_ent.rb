require 'puppet/provider/device'

Puppet::Type.type(:p_ent).provide :p_ent, :parent => Puppet::Provider::Device do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods

  def self.lsdev_cmd
    # Hackish way of listing the physical network adapters below (don't know if 
    # there are more types):
    # Available 04-00 4-Port 10/100/1000 Base-TX PCI-Express Adapter (14106803)
    # Available 06-01 2-Port 10/100/1000 Base-TX PCI-Express Adapter (14104003)
    ['-Ct', '1410[46][08]03']
  end

end
