module CBS

def self.help

    face_dialog = UI::WebDialog.new( 'cbs tools from cadbox for sketchup', true, 'help',555, 555, 111, 111, true )
    path = File.join(File.dirname(__FILE__), "webtool", "help.html")	
    face_dialog.set_url path
    face_dialog.show

end

file_loaded("help.rb")

end


	
