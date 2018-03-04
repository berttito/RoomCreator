rollout Modulos "Modulos Arquitectónicos" width:786 height:811
(
	--MODULO DE PARED
	
	GroupBox 'grpPared' "Pared" pos:[16,16] width:360 height:105 align:#left
	label 'lblLargoPared' "Largo" pos:[40,40] width:26 height:26 align:#left
	spinner 'spinLargoPared' "" pos:[70,40] width:60 height:16 align:#left
	
	label 'lblAnchoPared' "Ancho" pos:[150,40] width:30 height:26 align:#left
	spinner 'spinAnchoPared' "" pos:[183,40] width:60 height:16 align:#left
	
	label 'lblAltoPared' "Alto" pos:[270,40] width:26 height:26 align:#left
	spinner 'spinAltoPared' "" pos:[293,40] width:60 height:16 align:#left
	
	---------------------------------------------------------------------------------------------------
	
	--MODULO DE VENTANA
	
	GroupBox 'grpVentana' "Ventana" pos:[16,130] width:600 height:150 align:#left
	label 'lblLargoParedVentana' "Largo Pared Ventana" pos:[40,155] width:105 height:26 align:#left
	spinner 'spinLargoParedVentana' "" pos:[143,155] width:60 height:16 align:#left
	
	label 'lblAnchoParedVentana' "Ancho Pared Ventana" pos:[230,155] width:120 height:26 align:#left
	spinner 'spinAnchoParedVentana' "" pos:[335,155] width:60 height:16 align:#left
	
	label 'lblAltoParedVentana' "Alto Pared Ventana" pos:[425,155] width:100 height:26 align:#left
	spinner 'spinAltoParedVentana' "" pos:[520,155] width:60 height:16 align:#left
	
	label 'lblLargoVentana' "Largo" pos:[40,190] width:26 height:26 align:#left
	spinner 'spinLargoVentana' "" pos:[70,190] width:60 height:16 range:[0,80,0] align:#left
	
	label 'lblAnchoVentana' "Ancho" pos:[230,190] width:30 height:26 align:#left
	spinner 'spinAnchoVentana' "" pos:[265,190] width:60 height:16 range:[0,90,0] align:#left
	
	label 'lblAltoVentana' "Alto" pos:[425,190] width:26 height:26 align:#left
	spinner 'spinAltoVentana' "" pos:[450,190] width:60 height:16 align:#left
	
	---------------------------------------------------------------------------------------------------
	
	--MODULO DE PUERTA
	
	GroupBox 'grpPuerta' "Puerta" pos:[16,290] width:600 height:150 align:#left
	label 'lblLargoParedPuerta' "Largo Pared Puerta" pos:[40,315] width:100 height:26 align:#left
	spinner 'spinLargoParedPuerta' "" pos:[140,315] width:60 height:16 align:#left
	
	label 'lblAnchoParedPuerta' "Ancho Pared Puerta" pos:[230,315] width:120 height:26 align:#left
	spinner 'spinAnchoParedPuerta' "" pos:[335,315] width:60 height:16 align:#left
	
	label 'lblAltoParedPuerta' "Alto Pared Puerta" pos:[425,315] width:100 height:26 align:#left
	spinner 'spinAltoParedPuerta' "" pos:[520,315] width:60 height:16 align:#left				
	
	label 'lblLargoPuerta' "Largo" pos:[40,350] width:26 height:26 align:#left
	spinner 'spinLargoPuerta' "" pos:[70,350] width:60 height:16 align:#left
	
	label 'lblAnchoPuerta' "Ancho" pos:[230,350] width:30 height:26 align:#left
	spinner 'spinAnchoPuerta' "" pos:[265,350] width:60 height:16 range:[0,90,0] align:#left
	
	label 'lblAltoPuerta' "Alto" pos:[425,350] width:26 height:26 align:#left
	spinner 'spinAltoPuerta' "" pos:[450,350] width:60 height:16 range:[0,50,0] align:#left
	
	
	---------------------------------------------------------------------------------------------------
	
	-- BOTÓN GENERAR GEOMETRÍA
	
	button 'generateGeometry_button' "Generar Geometría" pos:[250,460] width:120 height:20 align:#left

	---------------------------------------------------------------------------------------------------
	
	
	--CREAR HABITACION
	
	GroupBox 'grpHabitacion' "Habitacion" pos:[144,486] width:360 height:105 align:#left
	label 'lblNumHabitaciones' "Num Habitaciones" pos:[233,500] width:92 height:26 align:#left
	spinner 'spinNumHabitaciones' "" pos:[329,500] width:60 height:16 range:[0,10,0] align:#left
	
	label 'lblLargoHabitacion' "Largo" pos:[173,532] width:26 height:26 align:#left
	spinner 'spinLargoHabitacion' "" pos:[203,532] width:60 height:16 range:[0,500,0] align:#left
	
	label 'lblAnchoHabitacion' "Ancho" pos:[283,532] width:30 height:26 align:#left
	spinner 'spinAnchoHabitacion' "" pos:[316,532] width:60 height:16 range:[0,500,0] align:#left
	
	label 'lblPosicionXHabitacion' "Posicion X" pos:[165,565] width:50 height:26 align:#left
	spinner 'spinPosicionXHabitacion' "" pos:[226,565] width:60 height:16 align:#left
	
	label 'lblPosicionYHabitacion' "Posicion Y" pos:[304,565] width:51 height:26 align:#left
	spinner 'spinPosicionYHabitacion' "" pos:[363,565] width:60 height:16 align:#left
	
	---------------------------------------------------------------------------------------------------
	
	-- BOTÓN GENERAR HABITACIÓN	
	
	button 'generateRoom_button' "Generar Habitacion" pos:[250,624] width:120 height:20 align:#left
	
	-------------------------------------------------------------------------------------------------------------
	
	-- BOTÓN CAMBIAR POR VENTANA
	
	button 'changeWindow_button' "Cambiar por ventana" pos:[150,724] width:120 height:20 align:#left
	
	-------------------------------------------------------------------------------------------------------------
	
	-- BOTÓN CAMBIAR POR PUERTA
	
	button 'changeDoor_button' "Cambiar por puerta" pos:[350,724] width:120 height:20 align:#left
	
	-------------------------------------------------------------------------------------------------------------
	
	
	
	
	--GENERAR GEOMETRÍA		
	
	------------------------------------------------------------------------------------------------------------------------
	
	on generateGeometry_button pressed do
	(				
		if spinLargoPared.value == 0 and spinAnchoPared.value == 0 and spinAltoPared.value == 0 and
			spinLargoParedVentana.value == 0 and spinAnchoParedVentana.value == 0 and spinAltoParedVentana.value == 0 and
		    spinLargoParedPuerta.value == 0 and spinAnchoParedPuerta.value == 0 and spinAltoParedPuerta.value == 0 then
		(
			print("Debes rellenar todas las medidas")
		)
		else 
		(			
		
		delete $*
		
		dummy_obj=Dummy()
				
		--MEDIDAS DUMMY
		dummy_obj.boxsize.y = spinLargoPared.value + spinLargoParedVentana.value + spinLargoParedPuerta.value + spinAnchoPared.value
			
		if spinAnchoPared.value >= spinAnchoParedVentana.value AND spinAnchoPared.value >= spinAnchoParedPuerta.value then
		(
			dummy_obj.boxsize.x=spinAnchoPared.value
		)
		
		if spinAnchoParedVentana.value > spinAnchoPared.value AND spinAnchoParedVentana.value >= spinAnchoParedPuerta.value then
		(
			dummy_obj.boxsize.x = spinAnchoParedVentana.value
		)
		
		if spinAnchoParedPuerta.value > spinAnchoPared.value AND spinAnchoParedPuerta.value > spinAnchoParedVentana.value then
		(
			dummy_obj.boxsize.x = spinAnchoParedPuerta.value
		)
		
		if spinAltoPared.value >= spinAltoParedVentana.value AND spinAltoPared.value >= spinAltoParedPuerta.value then
		(
			dummy_obj.boxsize.z=spinAltoPared.value
		)
		
		if spinAltoParedVentana.value > spinAltoPared.value AND spinAltoParedVentana.value >= spinAltoParedPuerta.value then
		(
			dummy_obj.boxsize.z = spinAltoParedVentana.value
		)
		
		if spinAltoParedPuerta.value > spinAltoPared.value AND spinAltoParedPuerta.value > spinAltoParedVentana.value then
		(
			dummy_obj.boxsize.z = spinAltoParedPuerta.value
		)
			
		
		--GENERAR PARED NORMAL	
		
		pared = Box lengthsegs:1 widthsegs:1 heightsegs:1 length:spinLargoPared.value width:spinAnchoPared.value height:spinAltoPared.value mapcoords:on pos:[160, -70, 0] isSelected:on		
		pared.name = "Pared"
		pared.pivot = pared.min
		macros.run "Modifier Stack" "Convert_to_Poly"
		modPanel.addModToSelection(Unwrap_UVW())
		$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
		maxOps.collapsenodeto pared 1 true
		deselect $Pared	
		
		dummy_obj.pivot=dummy_obj.min
		dummy_obj.pos = pared.pos		
		pared.parent = dummy_obj
		
		
		--GENERAR PARED CON VENTANA
		
		paredConVentana = Box lengthsegs:1 widthsegs:1 heightsegs:1 length:spinLargoParedVentana.value width:spinAnchoParedVentana.value height:spinAltoParedVentana.value mapcoords:on isSelected:on		
		paredConVentana.name = "ParedConVentana"
		paredConVentana.pivot = paredConVentana.min
		paredConVentana.pos = [pared.pos.x, pared.pos.y + spinLargoPared.value, pared.pos.z]
		select $ParedConVentana	
		macros.run "Modifier Stack" "Convert_to_Poly"
		subobjectLevel = 2
		$.EditablePoly.SetSelection #Edge #{10,12}
		$.connectEdgeSegments = 2
		$.connectEdgeSlide =spinAltoVentana.value
		$.connectEdgePinch =spinLargoVentana.value
		$.EditablePoly.ConnectEdges()
		$.EditablePoly.SetSelection #Edge #{17..18}
		$.connectEdgeSegments = 2
		$.connectEdgePinch = spinAnchoVentana.value
		$.EditablePoly.ConnectEdges()
		subobjectLevel = 4
		$.EditablePoly.SetSelection #Face #{6}
		polyop.extrudeFaces $ #{6} (-50)
		$.EditablePoly.SetSelection #Face #{4,6}
		$.EditablePoly.delete #Face
		subobjectLevel = 0
		addModifier $ (symmetry())		
		$.modifiers[#Symmetry].flip = true				
		modPanel.addModToSelection(Unwrap_UVW())
		$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
		maxOps.collapsenodeto paredConVentana 1 true
		deselect $ParedConVentana			
		
		paredConVentana.parent = dummy_obj
		
		--GENERAR PARED CON PUERTA		
			
		paredConPuerta = Box lengthsegs:1 widthsegs:1 heightsegs:1 length:spinLargoParedPuerta.value width:spinAnchoParedPuerta.value height:spinAltoParedPuerta.value mapcoords:on isSelected:on		
		paredConPuerta.name = "ParedConPuerta"
		paredConPuerta.pivot = paredConPuerta.min
		paredConPuerta.pos = [paredConVentana.pos.x, paredConVentana.pos.y + spinLargoParedVentana.value, paredConVentana.pos.z]
		select $ParedConPuerta
		macros.run "Modifier Stack" "Convert_to_Poly"
		subobjectLevel = 2
		$.EditablePoly.SetSelection #Edge #{1, 3, 8}
		$.connectEdgeSegments = 2		
		$.connectEdgePinch =spinAnchoPuerta.value
		$.EditablePoly.ConnectEdges()
		$.EditablePoly.SetSelection #Edge #{10, 12, 21..22}
		$.connectEdgeSegments = 1
		$.connectEdgeSlide= spinAltoPuerta.value
		$.EditablePoly.ConnectEdges()
		subobjectLevel = 4
		$.EditablePoly.SetSelection #Face #{6}
		polyop.extrudeFaces $ #{6} (-50)
		$.EditablePoly.SetSelection #Face #{1, 4, 6, 14}
		$.EditablePoly.delete #Face
		subobjectLevel = 0
		addModifier $ (symmetry())
		--$.modifiers[#Symmetry].axis = 1
		$.modifiers[#Symmetry].flip = true		
		modPanel.addModToSelection(Unwrap_UVW())
		$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
		maxOps.collapsenodeto paredConPuerta 1 true
		deselect $ParedConPuerta	
			
		paredConPuerta.parent = dummy_obj
	
		--GENERAR COLUMNA		
			
		columna = Box lengthsegs:1 widthsegs:1 heightsegs:1 length:spinAnchoPared.value width:spinAnchoPared.value height:spinAltoPared.value
		columna.pivot=columna.min		
		columna.pos = [paredConPuerta.pos.x, paredConPuerta.pos.y + spinLargoParedPuerta.value, paredConPuerta.pos.z]
		columna.name = ("Columna")		
			
		columna.parent = dummy_obj
		)
		
	)
	
	
	
	--GENERAR HABITACION
	
	
	------------------------------------------------------------------------------------------------------------------------	
	
	on generateRoom_button pressed do
	(
		alturaPisos = (spinAltoPared.value  * spinNumHabitaciones.value) + (spinAltoPared.value *(spinNumHabitaciones.value - 1))
		delete $*		
		
		--CREAR DUMMY
			dummy_obj=Dummy()
			dummy_obj.boxsize=[spinLargoHabitacion.value,spinAnchoHabitacion.value,alturaPisos]
			dummy_obj.pivot=dummy_obj.min
			dummy_obj.pos = [spinPosicionXHabitacion.value, spinPosicionYHabitacion.value, 0]
			
		for i = 0 to spinNumHabitaciones.value - 1 do
		(						
			numParedesAncho= spinLargoHabitacion.value / spinLargoPared.value
			resto = mod spinLargoHabitacion.value spinLargoPared.value 
			contadorNombre = 1
			auxCount = 0			
			
			contadorAltura = dummy_obj.pos.z + spinAltoPared.value * 2 * i 
			contadorAlturaTecho = dummy_obj.pos.z + spinAltoPared.value * 2 * i + spinAltoPared.value
			
			
			--PAREDES DEL ANCHO
			if resto == 0 then
			(
				columna1 = Box pos:[0,0,0]length:spinAnchoPared.value width:spinAnchoPared.value height:spinAltoPared.value
				columna1.pivot=columna1.min
				columna1.pos = [dummy_obj.pos.x, dummy_obj.pos.y, contadorAltura]
				columna1.name = ("Columna001") 
				
				columna1.parent = dummy_obj
				
				for i = 1 to numParedesAncho do
				(			
					wall_1=Box pos:[0,0,0]length:spinAnchoPared.value width:spinLargoPared.value height:spinAltoPared.value
					wall_1.pivot=wall_1.min
						
					if i== 1 then
					(
						wall_1.name = ("ParedLargo000") 
						wall_1.pos=[columna1.pos.x + spinAnchoPared.value, columna1.pos.y, columna1.pos.z]					
						deselect wall_1
					) 
					else	
					(
						wall_1.name = ("ParedLargo00" + (contadorNombre as String)) 
						contadorNombre+=1
						auxCount += spinLargoPared.value
						wall_1.pos=[dummy_obj.pos.x + auxCount + spinAnchoPared.value, dummy_obj.pos.y, contadorAltura]
						select wall_1
					)						
					
					if i == numParedesAncho then
					(
						delete $
						contadorNombre-=1
						aux = spinLargoPared.value -  2 * spinAnchoPared.value
						
						wall_1=Box pos:[0,0,0]length:spinAnchoPared.value width:aux height:spinAltoPared.value
						wall_1.pivot=wall_1.min						
						wall_1.name = ("ParedLargo00" + (contadorNombre as String)) 
						auxCount += spinLargoPared.value
						wall_1.pos=[dummy_obj.pos.x + auxCount  - spinLargoPared.value + spinAnchoPared.value, dummy_obj.pos.y, contadorAltura]						
					)
					
					wall_1.parent = dummy_obj
				)				
				
				auxCount = 0
				
				columna2 = Box pos:[0,0,0]length:spinAnchoPared.value width:spinAnchoPared.value height:spinAltoPared.value
				columna2.pivot=columna2.min
				columna2.pos = [dummy_obj.pos.x,dummy_obj.pos.y+spinAnchoHabitacion.value - spinAnchoPared.value, contadorAltura]
				columna2.name = ("Columna002") 
				
				columna2.parent = dummy_obj
				
				for i = 1 to numParedesAncho do
				(							
					wall_3=Box pos:[0,0,0]length:spinAnchoPared.value width:spinLargoPared.value height:spinAltoPared.value
					wall_3.pivot=wall_3.min		
					
					if i== 1 then 
					(
						wall_3.name = ("ParedLargo00" + (contadorNombre as String)) 
						wall_3.pos= [columna2.pos.x + spinAnchoPared.value, columna2.pos.y, columna2.pos.z]					
						deselect wall_3
					)
					else	
					(
						contadorNombre+=2
						wall_3.name = ("ParedLargo00" + (contadorNombre as String)) 			
						auxCount += spinLargoPared.value
						wall_3.pos=[dummy_obj.pos.x + auxCount + spinAnchoPared.value, dummy_obj.pos.y+spinAnchoHabitacion.value - spinAnchoPared.value, contadorAltura]
						select wall_3
					)	
					
					if i == numParedesAncho then
					(					
						delete $
						contadorNombre-=1
						aux = spinLargoPared.value -  2 * spinAnchoPared.value
					
						wall_3=Box pos:[0,0,0]length:spinAnchoPared.value width:aux height:spinAltoPared.value
						wall_3.pivot=wall_3.min						
						wall_3.name = ("ParedLargo00" + (contadorNombre as String)) 
						auxCount += spinLargoPared.value
						wall_3.pos=[dummy_obj.pos.x + auxCount + spinAnchoPared.value - spinLargoPared.value, dummy_obj.pos.y+spinAnchoHabitacion.value - spinAnchoPared.value, contadorAltura]					
					)
					
					wall_3.parent = dummy_obj
				)		
			)
			else
			(
				print("Las medidas tienen que ser multiplos")
			)
			
			
			--PAREDES DEL LARGO
			
			numParedesLargo = spinAnchoHabitacion.value / spinLargoPared.value
			resto2 = mod spinAnchoHabitacion.value spinLargoPared.value
			auxCount = 0
			contadorNombre = 0
			if resto2 == 0 then 
			(
				for i = 1 to numParedesLargo do
				(							
					wall_2=Box pos:[0,0,0]length:spinLargoPared.value width:spinAnchoPared.value height:spinAltoPared.value
					wall_2.pivot=wall_2.min		
					
					if i== 1 then
					(
						wall_2.name = ("ParedAncho000") 
						wall_2.pos=[columna1.pos.x , columna1.pos.y + spinAnchoPared.value, columna1.pos.z]						
						deselect wall_2
					)		
					
					else	
					(
						contadorNombre+=1
						wall_2.name = ("ParedAncho00" + (contadorNombre as String)) 	
						auxCount += spinLargoPared.value
						wall_2.pos=[dummy_obj.pos.x, dummy_obj.pos.y + auxCount + spinAnchoPared.value, contadorAltura]	
						select wall_2
					)
					
					if i == numParedesLargo then
					(
						delete $
						contadorNombre-=1
						aux = spinLargoPared.value -  2 * spinAnchoPared.value	
						
						wall_2=Box pos:[0,0,0]length:aux width:spinAnchoPared.value height:spinAltoPared.value
						wall_2.pivot=wall_2.min						
						wall_2.name = ("ParedAncho00" + (contadorNombre as String)) 
						auxCount += spinLargoPared.value
						wall_2.pos=[dummy_obj.pos.x, dummy_obj.pos.y + auxCount + spinAnchoPared.value - spinLargoPared.value, contadorAltura]					
					)
					
					wall_2.parent = dummy_obj
				)	
				
				auxCount = 0
				contadorNombre += 1
				
				columna3 = Box pos:[0,0,0]length:spinAnchoPared.value width:spinAnchoPared.value height:spinAltoPared.value
				columna3.pivot=columna3.min
				columna3.pos = [dummy_obj.pos.x +spinAnchoHabitacion.value - spinAnchoPared.value,dummy_obj.pos.y,contadorAltura]
				columna3.name = ("Columna003") 
				
				columna3.parent = dummy_obj
				
				for i = 1 to numParedesLargo do
				(							
					wall_4=Box pos:[0,0,0]length:spinLargoPared.value width:spinAnchoPared.value height:spinAltoPared.value
					wall_4.pivot=wall_4.min		
					if i== 1 then
					(
						wall_4.name = ("ParedAncho00" + (contadorNombre as String)) 
						wall_4.pos=[columna3.pos.x , columna1.pos.y + spinAnchoPared.value, columna1.pos.z]							
						deselect wall_4			
					) 
					
					else	
					(
						contadorNombre+=1
						wall_4.name = ("ParedAncho00" + (contadorNombre as String)) 
						auxCount += spinLargoPared.value
						wall_4.pos=[dummy_obj.pos.x +spinLargoHabitacion.value - spinAnchoPared.value, dummy_obj.pos.y + auxCount + spinAnchoPared.value, contadorAltura]	
						select wall_4
					)
					
					if i == numParedesLargo then
					(
						delete $
						contadorNombre-=1
						aux = spinLargoPared.value -  2 * spinAnchoPared.value
						
						wall_4=Box pos:[0,0,0]length:aux width:spinAnchoPared.value height:spinAltoPared.value
						wall_4.pivot=wall_4.min						
						wall_4.name = ("ParedAncho00" + (contadorNombre as String)) 
						auxCount += spinLargoPared.value
						wall_4.pos=[dummy_obj.pos.x + spinLargoHabitacion.value - spinAnchoPared.value, dummy_obj.pos.y + auxCount + spinAnchoPared.value - spinLargoPared.value, contadorAltura]					
					)
					
					wall_4.parent = dummy_obj
				)
	
				columna4 = Box pos:[0,0,0]length:spinAnchoPared.value width:spinAnchoPared.value height:spinAltoPared.value
				columna4.pivot=columna4.min
				columna4.pos = [dummy_obj.pos.x +spinAnchoHabitacion.value - spinAnchoPared.value,dummy_obj.pos.y  +spinAnchoHabitacion.value - spinAnchoPared.value,contadorAltura]
				columna4.name = ("Columna004") 

				columna4.parent = dummy_obj
	
				--CREAR EL SUELO
			
				room_floor = Box pos:[0,0,-6]length:spinAnchoHabitacion.value width:spinLargoHabitacion.value height:1
				room_floor.pivot=room_floor.min
				room_floor.pos = [dummy_obj.pos.x, dummy_obj.pos.y, contadorAltura]
				room_floor.name = ("Suelo")		
				
				room_floor.parent = dummy_obj
				
				--CREAR TECHO			
				
				roof = Box pos:[0,0,-6]length:spinAnchoHabitacion.value width:spinLargoHabitacion.value height:1
				roof.pivot=roof.min
				roof.pos = [dummy_obj.pos.x, dummy_obj.pos.y, contadorAlturaTecho]
				roof.name = ("Techo")		
				
				roof.parent = dummy_obj
			)
			
		)
		
	)
	
	--CAMBIAR POR VENTANA
	
	------------------------------------------------------------------------------------------------------------------------	
	
	on changeWindow_button pressed do
	(
		seleccion = $ 
		
		if  $.length == spinLargoPared.value then 
		(
			macros.run "Modifier Stack" "Convert_to_Poly"
			subobjectLevel = 2
			$.EditablePoly.SetSelection #Edge #{10,12}
			$.connectEdgeSegments = 2
			$.connectEdgeSlide =spinAltoVentana.value
			$.connectEdgePinch =spinLargoVentana.value
			$.EditablePoly.ConnectEdges()
			$.EditablePoly.SetSelection #Edge #{17..18}
			$.connectEdgeSegments = 2
			$.connectEdgePinch = spinAnchoVentana.value
			$.EditablePoly.ConnectEdges()
			subobjectLevel = 4
			$.EditablePoly.SetSelection #Face #{6}
			polyop.extrudeFaces $ #{6} (-50)
			$.EditablePoly.SetSelection #Face #{4,6}
			$.EditablePoly.delete #Face
			subobjectLevel = 0
			addModifier $ (symmetry())		
			$.modifiers[#Symmetry].flip = true		
			modPanel.addModToSelection(Unwrap_UVW())
			$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
			maxOps.collapsenodeto $ 1 true
			deselect $
				
			if refWindow != undefined then
			(
				refWindow.length = spinLargoVentana.value
				refWindow.height = spinAltoVentana.value
				refWindow.width = spinAnchoVentana.value
			) 
		)
			
		else if  $.length == spinAnchoPared.value  then 
		(
			macros.run "Modifier Stack" "Convert_to_Poly"
			subobjectLevel = 2
			$.EditablePoly.SetSelection #Edge #{11..12}
			$.connectEdgeSegments = 2
			$.connectEdgeSlide =spinAltoVentana.value
			$.connectEdgePinch =spinLargoVentana.value
			$.EditablePoly.ConnectEdges()
			$.EditablePoly.SetSelection #Edge #{17..18}
			$.connectEdgeSegments = 2
			$.connectEdgePinch = spinAnchoVentana.value
			$.EditablePoly.ConnectEdges()
			subobjectLevel = 4
			$.EditablePoly.SetSelection #Face #{5}
			polyop.extrudeFaces $ #{5} (-50)
			$.EditablePoly.SetSelection #Face #{3,5}
			$.EditablePoly.delete #Face
			subobjectLevel = 0
			addModifier $ (symmetry())	
			$.modifiers[#Symmetry].axis = 1					
			modPanel.addModToSelection(Unwrap_UVW())
			$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
			maxOps.collapsenodeto $ 1 true
			deselect $
		)	
	)
	
	--CAMBIAR POR PUERTA
	
	------------------------------------------------------------------------------------------------------------------------	
	
	on changeDoor_button pressed do
	(
		seleccion = $ 
		
		if $.length == spinLargoPared.value then 
		(
			macros.run "Modifier Stack" "Convert_to_Poly"
			subobjectLevel = 2
			$.EditablePoly.SetSelection #Edge #{1, 3, 8}
			$.connectEdgeSegments = 2		
			$.connectEdgePinch =spinAnchoPuerta.value
			$.EditablePoly.ConnectEdges()
			$.EditablePoly.SetSelection #Edge #{10, 12, 21..22}
			$.connectEdgeSegments = 1
			$.connectEdgeSlide= spinAltoPuerta.value
			$.EditablePoly.ConnectEdges()
			subobjectLevel = 4
			$.EditablePoly.SetSelection #Face #{6}
			polyop.extrudeFaces $ #{6} (-50)
			$.EditablePoly.SetSelection #Face #{1, 4, 6, 14}
			$.EditablePoly.delete #Face
			subobjectLevel = 0
			addModifier $ (symmetry())
			--$.modifiers[#Symmetry].axis = 1
			$.modifiers[#Symmetry].flip = true		
			modPanel.addModToSelection(Unwrap_UVW())
			$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
			maxOps.collapsenodeto $ 1 true
			deselect $				
		)
			
		else if $.length == spinAnchoPared.value then 
		(
			macros.run "Modifier Stack" "Convert_to_Poly"
			subobjectLevel = 2
			$.EditablePoly.SetSelection #Edge #{2, 4..5}
			$.connectEdgeSegments = 2		
			$.connectEdgePinch =spinAnchoPuerta.value
			$.EditablePoly.ConnectEdges()
			$.EditablePoly.SetSelection #Edge #{9..10, 21..22}
			$.connectEdgeSegments = 1
			$.connectEdgeSlide= spinAltoPuerta.value
			$.EditablePoly.ConnectEdges()
			subobjectLevel = 4
			$.EditablePoly.SetSelection #Face #{3}
			polyop.extrudeFaces $ #{3} (-50)
			$.EditablePoly.SetSelection #Face #{1, 3, 5, 14}
			$.EditablePoly.delete #Face
			subobjectLevel = 0
			addModifier $ (symmetry())
			$.modifiers[#Symmetry].axis = 1
			$.modifiers[#Symmetry].flip = true		
			modPanel.addModToSelection(Unwrap_UVW())
			$.modifiers["unwrap_uvw"].flattenMap (45 as Float) #() 0.01 true 0 true true
			--maxOps.collapsenodeto $ 1 true
			deselect $			
		)	
	)	
)



createDialog Modulos width:650 hight:500  pos:[700, 1]