require 'puppet/type'

module Tunables_Util
  @@new_includes = proc do

    newparam(:enforce_default) do
      defaultto :no
      newvalues(:yes, :no)
      
    end

    validate do
      if self[:enforce_default] == :yes then
	self.class.properties.each do |property|
	  if self[property.name].nil? then
	    self[property.name] = 'default'
	  end
	end
      end
    end

  end

  def self.included(base)
    base.send(:class_eval, &@@new_includes)
  end

  def munge_default(name, value)
      if value == 'default' then
        instances_hash = provider.class.instances_hash
        # Do not try to set 'n/a' values to default, since they are
        # unsupported.
        if instances_hash[name.to_s].current == 'n/a' then
          'n/a'
        else 
          instances_hash[name.to_s].default
        end
      else
        value
      end
  end

end
