require 'puppet/provider/device'

Puppet::Type.type(:disk).provide :disk, :parent => Puppet::Provider::Device do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods
  
  def self.lsdev_cmd 
    ['-Cc', 'disk']
  end

end
