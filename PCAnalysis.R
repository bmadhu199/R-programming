dataset <- iris[,-5]

dataset

scale_data <- scale(dataset, center = T, scale = T)


pca_model <- prcomp(scale_data,center = T,scale. = T)

#The result will almost be zero.... (mean is alomost equal to zero)
pca_model$center

#The result will one (SD is alomost equal to one)
pca_model$scale


#eighen vectors
pca_model$rotation


#values are eigen value.
#vector are eigen vectors.
eigen(cov(scale_data))


# pca_model$rotation values must be equal to v values.
svd(scale_data)$v



svd(scale_data)$u


##########################################
#sigma values 
sigma <- svd(scale_data)$d

t(svd(scale_data)$u)*sigma


eigen(scale_data %*% t(scale_data))[[1]]


#cummlative propotion is the variance accross the data set.
#proportion of variance is the variance for each PC indepnedent.
summary(pca_model)

#At max we can only lose 15 - 20 % of data.








