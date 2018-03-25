# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)

## Question:
10. Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists:          

![image](https://github.com/w326004741/Theory-of-Algorithms-CA/blob/master/image/3201522019842_.pic.jpg)

This means take the ith element of m from the i th element of l and square the result for all i. Then add all of those to get d. For example:
```Racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61
```




## References: