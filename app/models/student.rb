class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active
    if self.active 
      self.active=false
    else
      self.active=true
    end
    self.active
  end

  def to_active 
    if self.active 
      "Active"
    else
      "Not Active"
    end
  end
end