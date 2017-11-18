def sign_up(username, email)
  visit '/users/new'
  fill_in('username', with: username)
  fill_in('email', with: email)
  fill_in('name', with: 'Timothy Hopkins')
  fill_in('password', with: '12345')
  fill_in('password_confirmation', with: '12345')
  click_button('Sign up!')
end

def sign_up_password_mismatch
  visit '/users/new'
  fill_in('username', with: 'timmy')
  fill_in('email', with: 'timmy@hello.com')
  fill_in('name', with: 'Timothy Hopkins')
  fill_in('password', with: '12345')
  fill_in('password_confirmation', with: 'abcdefg')
  click_button('Sign up!')
end

def login
  visit '/sessions/new'
  fill_in('username', with: 'timmy')
  fill_in('password', with: '12345')
  click_button('Login')
end

def post_peep(peep)
  visit '/peeps'
  fill_in('peep', with: peep)
  click_button('Peep!')
end
