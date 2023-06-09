# load required packages
library(tibble)
library(ggplot2)
library(gapminder)

# view header of the dataset
gapminder

# view help file for the dataset
?gapminder

# generate a histogram of life expectancy
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram()

# generate separate histograms of life expectancy for each continent
# Hint: think about how to split your plots to show different subsets of data
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram() +
  facet_wrap(facets = vars(continent))

# compare the distribution of life expectancy, by continent by generating a boxplot
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp)) +
  geom_boxplot()

## redraw the plot, but this time use a violin plot
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp)) +
  geom_violin()

# generate a scatterplot of the relationship between per capita GDP and life expectancy
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## add a smoothing line to the scatterplot
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth()

## use color to identify whether this relationship differs by continent
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  geom_smooth()

## bonus: identify the outlying countries on the right-side of the graph
## by labeling each observation with the country name
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, label = country)) +
  geom_smooth() +
  geom_text()
