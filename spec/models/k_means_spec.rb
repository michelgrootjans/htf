require 'rails_helper'

describe KMeans do
  context '2 categories with 2 trainig points => training points are the average' do
    let(:trained) { KMeans.new(2, [[1,0], [0,1]]) }

    it { expect(trained.category([1.0, 0.0])).to eq 0 }
    it { expect(trained.category([0.1, 0.0])).to eq 0 }
    it { expect(trained.category([0.0, 1.0])).to eq 1 }
    it { expect(trained.category([0.0, 0.1])).to eq 1 }
  end

  context '3 categories with 3 trainig points => training points are the average' do
    let(:trained) { KMeans.new(3, [[9,0,0], [0,9,0], [0,0,9]]) }

    it { expect(trained.category([1.0,0.0,0.0])).to eq 0 }
    it { expect(trained.category([0.1,0.0,0.0])).to eq 0 }

    it { expect(trained.category([0.0,1.0,0.0])).to eq 1 }
    it { expect(trained.category([0.0,0.1,0.0])).to eq 1 }

    it { expect(trained.category([0.0,0.0,1.0])).to eq 2 }
    it { expect(trained.category([0.0,0.0,0.1])).to eq 2 }

    it { expect(trained.category([8.1, 5.4, 7.9])).to eq 0 }
  end
end