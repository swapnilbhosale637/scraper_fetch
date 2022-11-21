# Prompt

`prompt` implementation a command line program that can fetch web pages and saves them to disk for later retrieval and 
browsing.

Steps:
  1. Copy the repo into your folder.
  2. Create image and start the container by `docker-compose up -d`.
  3. Enter the container by `docker exec -it <container ID> bash`.
  4. List down as many URLs as you want. It also saves the html in your current directory.
  ```bash
  $> ./fetch https://www.google.com https://rubygems.org ...
  $> ls
  rubygems.org.html www.google.com.html
  ```
  5. Display metadata of URLs you have fetched last time.
  ```bash
  $> ./fetch --metadata https://www.google.com
  site: www.google.com
  num_links: 35
  num_images: 3
  last_fetch: 2022-05-22 15:46 UTC
  ```
