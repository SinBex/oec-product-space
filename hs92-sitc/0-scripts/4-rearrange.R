# hs92 --------------------------------------------------------------------

hs92_nodes <- as_tibble(
  fromJSON(paste0(d3plus1_dir, "nodes-hs92-4.json"))
) %>% 
  rename(id = hs92_product_id)

hs92_links <- fromJSON(paste0(d3plus1_dir, "edges-hs92-4.json"))
hs92_links <- tibble(
  source = hs92_links$source$hs92,
  target = hs92_links$target$hs92
)

hs92_enumeration <- tibble(id = hs92_nodes$id)

hs92_ids <- tibble(hs92_enumeration$id) %>% 
  mutate(id_2 = row_number() - 1) %>%
  setNames(c("id", "id2"))

hs92_links <- hs92_links %>% 
  left_join(hs92_ids, by =  c("source" =  "id")) %>% 
  select(-source) %>% 
  rename(source = id2) %>%
  left_join(hs92_ids, by = c("target" =  "id")) %>% 
  select(-target) %>% 
  rename(target  = id2)

write_json(hs92_links, paste0(d3plus2_dir, "hs92-4-links-d3p2.json"))
write_json(hs92_nodes, paste0(d3plus2_dir, "hs92-4-nodes-d3p2.json"))

# hs92 spring -------------------------------------------------------------

hs92_nodes_spring <- as_tibble(
  fromJSON(paste0(d3plus1_dir, "nodes-hs92-4-circular-spring.json"))
) %>% 
  rename(id = hs92_product_id)

hs92_links_spring <- fromJSON(paste0(d3plus1_dir, "edges-hs92-4-circular-spring.json"))
hs92_links_spring <- tibble(
  source = hs92_links_spring$source$hs92,
  target = hs92_links_spring$target$hs92
)

hs92_enumeration_spring <- tibble(id = hs92_nodes_spring$id)

hs92_ids_spring <- tibble(hs92_enumeration_spring$id) %>% 
  mutate(id_2 = row_number() - 1) %>%
  setNames(c("id", "id2"))

hs92_links_spring <- hs92_links_spring %>% 
  left_join(hs92_ids_spring, by =  c("source" =  "id")) %>%
  select(-source) %>% 
  rename(source = id2) %>%
  left_join(hs92_ids_spring, by = c("target" =  "id")) %>% 
  select(-target) %>% rename(target  = id2)

write_json(
  hs92_links_spring, paste0(d3plus2_dir, "hs92-4-links-circular-spring-d3p2.json")
)

write_json(
  hs92_nodes_spring, paste0(d3plus2_dir, "hs92-4-nodes-circular-spring-d3p2.json")
)

# hs92 circles ------------------------------------------------------------

hs92_nodes_circles <- as_tibble(
  fromJSON(paste0(d3plus1_dir, "nodes-hs92-4-community-circles.json"))
) %>% 
  rename(id = hs92_product_id)

hs92_links_circles <- fromJSON(paste0(d3plus1_dir, "edges-hs92-4-community-circles.json"))
hs92_links_circles <- tibble(
  source = hs92_links_circles$source$hs92,
  target = hs92_links_circles$target$hs92
)

hs92_enumeration_circles <- tibble(id = hs92_nodes_circles$id)

hs92_ids_circles <- tibble(hs92_enumeration_circles$id) %>% 
  mutate(id_2 = row_number() - 1) %>%
  setNames(c("id", "id2"))

hs92_links_circles <- hs92_links_circles %>% 
  left_join(hs92_ids_circles, by =  c("source" =  "id")) %>%
  select(-source) %>% 
  rename(source = id2) %>%
  left_join(hs92_ids_circles, by = c("target" =  "id")) %>% 
  select(-target) %>% 
  rename(target  = id2)

write_json(
  hs92_links_circles, paste0(d3plus2_dir, "hs92-4-links-community-circles-d3p2.json")
)
write_json(
  hs92_nodes_circles, paste0(d3plus2_dir, "hs92-4-nodes-community-circles-d3p2.json")
)

# hs92 rectangles ---------------------------------------------------------

hs92_nodes_rectangles <- as_tibble(
  fromJSON(paste0(d3plus1_dir, "nodes-hs92-4-community-rectangles.json"))
) %>% 
  rename(id = hs92_product_id)

hs92_links_rectangles <- fromJSON(paste0(d3plus1_dir, "edges-hs92-4-community-rectangles.json"))
hs92_links_rectangles <- tibble(
  source = hs92_links_rectangles$source$hs92,
  target = hs92_links_rectangles$target$hs92
)

hs92_enumeration_rectangles <- tibble(id = hs92_nodes_rectangles$id)

hs92_ids_rectangles <- tibble(hs92_enumeration_rectangles$id) %>% 
  mutate(id_2 = row_number() - 1) %>%
  setNames(c("id", "id2"))

hs92_links_rectangles <- hs92_links_rectangles %>% 
  left_join(hs92_ids_rectangles, by =  c("source" =  "id")) %>%
  select(-source) %>% 
  rename(source = id2) %>%
  left_join(hs92_ids_rectangles, by = c("target" =  "id")) %>% 
  select(-target) %>% rename(target  = id2)

write_json(
  hs92_links_rectangles, paste0(d3plus2_dir, "hs92-4-links-community-rectangles-d3p2.json")
)

write_json(
  hs92_nodes_rectangles, paste0(d3plus2_dir, "hs92-4-nodes-community-rectangles-d3p2.json")
)
