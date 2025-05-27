library(ggplot2)
# funkcja

new_f <- function(x){
  
  if (!is.numeric(x)) { stop("Obiekt wejściowy x nie jest typu numeric") }
  
  srednia <- mean(x)
  
  y <- srednia / 100 + sqrt(srednia)
  
  return(y)
  
}

# test 1 funkcji 

dane <- 1:10

new_f(x = dane)

# test 2 - sprawdzamy, czy odporna

new_f(x = letters)

letters |> str()

# test 3 - wykres

ggplot(aes(x=x, y=y)) + plot(x ,y)