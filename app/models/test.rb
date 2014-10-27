class Test < ActiveRecord::Base
  belongs_to :lesson
  has_many :test_questions

  accepts_nested_attributes_for :test_questions
end
