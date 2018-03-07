# download sitc network (SITC rev.2 4 characters) -------------------------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_sitc.json"
json <- paste0(raw_dir, "/network-sitc-rev2-4.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 4 characters) -------------------------------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs4.json"
json <- paste0(raw_dir, "/network-hs92-4.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 6 characters) -------------------------------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs6.json"
json <- paste0(raw_dir, "/network-hs92-6.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 4 characters, circular spring) --------------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs4_circular_spring.json"
json <- paste0(raw_dir, "/network-hs92-4-circular-spring.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 4 characters, community circles) ------------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs4_community_circles.json"
json <- paste0(raw_dir, "/network-hs92-4-community-circles.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 4 characters, community rectangles) ---------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs4_community_rectangles.json"
json <- paste0(raw_dir,
              "/network-hs92-4-community-rectangles.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}

# download hs92 network (HS92 4 characters, complexity circles) -----------

url <- "https://raw.githubusercontent.com/alexandersimoes/oec/master/oec/static/json/network_hs4_complexity_circles.json"
json <- paste0(raw_dir, "/network-hs92-4-complexity-circles.json")

if (!file.exists(json)) {
  download.file(url, json, method = "curl")
}
