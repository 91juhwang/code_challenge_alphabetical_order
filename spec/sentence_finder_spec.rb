require_relative '../lib/sentence_finder'

describe SentenceFinder do
  describe '.find' do
    context 'when only one sentence is given' do
      it 'returns the sentence' do
        sentence = SentenceFinder.find("This is a sentence.")
        expect(sentence).to eq("This is a sentence.")
      end
    end

    context 'when a paragraph with two sentences are given' do
      it 'returns the first sentence with most alphabetical-consecutive word' do
        sentence = SentenceFinder.find('Two sentences with the same numbers of alphabet-consecutive words. Both sentences have five words which are consecutive and that is it')
        expect(sentence).to eq('Two sentences with the same numbers of alphabet-consecutive words.')
      end
    end

    it 'can find a sentence with an alpha-consecutive word' do

    end
  end
end
