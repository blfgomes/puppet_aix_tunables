require_relative '../../provider/device'

Puppet::Type.type(:en).provide :en, :parent => Puppet::Provider::Device do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods

  def self.lsdev_cmd
    ['-Ct', 'en']
  end

end
