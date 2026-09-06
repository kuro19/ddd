module CBS

	def self.impres15

		face_dialog = UI::WebDialog.new( 'cbs tools from cadbox for sketchup', true, 'impres',400, 500, 55, 55, true )
		
		path = File.join(File.dirname(__FILE__), "webtool", "imp.html")	
		face_dialog.set_url path
		face_dialog.show

	end

	file_loaded("impres15.rb")

end



	
