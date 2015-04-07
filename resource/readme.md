#The Database

###By the end of this lesson... you should be able to...
- Describe and perform a database:
  - Migration
  - Mutation
  - Selection

---

**With `SQL-101.png` on the screen discuss "Migration", "Mutation", "Selection"**
- What is a database?
- What is a database server?
- How is it stored?
- Who cares?
- Why use a database and not a file?

---

###Step through each (Ask students to yell "Migration!", "Mutation!", "Selection!" when hitting return)
- `lemur_jungle.sql`
  - Laptops closed
  - Repeat for code along
- `cowcow_farm.sql`
  - Code along
- `sportz_teams.sql`
  - Give task, 60 seconds, review task, repeat, through examples

---

###People Exercise 1 (10 minute)
- Create a `people` table
  - id SERIAL PRIMARY KEY
  - name varchar(250)
- Create several people manually
- Select people by name and id

---

###PG: Ruby Ruby Ruby

####Lemurs in Ruby
- First Laptops closed
- Repeat for code along

```

require 'pg'

conn = PG::Connection.open(:dbname => 'lemur_jungle')

conn.exec("INSERT INTO lemurs (name) VALUES ('Lichard DeGray')")
conn.exec("INSERT INTO lemurs (name) VALUES ('Kathew Bod')")
rows = conn.exec("SELECT * FROM lemurs;")

conn.close

rows.each {|row| puts row }

```

###FlashBack!  How might we refactor this into a method?

```
require 'pg'

def execute_sql(database, sql_statment)
  conn = PG::Connection.open(:dbname => database)
  rows = conn.exec(sql_statment)
  conn.close
  rows
end

execute_sql('lemur_jungle', "INSERT INTO lemurs (name) VALUES ('Lichard DeGray')")
rows = execute_sql('lemur_jungle', "SELECT * FROM lemurs")
rows.each {|row| puts row }

---


```

---

###People Exercise 2 (Continue Yelling "Migration!", "Mutation!", "Selection!")
- Using faker to help... create 1000 persons in the `people` table
- Find all the Doctors!

---
###Lab:

**Start downloading before break!**

###Lots of Yuk DATA!!!! (RESTaurant)
- Dropbox download (**don't put in student folders**) (**Download as a .zip**)
  - https://www.dropbox.com/sh/etq4s76i8tjz30m/AACUiJC1d-Y8HfzNR_R3KrxOa?dl=0
- There is a lot of code is provided here...
- First *learn* the codebase
- Directions to start the application are in readme.md
- There is a challenge in `app.rb`

---
