fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32) * 5/9

celsiusToFahrenheit :: Float -> Float
celsiusToFahrenheit c = (c * 9/5) + 32

main= do
    print(fahrenheitToCelsius 100)
    print(celsiusToFahrenheit 37.77778)
