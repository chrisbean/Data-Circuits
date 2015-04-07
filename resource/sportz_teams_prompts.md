##`sportz_teams_sql`

###`migrate`

1.  Create a database called `sportz_teams`
2.  Connect to your database
3.  Create a `players` table and a `teams` table

####`teams`
| column | datatype |
|---|---|
|id|SERIAL PRIMARY KEY|
|name|varchar(100)|
|location|varchar(100)|
|slogan|varchar(250)|

####`players`
|---|---|
| column | datatype |
|id|SERIAL PRIMARY KEY|
|name|varchar(100)|
|age| integer|
|team_id|integer|


###`mutate:insert`

Create the following teams

|name|location|slogan|
|---|---|---|
|Lemurs|Madagascar Bay|Time to climb de fence|
|Racoons|Jersey|Awwwwwwww...  No.|
|Cheddarsaurs|Vermont|Time to Smile|
|Sailors|Atlantic|Red sky all day...|


Create the following players

|name| age|
|---|---|
|Lichard DeGray|3|
|Kathew Bod|4|
|Omily|7|
|Willip|5|
|Pauldric|5|

#`mutate:update`

- Update the `team_id` of players named 'Kathew Bod' to the id of the the team named 'Racoons'
- Update the `team_id` of players named 'Omily' to the id of the the team named 'Cheddarsaurs'
- Update the `team_id` of players named 'Willip' to the id of the the team named 'Lemurs'

#`selection`

- Select all players and order them by name
- Select all players and order them by age
- Select all the information for players and their teams

- select all players where the age = 5
- select all players where age is <= 4

- select all players on a team located on 'Madagascar Bay'
- select all players on a team named 'Racoons'
