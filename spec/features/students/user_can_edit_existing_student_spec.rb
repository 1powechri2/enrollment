require 'rails_helper'

describe 'User can edit an existing student' do
  context 'A user visits /students/:id/edit' do
    it 'fills in form and submits edit' do
      student = Student.create(name: "Jo Bo")

      visit edit_student_path(student)

      fill_in :student_name, with: 'Dude'

      click_on "Create Student"

      expect(page).to have_content('Dude')
    end
  end
end
