## 1. install 'palmerpenguins' package
## 2. calculate average bill length 
## 3. (bonus) calculate average bill length by species

?palmerpenguins
library(palmerpenguins)
penguins
View(penguins)

names(penguins)

mean(penguins$bill_length_mm)
is.na(penguins$bill_length_mm)
anyNA(penguins$bill_length_mm)

mean(penguins$bill_length_mm, na.rm = T)



penguins %>% 
  group_by(species, year, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T))


## practice group_by() & summarise()
## how to remove NA (empty col)

df = data.frame(
  id = 1:3,
  score = c(50, 85, NA)
)

df

df[df$score > 50, ]


df %>% 
  filter(score > 50)


vec = c(1, 2, NA)
is.na(vec)
!is.na(vec)

penguins %>% 
  filter(!is.na(bill_length_mm)) %>% 
  View()

penguins %>% 
  filter(!is.na(bill_length_mm)) %>%
  pluck('bill_length_mm') %>% 
  mean()


penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(desc(max_length)) %>% 
  relocate(species, .after = island)

## practice using arrange() & relocate()

penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(desc(max_length))


penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(match(species, c('Chinstrap')))


obj = penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(match(species, c('Chinstrap'))) %>% 
  select(island, species, max_length, avg_bill_length)


plot(obj$max_length, obj$avg_bill_length)




obj$new = obj$max_length + obj$avg_bill_length


mutate()


penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(match(species, c('Chinstrap'))) %>% 
  select(island, species, max_length, avg_bill_length) %>% 
  mutate(new_col = max_length + avg_bill_length) %>% 
  select(-new_col) %>% 
  
  
  
[, -1]
mutate(new_col = max_length + avg_bill_length, .before = island )
mutate(new_col = max_length + avg_bill_length, .after = island )


## create a new col using mutate()





penguins %>% 
  group_by(species, island) %>% 
  summarise(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T)) %>% 
  arrange(match(species, c('Chinstrap'))) %>% 
  select(island, species, max_length, avg_bill_length) %>% 
  mutate(new_col = max_length + avg_bill_length) %>% 
  select(-new_col) %>% 
  mutate(new_col = case_when(max_length > 50 ~ 'big guy',
                             TRUE ~ 'normal'))
  
case_when( condition ~ if T, then )


## practice case_when()
