require_relative '../../provider/tunable'

Puppet::Type.type(:no).provide :no, :parent => Puppet::Provider::Tunable do
  confine :operatingsystem => :AIX
  commands :cmd => 'no'

  mk_resource_methods

end 
