require 'puppet/provider/device'

Puppet::Type.type(:ent).provide :ent, :parent => Puppet::Provider::Device do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods

  def self.lsdev_cmd
    ['-Ct', 'IBM,l-lan']
  end

end
