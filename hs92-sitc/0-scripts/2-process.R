# read sitc network -------------------------------------------------------

sitc_rev2_4 <- fromJSON(paste0(raw_dir, "network-sitc-rev2-4.json"))
sitc_rev2_4_nodes <- sitc_rev2_4$nodes
sitc_rev2_4_edges <- sitc_rev2_4$edges

# read hs4 network --------------------------------------------------------

hs92_4 <- fromJSON(paste0(raw_dir, "network-hs92-4.json"))
hs92_4_nodes <- hs92_4$nodes
hs92_4_edges <- hs92_4$edges

hs92_4_spring <- fromJSON(paste0(raw_dir, "network-hs92-4-circular-spring.json"))
hs92_4_spring_nodes <- hs92_4_spring$nodes
hs92_4_spring_edges <- hs92_4_spring$edges

hs92_4_circles <- fromJSON(paste0(raw_dir, "network-hs92-4-community-circles.json"))
hs92_4_circles_nodes <- hs92_4_circles$nodes
hs92_4_circles_edges <- hs92_4_circles$edges

hs92_4_rectangles <- fromJSON(paste0(raw_dir, "network-hs92-4-community-rectangles.json"))
hs92_4_rectangles_nodes <- hs92_4_rectangles$nodes
hs92_4_rectangles_edges <- hs92_4_rectangles$edges

# read hs6 network --------------------------------------------------------

hs92_6 <- fromJSON(paste0(raw_dir, "network-hs92-6.json"))
hs92_6_nodes <- hs92_6$nodes
hs92_6_edges <- hs92_6$edges

# separate group_id and product_id in "id" column in sitc nodes -----------

names(sitc_rev2_4_nodes) <- c("x", "y", "sitc_rev2_product_id")
sitc_rev2_4_nodes$sitc_rev2_product_id <- substr(sitc_rev2_4_nodes$sitc_rev2_product_id, 3, 6)

# separate group_id and product_id in "id" column in hs4 nodes ------------

names(hs92_4_nodes) <- c("x", "y", "hs92_product_id")
hs92_4_nodes$hs92_product_id <- substr(hs92_4_nodes$hs92_product_id, 3, 6)

names(hs92_4_spring_nodes) <- c("x", "y", "hs92_product_id")
hs92_4_spring_nodes$hs92_product_id <- substr(hs92_4_spring_nodes$hs92_product_id, 3, 6)

names(hs92_4_circles_nodes) <- c("x", "y", "hs92_product_id")
hs92_4_circles_nodes$hs92_product_id <- substr(hs92_4_circles_nodes$hs92_product_id, 3, 6)

names(hs92_4_rectangles_nodes) <- c("x", "y", "hs92_product_id")
hs92_4_rectangles_nodes$hs92_product_id <- substr(hs92_4_rectangles_nodes$hs92_product_id, 3, 6)

# separate group_id and product_id in "id" column in hs6 nodes ------------

names(hs92_6_nodes) <- c("x", "y", "hs92_product_id")
hs92_6_nodes$hs92_product_id <- substr(hs92_6_nodes$hs92_product_id, 3, 8)

# separate group_id and product_id in "id" column in sitc edges -----------

names(sitc_rev2_4_edges$source) <- c("x", "y", "sitc_rev2_product_id")
sitc_rev2_4_edges$source$sitc_rev2_product_id <- substr(sitc_rev2_4_edges$source$sitc_rev2_product_id, 3, 6)

names(sitc_rev2_4_edges$target) <- c("x", "y", "sitc_rev2_product_id")
sitc_rev2_4_edges$target$sitc_rev2_product_id <- substr(sitc_rev2_4_edges$target$sitc_rev2_product_id, 3, 6)

# set product_id column name hs4 edges ------------------------------------

names(hs92_4_edges$source) <- c("x", "y", "hs92_product_id")
hs92_4_edges$source$hs92_product_id <- substr(hs92_4_edges$source$hs92_product_id, 3, 6)

names(hs92_4_edges$target) <- c("x", "y", "hs92_product_id")
hs92_4_edges$target$hs92_product_id <- substr(hs92_4_edges$target$hs92_product_id, 3, 6)

names(hs92_4_spring_edges$source) <- c("x", "y", "hs92_product_id")
hs92_4_spring_edges$source$hs92_product_id <- substr(hs92_4_spring_edges$source$hs92_product_id, 3, 6)

names(hs92_4_spring_edges$target) <- c("x", "y", "hs92_product_id")
hs92_4_spring_edges$target$hs92_product_id <- substr(hs92_4_spring_edges$target$hs92_product_id, 3, 6)

names(hs92_4_circles_edges$source) <- c("x", "y", "hs92_product_id")
hs92_4_circles_edges$source$hs92_product_id <- substr(hs92_4_circles_edges$source$hs92_product_id, 3, 6)

names(hs92_4_circles_edges$target) <- c("x", "y", "hs92_product_id")
hs92_4_circles_edges$target$hs92_product_id <- substr(hs92_4_circles_edges$target$hs92_product_id, 3, 6)

names(hs92_4_rectangles_edges$source) <- c("x", "y", "hs92_product_id")
hs92_4_rectangles_edges$source$hs92_product_id <- substr(hs92_4_rectangles_edges$source$hs92_product_id, 3, 6)

names(hs92_4_rectangles_edges$target) <- c("x", "y", "hs92_product_id")
hs92_4_rectangles_edges$target$hs92_product_id <- substr(hs92_4_rectangles_edges$target$hs92_product_id, 3, 6)

# set product_id column name hs6 edges ------------------------------------

names(hs92_6_edges$source) <- c("x", "y", "hs92_product_id")
hs92_6_edges$source$hs92_product_id <- substr(hs92_6_edges$source$hs92_product_id, 3, 8)

names(hs92_6_edges$target) <- c("x", "y", "hs92_product_id")
hs92_6_edges$target$hs92_product_id <- substr(hs92_6_edges$target$hs92_product_id, 3, 8)
