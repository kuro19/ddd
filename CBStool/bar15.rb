module CBS

    toolbar = UI::Toolbar.new(" CadBox Tool")
     
     cmd = UI::Command.new("Cabinet Carcass Maker") {self.wedi}
     cmd.small_icon = "webtool/icon/cbs.png"
     cmd.large_icon = "webtool/icon/cbsb.png"
     cmd.tooltip = "Cabinet Carcass Maker"
     cmd.menu_text = "Cabinet Carcass Maker"
     toolbar = toolbar.add_item cmd 
     toolbar.show
     
     cmd1 = UI::Command.new("Cabinet Parts Maker") {self.wedib}
     cmd1.small_icon = "webtool/icon/macbsb.png"
     cmd1.large_icon = "webtool/icon/macbs.png"
     cmd1.tooltip = "Cabinet Parts Maker"
     cmd1.menu_text = "Cabinet Parts Maker"
     toolbar1 = toolbar.add_item cmd1 
     toolbar1.show
     
     cmd3 = UI::Command.new("System") {self.help}
     cmd3.small_icon = "webtool/icon/help.png"
     cmd3.large_icon = "webtool/icon/helpb.png"
     cmd3.tooltip = "Help"
     cmd3.menu_text = "Help"
     toolbar3 = toolbar.add_item cmd3     
     toolbar3.show
     
     cmd2 = UI::Command.new("About / Release Notes") {self.impres15}
     cmd2.small_icon = "webtool/icon/inf.png"
     cmd2.large_icon = "webtool/icon/infb.png"
     cmd2.tooltip = "About / Release Notes "
     cmd2.menu_text = "About / Release Notes"
     toolbar2 = toolbar.add_item cmd2     
     toolbar2.show
     
     file_loaded('bar15.rb')

end