# encoding: utf-8

def path_to(path)
  case path
    when "signup page"
      "/users/sign_up"
    when "signin page"
      "/users/sign_in"
    when "home page"
      "/"
  end
end