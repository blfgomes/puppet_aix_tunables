Puppet::Type.newtype(:no) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:value) do
    desc "Value of tunable"
  end

end
