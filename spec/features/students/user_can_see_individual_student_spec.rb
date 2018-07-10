require 'rails_helper'

describe 'User sees an individual student' do
  context 'A user visits /students/:id' do
    it 'sees an individual student' do
      student_one = Student.create(name: "Jo Bo")

      visit student_path(student_one)

      expect(current_path).to eq(student_path(student_one))
      expect(page).to have_content(student_one.name)
    end
  end
end
