## find penguins body mass > 5000 and bill length > average
## how many male & female?
## what are their max weight and max bill length for each island 


avg_bill_length = mean(penguins$bill_length_mm, na.rm = T)

penguins %>% 
  filter(body_mass_g > 5000 & bill_length_mm > avg_bill_length) %>% 
  group_by(sex, island) %>% 
  summarise(max_weight = max(body_mass_g),
            max_bill = max(bill_length_mm),
            count = n())


## bonus: add a new col to the penguin dataset
## indicate whether they meet the critirias (mass & bill) or not

penguins %>% 
  mutate(critiria = body_mass_g > 5000 & bill_length_mm > avg_bill_length) %>% 
  View()

penguins %>% 
  drop_na() %>% 
  #filter(!is.na()) %>% 
  mutate(critiria = case_when(body_mass_g > 5000 & bill_length_mm > avg_bill_length ~ 'BIG birds',
                              body_mass_g <= 5000 ~ 'Skinny')) %>% 
  View()

View(penguins_raw)
View(penguins)


## install 'ggplot2'
library(ggplot2)

?ggplot()

ggplot(data = penguins,
       aes(x = body_mass_g,
           y = bill_length_mm,
           color = sex, 
           shape = island)) + #aesthetic
  geom_point() +
  geom_smooth(method = 'lm', se = F) +
  geom_


penguins %>% 
  drop_na() %>% 
  ggplot(aes(x = body_mass_g,
           y = bill_length_mm,
           color = sex, 
           shape = island)) + #aesthetic
  geom_point() +
  labs() +
  labs()

ggsave()
