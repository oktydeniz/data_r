x = 5
y = 10

print(x)
print(x,y) # y yazdırılmaz

print(x);print(y)

cat(x,y)
cat(x, " values ", y)


t <- paste(x,y, "values")
t
class(t)

paste0("without space",x ,y)


if(x == y) {
  print("equal")
}else {
  print("not")
}


View(iris)

if(mean(iris$Sepal.Length) > 4 & median(iris$Sepal.Width) > 4) {
  print("True")
}else {
  print("False")
}


if(mean(iris$Sepal.Length) > 4 | median(iris$Sepal.Width) > 4) {
  print("True")
}else {
  print("False")
}

for(i in 1:10){
  cat("\nindex -> ", i)
}

data_ = c(1,4,3,4,6,3,68)

for (i in 1:length(data_)){
  print(i)
}

x = 1
while(x < 5) {
  cat("value",x)
  x = x + 1
}

myFunc = function(x,y) {
  print(x+y)
}
myFunc(45,54)


myfunc = function(){
  x <- as.numeric(readline(prompt = "First Value : "))
  y <- as.numeric(readline(prompt = "Second Value : "))
  
  return(x*y)
}

myfunc

standart_s = function(x, population=TRUE) {
  
  length_ = length(x)
  mean_ = sum(x) / length_
  diff_ = numeric(length_)
  
  
  for (i in 1:length_){
    diff_[i] = x[i] - mean_
  }
  
  all_sum = sum(diff_)
  
  if(population){
    stnd_mean = all_sum/length_
  } else {
    stnd_mean = all_sum/ (length_ -1)
  }
  std = sqrt(stnd_mean)
  
  return(std)
}

standart_s(c(345,46,456,34,5,765,324,7567,3445,65,74), TRUE)
standart_s(c(345,46,456,34,5,765,324,7567,3445,65,74), FALSE)


f1 = function(x){
  start = 1
  end_ = nrow(x)
  mean_ = mean(x[,3], na.rm = T)
  result = list()
  
  result[["k"]]  = numeric() #kucuk
  result[["b"]] = numeric() #buyuk
  
  while (TRUE) {
    
    if(x[start, 3] < mean_){
      d = (x[start,1] * x[start, 2]) / x[start,4]
      result[["k"]] = append(result[["k"]],d) 
    } else {
      d = (x[start,1] * x[start, 2]) * x[start,4]
      result[["b"]] = append(result[["b"]],d) 
    }
    
    start = start + 1
    if(start == end_){
      break
    }
  }
  return(result)
}

f1(iris)

absolute_square_root_sum <- function(vector) {
  vector_absolute <- abs(vector)
  vector_sqrt <- sqrt(vector_absolute)
  total <- sum(vector_sqrt * 10)
  
  return(total)
}

random_vector <- rnorm(10)
result <- absolute_square_root_sum(random_vector)
cat("Result:", result)

#2
check_and_create_new_list <- function(input_list) {
  new_list <- list()
  
  for (i in 1:length(input_list)) {
    vector <- input_list[[i]]
    new_vector <- ifelse(vector > 5, "büyüktür", "küçüktür")
    new_list[[i]] <- new_vector
  }
  
  return(new_list)
}

example_list <- list(c(1, 7, 3, 6, 2))
new_list <- check_and_create_new_list(example_list)
print(new_list)


















