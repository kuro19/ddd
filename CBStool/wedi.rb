module CBS

	def self.wedi

		wedi = UI::WebDialog.new( 'wedi', true, 'wedi',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "wedi.html")	
		wedi.set_url path
		
		wedi.add_action_callback("wedi7")  {self.ut}
		wedi.add_action_callback("wedi8")  {self.ot}
		wedi.add_action_callback("wedi9")  {self.au}
		wedi.add_action_callback("wedi10") {self.hs}
		wedi.add_action_callback("wedi11") {self.ao}
		wedi.add_action_callback("wedi12") {self.etl}
		wedi.add_action_callback("wedi13") {self.etr}
		wedi.add_action_callback("wedi14") {self.pas}
		wedi.add_action_callback("wedi15") {self.vsi}
		wedi.add_action_callback("wedi20") {self.sok}	

		wedi.show
		
	end

#-----------------------------------------------------------------------------
file_loaded("wedi.rb")

end
