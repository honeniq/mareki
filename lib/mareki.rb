require "mareki/version"

class Date
  def mareki_year
    if self.year >= 1999 then
      self.year - 1998
    else
      self.year - 1999
    end
  end
end
