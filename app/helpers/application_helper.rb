module ApplicationHelper
  def login_links
    if current_viber
      link_to('log out', destroy_viber_session_path, :method => :delete) +
      link_to('update my info', edit_viber_path(current_viber))
    else
      link_to('log in', new_viber_session_path) + 
      link_to('sign up', new_viber_registration_path)
    end
  end
  
  def someone_is_logged_in
    current_viber
  end
end
