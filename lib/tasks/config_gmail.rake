desc 'This will create the input file for gmail and password to use as the mailer'

task :config_gmail, [:email, :password] do |t, args|

    f = File.join(Rails.root,'config','initializers','set_email_password.rb')
    file = File.open(f,'w')
    file.puts "ENV[\"EMAIL\"] = \""+args[:email]+"\""
    file.puts "ENV[\"PASSWORD\"] = \"#{args[:password]}\""
    file.close

end 