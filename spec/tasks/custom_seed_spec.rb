require 'rails_helper'

describe 'db:seed:articles' do
  before { Engblog::Application.load_tasks }

  it { expect { Rake::Task['db:seed:articles'].invoke }.not_to raise_exception }
end