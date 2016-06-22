require 'spec_helper'

describe NullCacheStore do
  it 'has a version number' do
    expect(NullCacheStore::VERSION).not_to be nil
  end
end

describe ActiveSupport::Cache::NullStore do
  subject { described_class.new }
  it { is_expected.to respond_to(:clear) }
  it { is_expected.to respond_to(:cleanup) }
  it { is_expected.to respond_to(:increment) }
  it { is_expected.to respond_to(:decrement) }
  it { is_expected.to respond_to(:delete_matched) }
end
