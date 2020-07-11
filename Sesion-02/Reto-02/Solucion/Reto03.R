mtcars
?mtcars
max(mtcars$cyl)
min(mtcars$qsec)
mean.cyl <- mean(mtcars$cyl)
mean.qsec <- mean(mtcars$qsec)
mtcars[mtcars$cyl > mean.cyl, ]
mtcars.filtrados <- mtcars[(mtcars$cyl > mean.cyl) & (mtcars$qsec > mean.qsec), ]
