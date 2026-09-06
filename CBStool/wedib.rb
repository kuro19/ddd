module CBS

	def self.wedib

		wedib = UI::WebDialog.new( 'wedib', true, 'wedib',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "wedib.html")	
		wedib.set_url path

		
		wedib.add_action_callback("wedi1")  {self.box1}
		wedib.add_action_callback("wedi2")  {self.box2}
		wedib.add_action_callback("wedi3")  {self.box3}
		wedib.add_action_callback("wedi4")  {self.box4}
		wedib.add_action_callback("wedi5")  {self.box5}
		wedib.add_action_callback("wedi6")  {self.box6}
		wedib.add_action_callback("wedi16") {self.book}
		wedib.add_action_callback("wedi17") {self.hs1}
		wedib.add_action_callback("wedi18") {self.hs2}
		wedib.add_action_callback("wedi19") {self.brd}

		wedib.show
		
	end

	file_loaded("wedib.rb")

end
