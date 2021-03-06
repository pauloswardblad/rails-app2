require 'rails_helper'

feature 'List of articles on index page' do
    context 'with articles in db' do
            before do
                create(:article, title: 'a breaking news item')
                create(:article, title: 'some really breaking action')

                visit root_path
            end
        

        it 'displays first article title' do
            expect(page).to have_content'a breaking news item'
        end

        it 'displays second article title' do
            expect(page).to have_content 'some really breaking action'
        end
    end
end


