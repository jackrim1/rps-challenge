feature 'Enter name' do
	scenario 'submit a name' do
		sign_in
		expect(page).to have_content 'Bob vs. Computer'
	end
end
