# frozen_string_literal: true

describe Array do
  # जब बाहिरको example group एउटा class हो, त्यतिखेर एउटा implicit रूपमा
  # परिभाषित subject उपलब्ध हुन्छ। त्यो subject उक्त class को instance हुन्छ।

  # नोट: प्रायः अवस्थामा implicit subject को प्रयोग सिफारिस गरिँदैन।
  # अर्को पाठमा explicit subject को बारेमा सिकाइनेछ, जुन implicit subject भन्दा
  # बढी सिफारिस गरिन्छ।

  context 'when subject is implicitly defined' do
    # Type matchers ले be_a वा be_an जस्ता मेथडको प्रयोग गरेर readability बढाउन सक्छ।
    it 'is an Array' do
      expect(subject).to be_an(Array)
    end

    # तलको एक लाइनको syntax माथिको टेस्टसँग उस्तै काम गर्छ।
    # यो टेस्ट चलाउँदा (terminal मा) स्वतः उत्पन्न हुने doc string हेर्नुहोस्।
    it { is_expected.to be_an(Array) }
  end

  context 'when using predicate matchers' do
    context 'when using the empty? predicate method' do
      # Ruby मा predicate method सधैं ? ले अन्त्य हुन्छ र true वा false मात्र फर्काउँछ।
      it 'returns true' do
        expect(subject.empty?).to eq true
      end
    end

    # RSpec predicate method हरूको लागि predicate matchers बनाउन सक्छ।
    it 'is empty' do
      expect(subject).to be_empty
    end

    # तलको एक लाइन syntax माथिको टेस्टसँग उस्तै काम गर्छ।
    # यो टेस्ट चलाउँदा (terminal मा) स्वतः उत्पन्न हुने doc string हेर्नुहोस्।
    it { is_expected.to be_empty }
  end

  context 'when a let variable is declared inside a context block' do
    let(:numbers) { [3, 8, 9] }

    # let variable ले 3 लम्बाईको array दिन्छ।
    it 'has length of 3' do
      expect(numbers.length).to eq(3)
    end

    # array को अन्तिम element हटाउँदा लम्बाई 2 हुन्छ।
    it 'changes the length to 2' do
      numbers.pop
      expect(numbers.length).to eq(2)
    end
  end

  # जब यो टेस्ट फाइल चलाइन्छ, माथिका 5 टेस्टहरूको क्रम हेर्नुहोस्।
  # तपाईलाई किन लाग्छ कि यीहरू लेखिएको क्रम भन्दा फरक तरिकाले आउँछन्?

  # यसको जवाफ हो कि प्रत्येक group आफ्नो उदाहरणहरू चलाउँछ
  # nested example groups चलाउनु अघि, चाहे nested groups अघि नै परिभाषित गरिएको किन नहोस्।

  # नोट गर्नुहोस्: एक लाइनको टेस्टहरू केवल तब सिफारिस गरिन्छ जब matcher ठीक doc string संग मेल खान्छ।
  # यस्तो अवस्थामा पनि, धेरै Rubyists हरू स्पष्ट रूपमा टेस्ट लेख्न रुचाउँछन् र एक-लाइन syntax प्रयोग गर्दैनन्।
end

# ASSIGNMENT
describe Array do
  context 'when updating an implicit subject' do
    # remove the 'x' before running this test
    it 'is empty' do
      # Write a test to expect the subject to be empty.
      expect(subject.empty?).to be(true)
    end

    # remove the 'x' before running this test
    it 'updates length to 1' do
      subject << 1
      # Update the implicit subject to make this test pass.
      expect(subject.length).to eq(1)
    end
  end

  context 'when using one let variable on two tests' do
    # Make a let variable that will pass both tests.
    let(:lucky_numbers) {[14,14,14]}
    # remove the 'x' before running this test
    it 'has length of 3' do
      expect(lucky_numbers.length).to eq(3)
    end

    # remove the 'x' before running this test
    it 'has sum of 42' do
      expect(lucky_numbers.sum).to eq(42)
    end
  end
end
