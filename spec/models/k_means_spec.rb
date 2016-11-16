require 'rails_helper'

describe KMeans do
  describe '#evaluate' do
    let(:trained) { KMeans.new([0], [1], [2], [[9,0,0],[0,9,0],[0,0,9]]) }

    it { expect(trained.evaluate([[9,0,0]])).to eq({male: [[9, 0, 0]], female: [], other: []}) }
    it { expect(trained.evaluate([[0,9,0]])).to eq({male: [], female: [[0,9,0]], other:[]}) }
    it { expect(trained.evaluate([[0,0,9]])).to eq({male: [], female: [], other:[[0,0,9]]}) }
    it { expect(trained.evaluate([[9,0,0], [0,9,0], [0,0,9]])).to eq({
                                                                         male: [[9,0,0]],
                                                                         female: [[0,9,0]],
                                                                         other: [[0,0,9]]
                                                                     }) }


    it { expect(trained.evaluate([[5,0,0]])).to eq({male: [[5, 0, 0]], female: [], other: []}) }
    pending { expect(trained.evaluate([[1,0,0]])).to eq({male: [[1, 0, 0]], female: [], other: []}) }
  end

  describe '#distance' do
    it { expect(KMeans.distance([9,0,0], [9,0,0,])).to eq 0 }
    it { expect(KMeans.distance([0,0,0], [9,0,0,])).to eq 9 }
    it { expect(KMeans.distance([0,0,0], [0,9,0,])).to eq 9 }
    it { expect(KMeans.distance([0,0,0], [0,0,9,])).to eq 9 }
    it { expect(KMeans.distance([0,0,0], [3,4,0,])).to eq 5 }
  end

  xdescribe '#gender' do
    let(:trained) { KMeans.new([0], [1], [2], [[9,0,0],[0,9,0],[0,0,9]]) }
    it { expect(trained.gender([1,0,0])).to eq :male }
    it { expect(trained.gender([0,1,0])).to eq :female}
    it { expect(trained.gender([0,0,1])).to eq :other}
  end
end