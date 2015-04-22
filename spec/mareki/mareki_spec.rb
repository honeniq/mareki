require "spec_helper"
require "date"

describe Date do
  describe "#mareki_year" do
    it "Fixnumを返す" do
      expect(Date.new(2015, 1, 1).mareki_year).to be_a(Fixnum)
    end

    it "西暦1998年は魔暦-1年" do
      expect(Date.new(1998, 1, 1).mareki_year).to eq -1
    end

    it "西暦1999年は魔暦1年" do
      expect(Date.new(1999, 1, 1).mareki_year).to eq 1
    end

    it "西暦2015年は魔暦17年" do
      expect(Date.new(2015, 1, 1).mareki_year).to eq 17 
    end
  end

  describe "#mareki_eto" do
    it "Stringを返す"do
      expect(Date.new(2015, 1, 1).mareki_eto).to be_a(String)
    end

    it "1985年の悪魔干支は火の鳥" do
      expect(Date.new(1985, 1, 1).mareki_eto).to eq("火の鳥")
    end

    it "1999年の悪魔干支は怪奇植物" do
      expect(Date.new(1999, 1, 1).mareki_eto).to eq("怪奇植物")
    end

    it "2015年の悪魔干支は妖精" do
      expect(Date.new(2015, 1, 1).mareki_eto).to eq("妖精")
    end
  end
end
