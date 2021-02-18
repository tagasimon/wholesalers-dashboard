p1 <- processed_df %>% 
  # add_count(ID) %>% View()
  filter(!duplicated(ID)) %>%
  filter(district == "luwero") %>% 
  count(gender) %>% 
  ggplot(aes(gender, n)) + 
  geom_col() +
  ggtitle("Luwero") +
  ylim(0, 500) + geom_text()


p2 <- processed_df %>% 
  # add_count(ID) %>% View()
  filter(!duplicated(ID)) %>%
  filter(district == "wakiso") %>% 
  count(gender) %>% 
  ggplot(aes(gender, n)) + 
  geom_col() +
  ggtitle("Wakiso") +
  ylim(0, 500)
 p1 + p2

 