# README

## users テーブル

|       Column         | Type          | Options          |
| -------------------- | ------------- | ---------------- |
|   email              |  string       |  null:false      |
|   password           |  string       |  null:false      |
|   name               |  string       |  null:false      |
|   e_mail             |  text         |  null:false      |
|   access             |  text         |  null:false      |
|   holiday            |  string       |  null:false      |
|   word               |  text         |  null:false      |
###   Association
- has_many :menus







## menus テーブル

|       Column         | Type          | Options          |
| -------------------- | ------------- | ---------------- |
|  name                |  string       |  null:false      |
|  price               |  integer      |  null:false      |
|  profile             |  text         |  null:false      |
|  user                |  references   |                  |

### Association
- belongs_to :user