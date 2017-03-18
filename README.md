## データベース設計

### ①users


|column|type|null|unique|
|--:|--:|--:|--:|
|name|string|false|-|
|mail|string|false|true|
|password|string|false|-|




### オプション
* has_many :messages,through: :user_groups
* has_many :groups
* add_index :users,  :name

### ②groups


|column|type|null|
|--:|--:|--:|
|name|string|false|


### オプション
* has_many :messages,through: :user_groups
* has_many :users

### ③messages

|column|type|
|--:|--:|
|text|string|
|image|string|
|user_id|references|
|group_id|references|


### オプション
* belongs_to :user
* belongs_to :group
* t.references :user, foreign_key: true
* t.references :group, foreign_key: true

### ④user_groups    中間テーブル

|column|type|
|--:|--:|
|user_id|references|
|group_id|references|

### オプション
* belongs_to :user
* belongs_to :group
* t.references :user, foreign_key: true
* t.references :group, foreign_key: true
