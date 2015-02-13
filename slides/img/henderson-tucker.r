## Illusration of Henderson and Tucker's logit results
##
## Can't do it for pre- and within-Cold War because they only give results
## without controls or with time splines

library("ggplot2")
library("MASS")

## Hypothetical matched pair:
## distance: contiguous
## joint democracy: no
## power parity: 75%
x_control <- c(constant = 1,
               mixed_civ = 0,
               distance = 0,
               joint_dem = 0,
               power_parity = 0.75)
x_treat <- x_control
x_treat["mixed_civ"] <- 1
x <- rbind(x_control, x_treat)

## Coefficients
coef_post <- c(constant = -4.69,
               mixed_civ = -0.96,
               distance = -0.34,
               joint_dem = -0.33,
               power_parity = 1.01)

pred <- plogis(as.numeric(x %*% coef_post))
pred <- data.frame(
    x = factor(
        0:1,
        labels = c("Same Civilization", "Mixed Civilization")
    ),
    prob = pred)

pdf(file = "henderson-tucker.pdf", width = 5, height = 4)
print(
    ggplot(pred, aes(x = x, y = prob))
    + geom_bar(stat = "identity")
    + scale_x_discrete("")
    + scale_y_continuous("Probability\nof War")
    + ggtitle("Post-Cold War Results")
    + theme(axis.title.y = element_text(angle = 0))
)
dev.off()
