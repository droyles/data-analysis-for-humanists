Presbyterian data

```{r}
library(ggplot2)
library(plyr)
source("presbyterian-load.r")
```

Let's plot the membership of the denomination:

```{r}
ggplot(pres) +
  geom_point(aes(x = year, y = baptisms_adults / membership))
```

We have a problem, which is that there was a denominational split. We need a way to distinguish between the denominations but to represent them together.

```{r}
ggplot(pres,
       aes(x = year, y = membership, fill = denomination)) +
  geom_area() 
```

What was the trend of infant baptism?

```{r}
ggplot(pres,
       aes(x = year, y = baptisms_infants / baptisms_total, color = denomination)) +
  geom_line()

```

What was the trend of infant baptism relative to population?

```{r}

```

What was the trend of infant baptism relative to all baptisms?

```{r}

```

What was the trend of infant baptism relative to all ways of entering the Presbyterian church?

```{r}

```

Did the number of ministers affect the growth of the denomination?

```{r}

```

