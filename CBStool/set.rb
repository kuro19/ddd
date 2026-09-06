module CBS
	 
	def self.geset
		path = File.join(File.dirname(__FILE__), "lang", "langdat.js") 
		f = File.open path, "w+"
		f.puts "lang = 'ge';"
		f.close

		path = File.join(File.dirname(__FILE__), "lang", "langdat.txt")	 
		f = File.open path, "w+"
		f.puts "ge"
		f.close
		UI.messagebox "Complete customization at reboot from SU \n Eventual character encoding adjust \n Unicode(UTF-8)", MB_OK	 	 
	end

	 def self.enset
		path = File.join(File.dirname(__FILE__), "lang", "langdat.js")	 
		f = File.open path, "w+"
		f.puts "lang = 'en';"
		f.close	

		path = File.join(File.dirname(__FILE__), "lang", "langdat.txt")	 
		f = File.open path, "w+"
		f.puts "en"
		f.close
		UI.messagebox "Complete customization at reboot from SU \n Eventual character encoding adjust \n Unicode(UTF-8)", MB_OK	 	 
	end
	
	def self.itset
		path = File.join(File.dirname(__FILE__), "lang", "langdat.js")	 
		f = File.open path, "w+"
		f.puts "lang = 'it';"
		f.close

		path = File.join(File.dirname(__FILE__), "lang", "langdat.txt")	 	 
		f = File.open path, "w+"
		f.puts "it"
		f.close
		UI.messagebox "Complete customization at reboot from SU \n Eventual character encoding adjust", MB_OK	 	 
	end
	 
	 def self.frset
		path = File.join(File.dirname(__FILE__), "lang", "langdat.js")	 
		f = File.open path, "w+"
		f.puts "lang = 'fr';"
		f.close

		path = File.join(File.dirname(__FILE__), "lang", "langdat.txt")	  
		f = File.open path, "w+"
		f.puts "fr"
		f.close
		UI.messagebox "设置完成，重新启动SU将为您切换到 \n Eventual character encoding adjust", MB_OK	 	 
	end

	 def self.ruset
		path = File.join(File.dirname(__FILE__), "lang", "langdat.js")	  
		f = File.open path, "w+"
		f.puts "lang = 'ru';"
		f.close

		path = File.join(File.dirname(__FILE__), "lang", "langdat.txt")	  
		f = File.open path, "w+"
		f.puts "ru"
		f.close
		UI.messagebox "Complete customization at reboot from SU \n Eventual character encoding adjust", MB_OK	 	 
	end

	file_loaded("set.rb")

end
