historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
 suma = 0
 for valor in historial3: 
    suma = suma + valor

print(f"La suma es {suma}")

cantidad_elementos = len(historial3)
promedio = suma / cantidad_elementos

if promedio > 4500 :
    print(“Se ha excedido del gasto promedio para su mascota”)

