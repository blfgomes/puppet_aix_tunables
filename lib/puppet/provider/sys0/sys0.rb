require_relative '../../provider/device'

Puppet::Type.type(:sys0).provide :sys0, :parent => Puppet::Provider::Device do
  confine :operatingsystem => :AIX
  commands :lsattr => 'lsattr'
  commands :chdev  => 'chdev'
  commands :lsdev  => 'lsdev'

  mk_resource_methods
  
  def self.instances
    attr_lines = lsattr('-F', 'attribute,value', '-l', 'sys0').split("\n")
    attr_hash = create_attr_hash(attr_lines)
    attr_hash[:name] = 'sys0'
    [new(attr_hash)]
  end

end
