require 'rails_helper'

describe 'User can create a new student' do
  describe 'A user visits /students' do
    context 'it clicks on create new student' do
      it 'fills in form and creates new student' do
        visit students_path

        click_on "Create New"

        expect(current_path).to eq(new_student_path)

        fill_in :student_name, with: 'Dude'

        click_on "Create Student"

        expect(page).to have_content('Dude')
      end
    end
  end
end
