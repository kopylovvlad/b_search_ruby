require 'rspec'
require_relative './shared_case'
require_relative '../script02'

RSpec.describe 'Script 02' do
  it_behaves_like 'main_example'
end
