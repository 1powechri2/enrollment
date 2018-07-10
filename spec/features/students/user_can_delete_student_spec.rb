require 'rails_helper'

describe 'User can delete a student' do
  context 'A user visits /students' do
    it "clicks delete next to a student's name and student is deleted" do
      student_one = Student.create(name: "Jo Bo")

      visit students_path

      click_on("Delete")

      expect(current_path).to eq(students_path)
      expect(page).to_not have_content(student_one.name)
    end
  end
end
