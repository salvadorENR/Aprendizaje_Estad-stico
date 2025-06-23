#Tunear manual method
```{r}
set.seed(1234)
cv.lasso <- cv.glmnet(x, y, nfolds=5, family = "gaussian", alpha = 1, parallel = T)
plot(cv.lasso)
cv.lasso$lambda.min
cv.lasso$lambda.1se
cv.lasso$cvm[cv.lasso$index] # Media
cv.lasso$cvsd[cv.lasso$index] # Error estandar
cv.lasso$cvup[cv.lasso$index] # Media + error estandar
```