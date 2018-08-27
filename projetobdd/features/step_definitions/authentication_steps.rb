When("preencho o campo Email address {string}") do |email|
  r = Random.new
  email_random = r.rand(10000).to_s + email

  authentication.send_email(email_random)

  File.open("email.txt", "w")  do |save_email|
      save_email << email_random
  end
end
