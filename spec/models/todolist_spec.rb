require 'rails_helper'

RSpec.describe Todolist, type: :model do
  attributes = [
    {title: %i[presence]}
  ]
  include_examples('model_shared_spec', :todolist,attributes)
end
