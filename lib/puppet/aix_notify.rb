class RebootNotify
  def self.exec(command, *args)
    system(command, *args)
  end
end

