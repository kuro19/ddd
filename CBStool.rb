# Adapted software wiht Sketchup Ruby API Documentation
# For create a quickly sketch of simple parts.
# Tools from http://www.cadbox.ch/
# Name :          CBS for SketchUp 
# Description :   Sketch tool for © CupBoardSystem
# Author :        cadbox swiss 
# Usage :         Install this script according to the instructions on www.cadbox.ch
# Date :          10.01.2013
# Type :          Ruby Tool for SketchUp
# History:        CBS for SketchUp 2014 (04.04.2014)
#-------------------------------------------------------------------------------

require('sketchup.rb')

module CBS

	path = File.join(File.dirname(__FILE__), "CBStool", "lang", "langdat.txt")
	la = IO.read(path)
	la = la.gsub("\n", "")

	require 'CBStool/lang/' + la + '.rb'
	require 'CBStool/set.rb'
	require 'CBStool/cbs1.rb'
	require 'CBStool/bar15.rb'
	require 'CBStool/box1.rb'
	require 'CBStool/box2.rb'
	require 'CBStool/box3.rb'
	require 'CBStool/box4.rb'
	require 'CBStool/box5.rb'
	require 'CBStool/box6.rb'
	require 'CBStool/ut.rb'
	require 'CBStool/ot.rb'
	require 'CBStool/au.rb'
	require 'CBStool/ao.rb'
	require 'CBStool/etl.rb'
	require 'CBStool/etr.rb'
	require 'CBStool/hs.rb'
	require 'CBStool/pas.rb'
	require 'CBStool/vsi.rb'
	require 'CBStool/book.rb'
	require 'CBStool/hs1.rb'
	require 'CBStool/hs2.rb'
	require 'CBStool/brd.rb'
	require 'CBStool/sok.rb'
	require 'CBStool/help.rb'
	require 'CBStool/imp.rb'
	require 'CBStool/wedi.rb'
	require 'CBStool/wedib.rb'


	file_loaded("cadbox-ch.rb")

end
