require "mareki/version"

class Date
  def mareki_year
    if self.year >= 1999 then
      self.year - 1998
    else
      self.year - 1999
    end
  end

  def mareki_eto
    eto = ['河童', 'つちのこ', '三ツ首竜', '鵺', '一角獣', 'モグラザメ', \
           '化猫', '蝦蟇', '火の鳥', '怪奇植物', '人魚', '夜叉', '妖精']
    eto[(self.year % 13) - 1]
  end
end
