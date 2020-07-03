require 'rails_helper'

RSpec.describe 'HeadingFields', type: :system do
  describe 'with regular input' do
    let!(:user) { create :user }

    context 'show' do
      it 'checks for normal header' do
        visit "/avocado/resources/users/#{user.id}"

        expect(find_field_element('heading_other')).to have_text 'OTHER'
      end

      it 'checks for html header' do
        visit "/avocado/resources/users/#{user.id}"

        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_text 'FILES'
        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_css '.uppercase'
        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_css '.text-blue-900'
      end
    end

    context 'edit' do
      it 'checks for normal header' do
        visit "/avocado/resources/users/#{user.id}/edit"

        expect(find_field_element('heading_other')).to have_text 'OTHER'
      end
    end

    context 'edit' do
      it 'checks for html header' do
        visit "/avocado/resources/users/#{user.id}/edit"

        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_text 'FILES'
        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_css '.uppercase'
        expect(find_field_element('heading_div_class_text_blue_900_uppercase_font_bold_files_div')).to have_css '.text-blue-900'
      end
    end
  end
end