# frozen_string_literal: true

require_relative '../lib/11b_cat'
require_relative '../spec/11a_shared_example_spec'

describe Cat do
  subject(:oscar) { described_class.new('Oscar', 'Maine Coon') }

  context 'when Cat is a child class of Pet' do
    include_examples 'base class method name' #this should match exactly with shared example.
  end

  context 'when cat has name and breed, but no color' do
    it 'has name, breed & color attributes' do
      expect(oscar).to have_attributes(name: 'Oscar', breed: 'Maine Coon', color: nil)
    end
  end
end

# ASSIGNMENT - complete either Cat or Dog assignment

describe Cat do
  # Create a subject with your choice of cat name and optional breed/color.
  subject(:Bruno) { described_class.new('Bruno', 'egyptian', 'black') }
  # Write a test using the second shared_example to test that cat responds to
  # talk ('meow').
  context 'calls the shared method from parent class pet' do
    include_examples 'base class method name'
  end

  # remove the 'x' before running this test
  it 'is not hungry' do
    expect(subject).not_to be_hungry
  end

  # remove the 'x' before running this test
  it 'is hiding' do
    expect(subject).to be_hiding
  end
end
