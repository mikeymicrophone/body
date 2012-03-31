module ApplicationHelper
  def login_links
    if current_viber
      link_to 'log out', destroy_viber_session_path, :method => :delete
    else
      link_to('log in', new_viber_session_path) + 
      link_to('sign up', new_viber_registration_path)
    end
  end
end
