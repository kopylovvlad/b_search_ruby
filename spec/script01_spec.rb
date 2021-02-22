require 'rspec'
require_relative './shared_case'
require_relative '../script01'

RSpec.describe 'Script 01' do
  it_behaves_like 'main_example'
end
