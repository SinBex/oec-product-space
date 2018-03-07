# save sitc nodes ---------------------------------------------------------

write_json(
  sitc_rev2_4_nodes, paste0(d3plus1_dir, "nodes-sitc-rev2-4.json")
)

# save hs4 nodes ----------------------------------------------------------

write_json(
  hs92_4_nodes, paste0(d3plus1_dir, "nodes-hs92-4.json")
)

write_json(
  hs92_4_spring_nodes, paste0(d3plus1_dir, "nodes-hs92-4-circular-spring.json")
)

write_json(
  hs92_4_circles_nodes, paste0(d3plus1_dir, "nodes-hs92-4-community-circles.json")
)

write_json(
  hs92_4_rectangles_nodes, paste0(d3plus1_dir, "nodes-hs92-4-community-rectangles.json")
)

# save hs6 nodes ----------------------------------------------------------

write_json(hs92_6_nodes, paste0(d3plus1_dir, "nodes-hs92-6.json"))

# save sitc edges ---------------------------------------------------------

sitc_rev2_4_edges$source <- sitc_rev2_4_edges$source %>% select(-c(x, y))
sitc_rev2_4_edges$target <- sitc_rev2_4_edges$target %>% select(-c(x, y))

write_json(
  sitc_rev2_4_edges, paste0(d3plus1_dir, "edges-sitc-rev2-4.json")
)

# save hs4 edges ----------------------------------------------------------

hs92_4_edges$source <- hs92_4_edges$source %>% select(-c(x, y))
hs92_4_edges$target <- hs92_4_edges$target %>% select(-c(x, y))

write_json(hs92_4_edges, paste0(d3plus1_dir, "edges-hs92-4.json"))

hs92_4_spring_edges$source <- hs92_4_spring_edges$source %>% select(-c(x, y))
hs92_4_spring_edges$target <- hs92_4_spring_edges$target %>% select(-c(x, y))

write_json(
  hs92_4_spring_edges, paste0(d3plus1_dir, "edges-hs92-4-circular-spring.json")
)

hs92_4_circles_edges$source <- hs92_4_circles_edges$source %>% select(-c(x, y))
hs92_4_circles_edges$target <- hs92_4_circles_edges$target %>% select(-c(x, y))

write_json(
  hs92_4_circles_edges, paste0(d3plus1_dir, "edges-hs92-4-community-circles.json")
)

hs92_4_rectangles_edges$source <- hs92_4_rectangles_edges$source %>% select(-c(x, y))
hs92_4_rectangles_edges$target <- hs92_4_rectangles_edges$target %>% select(-c(x, y))

write_json(
  hs92_4_rectangles_edges, paste0(d3plus1_dir, "edges-hs92-4-community-rectangles.json")
)

# save hs6 edges ----------------------------------------------------------

hs92_6_edges$source <- hs92_6_edges$source %>% select(-c(x, y))
hs92_6_edges$target <- hs92_6_edges$target %>% select(-c(x, y))

write_json(
  hs92_6_edges, paste0(d3plus1_dir, "edges-hs92-6.json")
)
