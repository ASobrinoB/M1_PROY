Algoritmo Ventas

	// definir variables para este ejercicio

	definir Producto               Como Entero
	definir Cantidad               Como Entero 
	
	definir ExisteCupon            Como Caracter
	definir PromocionCupon         Como Real
	definir MontoPromocionCupon    Como Real
	
	definir PromocionCantidad      Como Real
	definir MontoPromocionCantidad Como Real
	
	definir Destino                Como Entero
	definir ValorDespachoXKg       Como Real
	definir ValorDespachoXPeso     Como Real
	definir MontoTotalEnvio        Como Real
	
	definir PorcentajeIVA          Como Real
	definir PreciosinIVA           Como Real
	definir PrecioconIVA           Como Real
	definir PrecioFinal            Como Real
	definir MontoVenta             Como Real
		
	definir Puntero                Como Entero
	definir pProducto              Como Entero
	definir pDestino               Como Entero
	definir Existe                 Como Logico
	definir Espera                 Como Caracter
	definir Separacion             Como Caracter
	definir Moneda                 Como Caracter
	definir Truncar                Como Entero
	
	// definir arreglo con los atributos del producto

	dimensionar ArrPCodigo[20]
	dimensionar ArrPNombre[20]
	dimensionar ArrPPrecio[20]
	dimensionar ArrPPesoKg[20]

	// definir arreglo con los atributos del destino de despacho

	dimensionar ArrDCodigo[13]
	dimensionar ArrDNombre[13]
	dimensionar ArrDMonto[13]

	// Llenar el arreglo con los codigos de los productos

	ArrPCodigo[0]<-1
	ArrPCodigo[1]<-2
	ArrPCodigo[2]<-3
	ArrPCodigo[3]<-4
	ArrPCodigo[4]<-5
	ArrPCodigo[5]<-6
	ArrPCodigo[6]<-7
	ArrPCodigo[7]<-8
	ArrPCodigo[8]<-9
	ArrPCodigo[9]<-10
	ArrPCodigo[10]<-11
	ArrPCodigo[11]<-12
	ArrPCodigo[12]<-13
	ArrPCodigo[13]<-14
	ArrPCodigo[14]<-15
	ArrPCodigo[15]<-16
	ArrPCodigo[16]<-17
	ArrPCodigo[17]<-18
	ArrPCodigo[18]<-19
	ArrPCodigo[19]<-20
	
	// Llenar el arreglo con el nombre de los productos

	ArrPNombre[0]<-"Zapatilla color blanco marca NIKE     "
	ArrPNombre[1]<-"Zapatilla color azul marca PUMA       "
	ArrPNombre[2]<-"Zapatilla color verde marca ADIDAS    "
	ArrPNombre[3]<-"Zapatilla color negro marca BROOKS    "
	ArrPNombre[4]<-"Zapatilla color rojo marca NEW Balance"
	ArrPNombre[5]<-"Zapatilla color amarillo marca REEBOK "
	ArrPNombre[6]<-"Zapatilla color naranjo marca SKECHERS"
	ArrPNombre[7]<-"Zapatilla color cafe marca VANS       "
	ArrPNombre[8]<-"Zapatilla dise�o flores marca ADIDAS  "
	ArrPNombre[9]<-"Zapatilla dise�o cuadros marca ADIDAS "
	ArrPNombre[10]<-"Zapatilla dise�o circulos marca ADIDAS"
	ArrPNombre[11]<-"Zapatilla color violeta marca NIKE    "
	ArrPNombre[12]<-"Zapatilla color celeste marca PUMA    "
	ArrPNombre[13]<-"Zapatilla color gris marca BROOKS     "
	ArrPNombre[14]<-"Zapatilla basketball marca NEW Balance"
	ArrPNombre[15]<-"Zapatilla running marca NIKE          "
	ArrPNombre[16]<-"Zapatilla escolar en promocion        "
	ArrPNombre[17]<-"Zapatilla exclusiva NIKE              "
	ArrPNombre[18]<-"Zapatilla exclusiva SKECHERS          "
	ArrPNombre[19]<-"Zapatilla exclusiva ADIDAS            "
	
	// Llenar el arreglo con el precio de los productos

	ArrPPrecio[0]<-100.00
	ArrPPrecio[1]<-112.00
	ArrPPrecio[2]<-109.99
	ArrPPrecio[3]<-109.99
	ArrPPrecio[4]<-105.00
	ArrPPrecio[5]<-122.00
	ArrPPrecio[6]<-120.00
	ArrPPrecio[7]<-109.99
	ArrPPrecio[8]<-160.00
	ArrPPrecio[9]<-169.99
	ArrPPrecio[10]<-165.00
	ArrPPrecio[11]<-159.99
	ArrPPrecio[12]<-149.99
	ArrPPrecio[13]<-109.90
	ArrPPrecio[14]<-219.90
	ArrPPrecio[15]<-185.00
	ArrPPrecio[16]<-79.99
	ArrPPrecio[17]<-499.99
	ArrPPrecio[18]<-349.99
	ArrPPrecio[19]<-449.99
	
	// Llenar el arreglo con el peso en KG de los productos

	ArrPPesoKg[0]<-1.50
	ArrPPesoKg[1]<-2.50
	ArrPPesoKg[2]<-2.50
	ArrPPesoKg[3]<-2.50
	ArrPPesoKg[4]<-2.00
	ArrPPesoKg[5]<-2.00
	ArrPPesoKg[6]<-2.00
	ArrPPesoKg[7]<-2.50
	ArrPPesoKg[8]<-3.00
	ArrPPesoKg[9]<-3.00
	ArrPPesoKg[10]<-2.80
	ArrPPesoKg[11]<-2.50
	ArrPPesoKg[12]<-2.50
	ArrPPesoKg[13]<-2.50
	ArrPPesoKg[14]<-4.00
	ArrPPesoKg[15]<-0.50
	ArrPPesoKg[16]<-2.50
	ArrPPesoKg[17]<-3.50
	ArrPPesoKg[18]<-3.00
	ArrPPesoKg[19]<-3.00
	
	// Llenar el arreglo con los codigos de los destinos de despacho

	ArrDCodigo[0]<-1
	ArrDCodigo[1]<-2
	ArrDCodigo[2]<-3
	ArrDCodigo[3]<-4
	ArrDCodigo[4]<-5
	ArrDCodigo[5]<-6
	ArrDCodigo[6]<-7
	ArrDCodigo[7]<-8
	ArrDCodigo[8]<-9
	ArrDCodigo[9]<-10
	ArrDCodigo[10]<-11
	ArrDCodigo[11]<-12
	ArrDCodigo[12]<-13

	// Llenar el arreglo con el nombre de los destinos de despacho

	ArrDNombre[0]<-"El cliente se lleva la compra de inmediato             "
	ArrDNombre[1]<-"El cliente retira la compra mas tarde                  "
	ArrDNombre[2]<-"Despacho a Santiago Centro                             "
    ArrDNombre[3]<-"Despacho a Santiago Norte                              "
	ArrDNombre[4]<-"Despacho a Santiago Sur                                "
	ArrDNombre[5]<-"Despacho a Santiago Oriente                            "
	ArrDNombre[6]<-"Despacho a Santiago Poniente                           "
	ArrDNombre[7]<-"Despacho fuera de la provincia de Santiago             "
	ArrDNombre[8]<-"Despacho a regiones al norte de la Region Metropolitana"
	ArrDNombre[9]<-"Despacho a regiones al sur   de la Region Metropolitana"
	ArrDNombre[10]<-"Despacho a Isla de Pascua                              "
	ArrDNombre[11]<-"Despacho a Isla Juan Fernandez                         "
	ArrDNombre[12]<-"Despacho a la Antartica o fuera de Chile               "

	// Llenar el arreglo con el monto de los destinos de despacho

	ArrDMonto[0]<-0.00
	ArrDMonto[1]<-0.00
	ArrDMonto[2]<-10.00
	ArrDMonto[3]<-10.00
	ArrDMonto[4]<-10.00
	ArrDMonto[5]<-10.00
	ArrDMonto[6]<-10.00
	ArrDMonto[7]<-13.00
	ArrDMonto[8]<-20.00
	ArrDMonto[9]<-20.00
	ArrDMonto[10]<-35.00
	ArrDMonto[11]<-35.00
	ArrDMonto[12]<-45.00
	
	// asignar datos constantes

	PorcentajeIVA<-12.00
	PromocionCupon<-10.00
	PromocionCantidad<-5.00
	ValorDespachoXKg<-2.00
	Moneda<-"USD "
	Truncar<-100.00
	
	Repetir
		Limpiar Pantalla
		Escribir "Lista de productos"
		Escribir "------------------"
		Escribir " "
		Escribir "                                                  Precio"
		Escribir "Codigo                  Producto               s/IVA ", Moneda
		Escribir "--------------------------------------------------------"
		
		Separacion<-"  --- "
		Para Puntero<-0 Hasta 19 Con Paso 1 Hacer
			Si Puntero >= 9 Entonces
				Separacion<-" --- "
			FinSi
			Escribir ArrPCodigo[Puntero], Separacion, ArrPNombre[Puntero], " --- ", ArrPPrecio[Puntero]
		FinPara
		Escribir " "
		
		Escribir "Seleccione el codigo del producto (Digite 0 para Salir)"
		Leer Producto
		
		Si Producto <> 0 Entonces
			Existe<-Falso
			pProducto<-0
			
			Para Puntero<-0 Hasta 19 Con Paso 1 Hacer
				Si ArrPCodigo[Puntero] = Producto Entonces
					Existe<-Verdadero
					pProducto<-Puntero
					Puntero<-20
				FinSi
			FinPara
			
			Si Existe = Falso Entonces
				Escribir "Codigo del producto no existe, presione ENTER para volver atras"
				Leer Espera
			SiNO
				Escribir "Digite la cantidad de unidades (Digite 0 para volver atras)"
				Leer Cantidad
				
				Si Cantidad > 0 Entonces
					Escribir "El cliente entrego cupon de promocion (Digite  S=Si  N=No)"
					Leer ExisteCupon
				
					Si ExisteCupon <> "S" y ExisteCupon <> "s" Entonces
						ExisteCupon<-"N"
					FinSi
					
					Escribir " "
					Escribir "Lista de destinos del despacho"
					Escribir "------------------------------"
					Escribir " "
					Escribir "                                                            Cargo fijo"
					Escribir "Codigo                    Destino                                  ", Moneda
					Escribir "----------------------------------------------------------------------"
					
					Separacion<-"  --- "
					Para Puntero<-0 Hasta 9 Con Paso 1 Hacer
						Si Puntero >= 9 Entonces
							Separacion<-" --- "
						FinSi
						Escribir ArrDCodigo[Puntero], Separacion, ArrDNombre[Puntero], " --- ", ArrDMonto[Puntero]
					FinPara
					Escribir " "
		
					Escribir "Seleccione el codigo del destino (Digite 0 para volver atras)"
					Leer Destino
		
					Si Destino <> 0 Entonces
						Existe<-Falso  
						pDestino<-0  
			
						Para Puntero<-0 Hasta 9 Con Paso 1 Hacer
							Si ArrDCodigo[Puntero] = Destino Entonces
								Existe<-Verdadero  
								pDestino<-Puntero
								Puntero<-10
							FinSi
						FinPara
			
						Si Existe = Falso Entonces
							Escribir "Codigo de destino no Existe, presione ENTER para volver atras"
							Leer Espera
						SiNo
							MontoPromocionCupon<-0
							
							Si ExisteCupon = "S" o ExisteCupon = "s" Entonces
								MontoPromocionCupon<-ArrPPrecio[pProducto] * PromocionCupon / 100
								MontoPromocionCupon<-trunc(MontoPromocionCupon * Truncar) / Truncar
							FinSi
				
							PreciosinIVA<-(ArrPPrecio[pProducto] - MontoPromocionCupon)
							PrecioconIVA<-PreciosinIVA * (1 + (PorcentajeIVA / 100))
							PrecioconIVA<-trunc(PrecioconIVA * Truncar) / Truncar
				
							MontoPromocionCantidad<-0
							
							Si Cantidad > 1 Entonces      
								MontoPromocionCantidad<-PrecioconIVA * PromocionCantidad / 100
								MontoPromocionCantidad<-trunc(MontoPromocionCantidad * Truncar) / Truncar
							FinSi
				
							PrecioFinal<-PrecioconIVA - MontoPromocionCantidad
				
							// Pregunto si el cliente se lleva la compra o la retira mas tarde							
							Si ArrDCodigo[pDestino] = 1 o ArrDCodigo[pDestino] = 2 Entonces
								ValorDespachoXPeso<-0
								MontoTotalEnvio<-0
							SiNo
	  							ValorDespachoXPeso<-(ArrPPesoKg[pProducto] * ValorDespachoXKg * Cantidad)
								MontoTotalEnvio<-ValorDespachoXPeso + ArrDMonto[pDestino]
								MontoTotalEnvio<-trunc(MontoTotalEnvio * Truncar) / Truncar
	  						FinSi
				
							MontoVenta<-(PrecioFinal * Cantidad ) + MontoTotalEnvio
				
							Limpiar Pantalla
							Escribir "--------------------------------------"
							Escribir "Resultado de la venta"
							Escribir "--------------------------------------"
							Escribir "Producto -> ", ArrPNombre[pProducto]
							Escribir "Precio -> ", Moneda, ArrPPrecio[pProducto]
							Escribir "Cantidad -> ", Cantidad, " unidades"
							Escribir "--------------------------------------"
							Escribir " "
							
							Si ExisteCupon = "S" o ExisteCupon = "s" Entonces
								Escribir "--------------------------------------"
								Escribir "Cupon de promocion"
								Escribir "--------------------------------------"
								Escribir "Descuento -> ", PromocionCupon, "%"
								Escribir "Descuento -> ", Moneda, MontoPromocionCupon
								Escribir "Precio promocion -> ", Moneda, PreciosinIVA
								Escribir "--------------------------------------"
								Escribir " "
							FinSi
							
							Escribir "IVA ", PorcentajeIVA, "%"
							Escribir "Precio con IVA -> ", Moneda, PrecioconIVA
							Escribir " "

							Si Cantidad > 1 Entonces
								Escribir "--------------------------------------"
								Escribir "Promocion por cantidad"
								Escribir "--------------------------------------"
								Escribir "Descuento -> ", PromocionCantidad, "%"
								Escribir "Descuento -> ", Moneda, MontoPromocionCantidad
								Escribir "--------------------------------------"
								Escribir " "
							FinSi
  
							Si ArrDCodigo[pDestino] = 1 o ArrDCodigo[pDestino] = 2 Entonces
								Escribir "--------------------------------------"
	  							Escribir ArrDNombre[pDestino]
								Escribir "--------------------------------------"
								Escribir " "
	  						SiNo								
								Escribir "--------------------------------------"
								Escribir "Datos del despacho"
	  							Escribir ArrDNombre[pDestino]
								Escribir "--------------------------------------"
								Escribir "    Peso del producto -> ", ArrPPesoKg[pProducto], " Kg"
								Escribir "por Valor despacho por Kg -> ", Moneda, ValorDespachoXKg
								Escribir "por Cantidad -> ", Cantidad, " unidades"
								Escribir "=   Monto despacho por peso -> ", Moneda, ValorDespachoXPeso
								Escribir "mas Monto fijo ", ArrDNombre[pDestino], " -> ", Moneda, ArrDMonto[pDestino]
	  							Escribir "=   Total despacho -> ", Moneda, MontoTotalEnvio
								Escribir "--------------------------------------"
								Escribir " "
							FinSi

							Escribir "----------------------------"
							Escribir "Total a Pagar"
							Escribir "----------------------------"
							Escribir Moneda, MontoVenta
							Escribir "----------------------------"
							Escribir " "

							Escribir "--------------------------------------"
							Escribir "Gracias por su Compra"							
							Escribir "--------------------------------------"
							Escribir "Presione ENTER para la proxima venta"
							Escribir "--------------------------------------"
							Leer Espera		
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que Producto = 0	

	Escribir "--------------------------------------"
	Escribir "         Fin de la ejecucion          "							
	Escribir "--------------------------------------"

FinAlgoritmo
