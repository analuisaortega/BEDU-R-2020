# Instrucciones:

# 1. Crear un vector que vaya del 1 al 500, que incremente de 10 en 10
# 1, 11, 21, 31, 41, 51, ..... , 491

# 2. Guardar el vector que creaste como mi.vector

# 3. Responder: ¿cuántos elementos tiene este vector?

# 4. Cambiar el último elemento al valor -1

# 5. Multiplicar tu vector por 0.85 y sumar 10

# 6. Guardar el resultado anterior en una variable llamada mi.vector.transformado

# 7. Ordenar mi.vector.transformado de manera descending 




mi.vector <- seq(from = 1, to = 500, by = 10)

length(mi.vector)

mi.vector[length(mi.vector)] <- -1

mi.vector.transformado <- mi.vector*0.85 + 10

sort(mi.vector.transformado, decreasing = TRUE)
