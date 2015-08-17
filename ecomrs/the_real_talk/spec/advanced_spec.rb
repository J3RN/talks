require_relative "../advanced"

describe AdvancedExamples do
  subject { AdvancedExamples.new }

  describe "#merge_hashes" do
    let(:hashes) do
      [ { "a" => 42, "b" => 51 },
        { "b" => 61, "c" => "hello" },
        { "d" => "asdf", "e" => "37" } ]
    end

    it "merges the hashes" do
      expect(subject.merge_hashes(hashes)).to eq({ "a" => 42,
                                                   "b" => 61,
                                                   "c" => "hello",
                                                   "d" => "asdf",
                                                   "e" => "37" })
    end
  end

  describe "get_nested_value" do
    let(:keys) { ['deeply', 'nested', 'value'] }

    it 'gets the value' do
      expect(subject.get_nested_value(keys)).to eq(42)
    end
  end

  describe 'return_real_keys' do
    let(:keys) { ['real', 'keys', 'im_fake', 'me_too'] }
    let(:real_keys) { ['real', 'keys'] }

    it 'returns the real keys' do
      expect(subject.return_real_keys(keys)).to eq(real_keys)
    end
  end
end
