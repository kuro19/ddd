module CBS
	 
	def self.ut
	 
		ut = UI::WebDialog.new( 'UT', true, 'ut',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "ut.html")
		ut.set_file path # "ut"
		 
		ut.show
		ut.add_action_callback("ut") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			z1 = Float(v[4].strip)/ 25.4
			r1 = Float(v[5].strip)/ 25.4
			so = Float(v[6].strip)/ 25.4

			pa = nav2 # part name

			if hh > 9;	hh = 9;	end
			if xx > 1200.mm; xx = 1200.mm; end
			if xx < 275.mm;  xx = 275.mm;  end
			if yy > 700.mm;  yy = 700.mm;  end
			if yy < 350.mm;  yy = 350.mm;  end
			
			zz = hh*127.mm
			
							
			## sockel

			 if so != 0
				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group1s = entities.add_group
				  entities = group1s.entities

					pts = []
				pts[0] = [0, 0 + 40.mm  , 0 ]
				pts[1] = [19.mm,0  + 40.mm , 0 ]
				pts[2] = [19.mm, yy, 0 ]
				pts[3] = [0 , yy, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group1s.name = pa + pa1	

					
				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group2s = entities.add_group
				  entities = group2s.entities

					pts = []
				pts[0] = [0 + xx - 19.mm, 0 + 40.mm  , 0 ]
				pts[1] = [19.mm + xx - 19.mm,0  + 40.mm , 0 ]
				pts[2] = [19.mm + xx - 19.mm, yy, 0 ]
				pts[3] = [0 + xx - 19.mm, yy, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group2s.name = pa + pa1

				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group3s = entities.add_group
				  entities = group3s.entities

					pts = []
				pts[0] = [0 , 21.mm , 0 ]
				pts[1] = [xx , 21.mm , 0 ]
				pts[2] = [xx , 40.mm, 0 ]
				pts[3] = [0 , 40.mm, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group3s.name = pa + pa1
			end		
								

			## sei
			model = Sketchup.active_model
			  model.start_operation pa2
			  entities = model.active_entities
			  group1 = entities.add_group
			  entities = group1.entities

				pts = []
			pts[0] = [0 , 0 , 0 ]
			pts[1] = [d1, 0 , 0 ]
			pts[2] = [d1, yy, 0 ]
			pts[3] = [0 , yy, 0 ]


					face = entities.add_face pts
				status = face.pushpull -zz, true
				group1.name = pa + pa2

			## bo
			model = Sketchup.active_model
			  model.start_operation pa3
			  entities = model.active_entities
			  group2 = entities.add_group
			  entities = group2.entities

				pts = []
			pts[0] = [0 +d1, 0 , 0 ]
			pts[1] = [xx-d1, 0 ,  0 ]
			pts[2] = [xx-d1, yy,  0 ]
			pts[3] = [0 +d1, yy,  0 ]


			   face = entities.add_face pts
			status = face.pushpull -z1, true
			group2.name = pa + pa3
					

			## tra
			model = Sketchup.active_model
			  model.start_operation pa8
			  entities = model.active_entities
			  group3 = entities.add_group
			  entities = group3.entities

				pts = []
			pts[0] = [0 + d1, 0 + yy-80.mm , 0 + zz]
			pts[1] = [0 + xx -d1, 0 +yy-80.mm , 0 + zz]
			pts[2] = [0 + xx -d1, yy, 0 +zz]
			pts[3] = [0 + d1, yy, 0 +zz]


					face = entities.add_face pts
				status = face.pushpull -z1, true
				group3.name = pa + pa8


			## tra
			model = Sketchup.active_model
			  model.start_operation pa8
			  entities = model.active_entities
			  group4 = entities.add_group
			  entities = group4.entities

				pts = []
			pts[0] = [0 + d1, 0 , 0 +zz]
			pts[1] = [0 + xx -d1, 0 , 0 +zz]
			pts[2] = [0 + xx -d1, 80.mm , 0 +zz]
			pts[3] = [0 + d1, 80.mm , 0 +zz]


					face = entities.add_face pts
				status = face.pushpull -z1, true
				group4.name = pa + pa8


			## se
			model = Sketchup.active_model
			  model.start_operation pa2
			  entities = model.active_entities
			  group5 = entities.add_group
			  entities = group5.entities

				pts = []
			pts[0] = [xx-d1, 0  , 0 ]
			pts[1] = [xx, 0 , 0 ]
			pts[2] = [xx, yy, 0 ]
			pts[3] = [xx-d1, yy, 0 ]


				face = entities.add_face pts
				status = face.pushpull -zz, true
				group5.name = pa + pa2



			## ruk
			model = Sketchup.active_model
			  model.start_operation pa4
			  entities = model.active_entities
			  group6 = entities.add_group
			  entities = group6.entities

				pts = []
			pts[0] = [0 , 0 +yy, 0 +zz]
			pts[1] = [0 +xx, 0 +yy, 0 +zz]
			pts[2] = [0 +xx, 0 +yy+r1, 0 +zz]
			pts[3] = [0 , 0 +yy+r1, 0 +zz]

				face = entities.add_face pts
				status = face.pushpull -zz, true
				group6.name = pa + pa4


			##
			result = UI.messagebox nav29, MB_YESNO
			if result == 7 # Yes
				 ut.close 
				 ent = Sketchup.active_model.entities
				 if so != 0
					group = ent.add_group  group1s, group2s, group3s, group1, group2, group3, group4, group5, group6	
				 else	
					group = ent.add_group  group1, group2, group3, group4, group5, group6		
				 end
				 
			else	
				ut.close
				zh = hh.to_s
				zh1 = zh.sub('.0','')

				utf = UI::WebDialog.new( zh1 , true, 'utf' ,400, 500, 222, 222, true )
				path = File.join(File.dirname(__FILE__), "webtool", "utf-"+ zh1 + ".html")	
				utf.set_file path
				utf.show
				
				utf.add_action_callback("utf") { |dialog,arg|
				
					v = arg.to_s.split(",")
					
					su1 = Float(v[0].strip)
					su2 = Float(v[1].strip)
					su3 = Float(v[2].strip)
					su4 = Float(v[3].strip)
					su5 = Float(v[4].strip)
					su6 = Float(v[5].strip)
					su7 = Float(v[6].strip)
					su8 = Float(v[7].strip)
					su9 = Float(v[8].strip)
					 
						
						h9 = (su9*127.mm)-2.mm
						h8 = (su8*127.mm)-2.mm
						h7 = (su7*127.mm)-2.mm
						h6 = (su6*127.mm)-2.mm
						h5 = (su5*127.mm)-2.mm
						h4 = (su4*127.mm)-2.mm
						h3 = (su3*127.mm)-2.mm
						h2 = (su2*127.mm)-2.mm
						h1 = (su1*127.mm)-2.mm
						
						
						if yy >= 350.mm && yy < 400.mm
						ll = 350.mm 
						end	
						if yy >= 400.mm && yy < 450.mm 
						ll = 400.mm 
						end
						if yy >= 450.mm && yy < 500.mm  
						ll = 450.mm 
						end			
						if yy >= 500.mm && yy < 550.mm 
						ll = 500.mm 
						end	
						if yy >= 550.mm && yy < 600.mm 
						ll = 550.mm 
						end
						if yy >= 600.mm && yy < 650.mm
						ll = 600.mm 
						end
						if yy >= 650.mm  
						ll = 650.mm
						end

						
				##front
				if su1 != 0

					  model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group7 = entities.add_group
					  entities = group7.entities

					 pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1]
					pts[3] = [1.mm, -21.mm, 0.mm+h1]
					
							base = entities.add_face pts
						base.pushpull h1
							model.commit_operation			
						group7.name = pa + pa7
						
					
					## su1
					## subo	
					if su1 == 1 || su1 == 2 || su1 == 3
						
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1-h1+z1+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1-h1+z1+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1-h1+z1+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1-h1+z1+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su1"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1-h1+z1+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1-h1+z1+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1-h1+z1+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1-h1+z1+10.mm ]
						
						if h1 > 125.mm  
						llru1 = 199.mm
						else
						llru1 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru1
							
								model.commit_operation			
							group7r.name = pa + "su1"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
						
					# tab 
					elsif su1 == 4 || su1 == 5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/2 ]
						pts[1] = [xx-d1, 15.mm , h1/2 ]
						pts[2] = [xx-d1, yy, h1/2 ]
						pts[3] = [d1, yy, h1/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su1 == 6  || su1 == 7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/3 ]
						pts[1] = [xx-d1, 15.mm , h1/3 ]
						pts[2] = [xx-d1, yy, h1/3 ]
						pts[3] = [d1, yy, h1/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1/3*2 ]
						pts[2] = [xx-d1, yy, h1/3*2 ]
						pts[3] = [d1, yy, h1/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t



					elsif su1 > 7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/5 ]
						pts[1] = [xx-d1, 15.mm , h1/5 ]
						pts[2] = [xx-d1, yy, h1/5 ]
						pts[3] = [d1, yy, h1/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1/5*2 ]
						pts[2] = [xx-d1, yy, h1/5*2 ]
						pts[3] = [d1, yy, h1/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1/5*3 ]
						pts[2] = [xx-d1, yy, h1/5*3 ]
						pts[3] = [d1, yy, h1/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1/5*4 ]
						pts[2] = [xx-d1, yy, h1/5*4 ]
						pts[3] = [d1, yy, h1/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su2 != 0

						model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group8 = entities.add_group
					  entities = group8.entities

						 pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2]

					  base = entities.add_face pts
						base.pushpull h2
							model.commit_operation
						group8.name = pa + pa7
						
						ent = Sketchup.active_model.entities
						group7 = ent.add_group group7, group8


				## su2

					
					if su2 == 1 || su2 == 2 || su2 == 3	
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su2"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm,  h1+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+10.mm  ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+10.mm ]
						
						if h2 > 125.mm  
						llru2 = 199.mm
						else
						llru2 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru2
							
								model.commit_operation			
							group7r.name = pa + "su2"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su2

					## tab 
					elsif su2==4 || su2==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/2 ]
						pts[2] = [xx-d1, yy, h1+h2/2 ]
						pts[3] = [d1, yy, h1+h2/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su2==6 || su2==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/3 ]
						pts[2] = [xx-d1, yy, h1+h2/3 ]
						pts[3] = [d1, yy, h1+h2/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2/3*2 ]
						pts[3] = [d1, yy, h1+h2/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su2>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/5 ]
						pts[2] = [xx-d1, yy, h1+h2/5 ]
						pts[3] = [d1, yy, h1+h2/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2/5*2 ]
						pts[3] = [d1, yy, h1+h2/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2/5*3 ]
						pts[3] = [d1, yy, h1+h2/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2/5*4 ]
						pts[3] = [d1, yy, h1+h2/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su3 != 0
				 
						model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group9 = entities.add_group
					  entities = group9.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3]

							base = entities.add_face pts
						base.pushpull h3
							model.commit_operation
						group9.name = pa + pa7
						
						ent = Sketchup.active_model.entities
						group7 = ent.add_group group7, group9

					## su3
					## subo
					if su3 == 1 || su3 == 2 || su3 == 3		
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su3"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm,  h1+2.mm+h2+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+10.mm  ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+10.mm ]
						
						if h3 > 125.mm  
						llru3 = 199.mm
						else
						llru3 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru3
								model.commit_operation			
							group7r.name = pa + "su3"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su3		
							
					## tab 
					elsif su3==4 || su3==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/2 ]
						pts[3] = [d1, yy, h1+h2+h3/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su3==6 || su3==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/3 ]
						pts[3] = [d1, yy, h1+h2+h3/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su3>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/5 ]
						pts[3] = [d1, yy, h1+h2+h3/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su4 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group11 = entities.add_group
					  entities = group11.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4]

						 base = entities.add_face pts
					base.pushpull h4
						model.commit_operation
					group11.name = pa + pa7
					
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group11
						
					## su4
					## subo	
					if su4 == 1 || su4 == 2 || su4 == 3
						
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su4"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+10.mm ]
						
						if h4 > 125.mm  
						llru4 = 199.mm
						else
						llru4 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru4
								model.commit_operation			
							group7r.name = pa + "su4"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su4		
					## tab 
					elsif su4==4 || su4==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su4==6 || su4==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su4>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su5 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group12 = entities.add_group
					  entities = group12.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5]

						base = entities.add_face pts
					base.pushpull h5
						model.commit_operation
					group12.name = pa + pa7
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group12  

					## su5
					## subo	
					if su5 == 1 || su5 == 2 || su5 == 3	
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su5"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+10.mm ]
						
						if h5 > 125.mm  
						llru5 = 199.mm
						else
						llru5 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru5
								model.commit_operation			
							group7r.name = pa + "su5"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su5
					## tab 
					elsif su5==4 || su5==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su5==6 || su5==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su5>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su6 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group13 = entities.add_group
					  entities = group13.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6]

					base = entities.add_face pts
					base.pushpull h6
						model.commit_operation
					group13.name = pa + pa7
					
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group13

					## su6
					## subo	
					if su6 == 1 || su6 == 2 || su6 == 3	
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su6"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+10.mm ]
						
						if h6 > 125.mm  
						llru6 = 199.mm
						else
						llru6 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru6
								model.commit_operation			
							group7r.name = pa + "su6"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su6	
					## tab 
					elsif su6==4 || su6==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su6==6 || su6==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su6>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su7 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group14 = entities.add_group
					  entities = group14.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7]

					base = entities.add_face pts
					base.pushpull h7
						model.commit_operation
					group14.name = pa + pa7
					
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group14
					
					## su7
					## subo	
					if su7 == 1 || su7 == 2 || su7 == 3	
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su7"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+10.mm ]
						
						if h7 > 125.mm  
						llru7 = 199.mm
						else
						llru7 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru7
								model.commit_operation			
							group7r.name = pa + "su7"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su7			
					## tab 
					elsif su7==4 || su7==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su7==6 || su7==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su7>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su8 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group15 = entities.add_group
					  entities = group15.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8]

					  base = entities.add_face pts
					base.pushpull h8
						model.commit_operation
					group15.name = pa + pa7
					
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group15
						
					## su8
					## subo	
					if su8 == 1 || su8 == 2 || su8 == 3	
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su8"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+10.mm ]
						
						if h8 > 125.mm  
						llru8 = 199.mm
						else
						llru8 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru8
								model.commit_operation			
							group7r.name = pa + "su8"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su8				
					## tab 
					elsif su8==4 || su8==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su8==6 || su8==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su8>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
				##front
				if su9 != 0

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group16 = entities.add_group
					  entities = group16.entities

						pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+h9]
					pts[1] = [xx-1.mm, -2.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+h9]
					pts[2] = [xx-1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+h9]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+h9]

					  base = entities.add_face pts
					base.pushpull h9
						model.commit_operation
					group16.name = pa + pa7
					
					ent = Sketchup.active_model.entities
					group7 = ent.add_group group7, group16
					
					## su9
					## subo
					if su9 == 1 || su9 == 2 || su9 == 3		
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7s = entities.add_group
						  entities = group7s.entities
						  
							pts = []
						pts[0] = [d1+37.5.mm, -2.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[1] = [xx-d1-37.5.mm, -2.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[2] = [xx-d1-37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						
							 base = entities.add_face pts
							base.pushpull 16.mm
								model.commit_operation			
							group7s.name = pa + "su9"	
					## suru
						  model = Sketchup.active_model
						  model.start_operation pa7
						  entities = model.active_entities
						  group7r = entities.add_group
						  entities = group7r.entities
						  
							pts = []
						pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[1] = [xx-d1-43.5.mm, -2.mm+ll-24.mm , h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[2] = [xx-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+2.mm+h2+2.mm+h3+2.mm+h4+2.mm+h5+2.mm+h6+2.mm+h7+2.mm+h8+2.mm+10.mm ]
						
						if h9 > 125.mm  
						llru9 = 199.mm
						else
						llru9 = 84.mm
						end
						
							base = entities.add_face pts
							base.pushpull llru9
								model.commit_operation			
							group7r.name = pa + "su9"			
							
							ent = Sketchup.active_model.entities
							group7 = ent.add_group group7, group7s, group7r
							
					##end su9	
					## tab 
					elsif su9==4 || su9==5

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t

					## tab 
					elsif su9==6 || su9==7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/3*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/3*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/3*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/3*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t


					## tab 
					elsif su9>7

					model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/5 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/5 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
							model = Sketchup.active_model
					 
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*2 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/5*2 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*2 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*2 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t
							
					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*3 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/5*3 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*3 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*3 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t	

					 model.start_operation pa3
						  entities = model.active_entities
						  group2t= entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [d1, 15.mm, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*4 ]
						pts[1] = [xx-d1, 15.mm , h1+h2+h3+h4+h5+h6+h7+h8+h9/5*4 ]
						pts[2] = [xx-d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*4 ]
						pts[3] = [d1, yy, h1+h2+h3+h4+h5+h6+h7+h8+h9/5*4 ]


							   face = entities.add_face pts
							status = face.pushpull   -z1, true
							group2t.name = pa + pa3
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		

					end
				end
					

				if so != 0
					ent = Sketchup.active_model.entities
					group = ent.add_group  group1s, group2s, group3s, group1, group2, group3, group4, group5, group6, group7	
				else
					ent = Sketchup.active_model.entities
					group = ent.add_group  group1, group2, group3, group4, group5, group6, group7
				end
				utf.close
					
				}
			 

			end 
		}
			 
	end 	 

	file_loaded("ut.rb")

end
