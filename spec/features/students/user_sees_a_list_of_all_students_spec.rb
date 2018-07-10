require 'rails_helper'

describe 'User sees a list of all students' do
  context 'A user visits /students' do
    it 'sees a list of all students' do
      student_one = Student.create(name: "Jo Bo")
      student_two = Student.create(name: "No Bo")
      student_three = Student.create(name: "Fran Z")

      visit students_path

      expect(current_path).to eq(students_path)
      expect(page).to have_content(student_one.name)
      expect(page).to have_content(student_two.name)
      expect(page).to have_content(student_three.name)
    end
  end
end
