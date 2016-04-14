# Class that runs the optional command for reboot notification.
#
# The idea is that since not all devices can be changed online, this puppet
# module supports changing a device parameter for the next boot. 
# The command that notifies that changes were made and that a boot is
# required can be any AIX executable.
#

class RebootNotify
  def self.exec(command, *args)
    system(command, *args)
  end
end

