Presentation
========================================================
transition:rotate
author:dogvile 
date: 22/02/2014
 

User interface
========================================================

User interface of Body Mass Valculation

- input weight
- input height
- output the calculated BMI

Categories
========================================================


- bmi less than 18.5 then underweight

- bmi larger than 25 then overweight

- bmi between 18.5 and 25 then normal



function of Body mass index
========================================================



```r
bmi <- function(height,weight){
        
        bmi <- ((weight)/(height)^2)
        return (bmi)

}
```

Equation
========================================================
$$latex
    bmi = (weight)/(height)^2
$$






