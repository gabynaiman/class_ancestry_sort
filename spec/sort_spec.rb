require 'minitest_helper'

describe ClassAncestrySort do

  let(:classes) { [NoMethodError, StandardError, ArgumentError, NameError, StandardError, Exception, RuntimeError] }
  
  it 'Ascending' do
    ClassAncestrySort.asc(classes).must_equal [Exception, StandardError, NameError, NoMethodError, ArgumentError, RuntimeError]
  end

  it 'Descending' do
    ClassAncestrySort.desc(classes).must_equal [RuntimeError, ArgumentError, NoMethodError, NameError, StandardError, Exception]
  end

end