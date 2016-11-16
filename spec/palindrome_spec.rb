require 'rails_helper'

describe Palindrome do
  it { expect(subject.next 0).to eq 1 }
  it { expect(subject.next 0).to eq 1 }
  it { expect(subject.next 1).to eq 2 }
  it { expect(subject.next 10).to eq 11 }
  it { expect(subject.next 11).to eq 22 }
  it { expect(subject.next 12320).to eq 12321 }

  it { expect(subject.next -1).to eq 0 }
  it { expect(subject.next -1123).to eq 0 }
  it { expect(subject.next "".to_i).to eq 1 }
end