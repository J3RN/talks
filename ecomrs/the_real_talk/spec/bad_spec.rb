require_relative '../bad.rb'

describe TestClass do
  subject{ TestClass.new }
  let(:fake_arr) { (0..1000000).to_a }

  describe '#map' do
    it "should match the provided correct example" do
      expect(subject.map).to eq(fake_arr.map { |x| x * 2 })
    end
  end

  describe '#reduce' do
    it "should match the provided correct example" do
      expect(subject.reduce).to eq(fake_arr.reduce(&:+))
    end
  end

  describe '#select' do
    it "should match the provided correct example" do
      expect(subject.select).to eq(fake_arr.select { |x| x.even? })
    end
  end
end
