require 'rspec-benchmark'
require 'substring_puzzle'

describe SubstringPuzzle do
  include RSpec::Benchmark::Matchers

  # Credits: https://codegolf.stackexchange.com/questions/117872/test-if-a-string-can-be-made-with-substrings
  describe 'solvable?' do
    subject { SubstringPuzzle.solvable?(string, substrings)}

    context 'when some substrings are used twice' do
      let(:string) { 'Hello, world!' }
      let(:substrings) { ['Hello, world', 'l', 'He', 'o, wor', 'd!'] }
      it { is_expected.to be true }
    end

    context 'when some substrings are used twice' do
      let(:string) { 'Hello, world!' }
      let(:substrings) { ['H', 'l', 'He', 'o, wor', 'd!'] }
      it { is_expected.to be true }
    end

    context 'when no substrings match the string' do
      let(:string) { 'this is a string' }
      let(:substrings) { ['these ', 'substrings ', 'do ', 'not ', 'match'] }
      it { is_expected.to be false }
    end

    context 'when some substrings do not match' do
      let(:string) { 'this is a string' }
      let(:substrings) { ['this ', 'was ', 'a ', 'string'] }
      it { is_expected.to be false }
    end

    context 'with unused substrings' do
      let(:string) { 'Happy coding!' }
      let(:substrings) { ['coding', '!', 'Happy', ' ', 'spam'] }
      it { is_expected.to be true }
    end

    context 'with an empty string' do
      let(:string) { '' }
      let(:substrings) { ['The empty string can be constructed with nothing'] }
      it { is_expected.to be true }
    end

    context 'when the string is contained in the substring' do
      let(:string) { 'string' }
      let(:substrings) { ['this', 'list', 'contains', 'the', 'string'] }
      it { is_expected.to be true }
    end

    context 'when there are no substrings' do
      let(:string) { 'hello' }
      let(:substrings) { [] }
      it { is_expected.to be false }
    end

    context 'when the input is not suitable for greedy algorithms' do
      let(:string) { 'ababab' }
      let(:substrings) { %w(a ba ab) }
      it { is_expected.to be true }
    end

    # Only for the brave
    xdescribe 'performance' do
      context 'with large amount of possible combinations' do
        let(:string) { 'ababababababababababababaX' }
        let(:substrings) { %w[a b ab ba] }
        it 'performs well' do
          expect { subject }.to perform_under(5).ms.and_sample(5)
        end
      end
    end
  end
end
