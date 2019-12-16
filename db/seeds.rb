# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# --------- Seed Data ----------


# ------------------------------
# ------------------------------
# ----------- Users ------------

puts "Destroying All Users..."
User.destroy_all

puts "Creating Users"
liam = User.create(username: "liam", first_name: "Liam", last_name: "Healy", email: "lhealy0711@gmail.com")

# ------------------------------
# ------------------------------
# -------- Streamers -----------

puts "Destroying All Streamers..."
Streamer.destroy_all

liam.streamers.create(name: "timthetatman")
liam.streamers.create(name: "Ninja")
liam.streamers.create(name: "shroud")
liam.streamers.create(name: "DrDisrespect")
Streamer.create(name: "DrLupo")

# ------------------------------
# ------------------------------
# ----------- Posts ------------

puts "Destroying All Posts..."
Post.destroy_all

liam.posts.create(
    title: "My First Post",
    description: "Just a quick post to test things out.",
    body: "### This is my first post
### Hey Everyone what's up this is my first post here.
`Just wanted to test this out` 
## Tables?

| Feature   | Support |
| --------- | ------- |
| tables    | ✔ |
| alignment | ✔ |
| wewt      | ✔ |
```java
System.out.println('Hello World');
```
Anyway, sfnasfjnjdnfksjndfksndkfjbsdkbgskdjbgksjdbfkjsbdgkjsbdgnad;okfaodjfpoawhfgpouahdgkjsbdflkgjabsdklgjbaskldgbksadfbklasjdbflkajsdbfklsbf" 
)
liam.posts.create(
    title: "Another Post!",
    description: "Just a quick post to test things out.",
    body: "# This is my first post
### Hey Everyone what's up this is my first post here.
`Just wanted to test this out`" 
)
liam.posts.create(
    title: "This project is cool",
    description: "Just a quick post to test things out.",
    body: "# Hello everyone
### This is my first post
### Hey Everyone what's up this is my first post here.
`Just wanted to test this out` "
)
liam.posts.create(
    title: "Redux is stupid",
    description: "Just a quick post to test things out.",
    body: "### This is my first post
           ### Hey Everyone what's up this is my first post here.
           `Just wanted to test this out` " 
)
liam.posts.create(
    title: "How I made a rails API",
    description: "Just a quick post to test things out.",
    body: "### This is my first post
           ### Hey Everyone what's up this is my first post here.
           `Just wanted to test this out`" 
)
liam.posts.create(
    title: "Why Ruby is really cool",
    description: "Just a quick post to test things out.",
    body: "### This is my first post
           ### Hey Everyone what's up this is my first post here.
           `Just wanted to test this out`" 
)

# ------------------------------
# ------------------------------
# --------- Responses ----------

# Nothing here yet...