module CBS

	if not (file_loaded? "cbs1.rb")
       
       menu = UI.menu("Plug-ins").add_submenu("CBS Cabinet Maker: Select Creation Tool")
            
			menu.add_item(nav2) {self.ut}
			menu.add_item(nav3) {self.ot}
			menu.add_item(nav6) {self.au}
			menu.add_item(nav4) {self.hs}
			menu.add_item(nav5) {self.ao}
			menu.add_item(nav7) {self.etl}
			menu.add_item(nav8) {self.etr}
			menu.add_item(nav10){self.pas}
			menu.add_item(nav9) {self.vsi}
			menu.add_item(nav15){self.sok}
		
			
			menu.add_item(nav22) {self.box1}
			menu.add_item(nav21) {self.box2}
			menu.add_item(nav23) {self.box3}
			menu.add_item(nav25) {self.box4}
			menu.add_item(nav24) {self.box5}
			menu.add_item(nav26) {self.box6}
			menu.add_item(nav14) {self.book}
			menu.add_item(nav11) {self.hs1}
			menu.add_item(nav12) {self.hs2}
			menu.add_item(nav13) {self.brd}
			
		menu1 = UI.menu("Plug-ins").add_submenu( "CBS Cabinet Maker: Select Command Dialog" )
		
			menu1.add_item("Cabinet Column Creation Dialog") {self.wedi}
			menu1.add_item("Cabinet Section Creation Dialog")  {self.wedib}
		
		
		langs = UI.menu("Plug-ins").add_submenu("CBS Cabinet Maker: Select Language")
        
			langs.add_item("Chinese") {self.frset}
			langs.add_item("English") {self.enset}
			langs.add_item("German")  {self.geset}
			langs.add_item("Italian") {self.itset}
			langs.add_item("Russian") {self.ruset}
									
	end

	file_loaded("cbs1.rb")

end