module Tunables_Util
  def munge_default(name, value)
      if value == 'default' then
        provider.class.instances_hash[name.to_s].default
      else
        value
      end
  end

end
