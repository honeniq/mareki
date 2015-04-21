require "spec_helper"
require "date"

describe Date do
  describe "#mareki_year" do
    it "符号付き整数を返す" do
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
end
