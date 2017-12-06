require 'square'

describe Square do
  describe 'square' do
    subject { Square.draw(n)}

    context 'with n=2' do
      let(:n) { 2 }
      let(:expected_result) do
        "++\n"\
        "++"
      end
      it { is_expected.to eq expected_result }
    end

    context 'with n=3' do
      let(:n) { 3 }
      let(:expected_result) do
        "+-+\n"\
        "| |\n"\
        "+-+"
      end
      it { is_expected.to eq expected_result }
    end

    context 'with n=5' do
      let(:n) { 5 }
      let(:expected_result) do
        "+---+\n"\
        "|   |\n"\
        "|   |\n"\
        "|   |\n"\
        "+---+"
      end
      it { is_expected.to eq expected_result }
    end

    context 'with n=10' do
      let(:n) { 10 }
      let(:expected_result) do
        "+--------+\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "|        |\n"\
        "+--------+"
      end
      it { is_expected.to eq expected_result }
    end
  end
end
