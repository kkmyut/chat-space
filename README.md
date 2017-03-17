#README

## データベース設計

### ①users


|column|type|
|--:|--:|
|id|もともとある|
|name|string|
|mail|(devise)|
|password|(devise)|




### オプション
* has_many :messages,through: :user_groups
* has_many :groups　
* name null: false
* mail null: false
* password null: false
* ちなみにmailとdeviseに一意性（add_index unique: true）がいるけどdeviseで入るからやっぱりいらない
* add_index :users,  :name

### ②groups


|column|type|
|--:|--:|
|id|もともとある|
|name|string|


### オプション
* has_many :messages,through: :user_groups
* has_many :users
* name null: false

### ③messages　

|column|type|
|--:|--:|
|id|もともとある|
|text|string|
|image|string|
|user_id|Integer|
|group_id|Integer|


### オプション
* belongs_to :user
* belongs_to :group
* t.references :user, foreign_key: true
* t.references :group, foreign_key: true

### ④user_groups　　　　中間テーブル

|column|type|
|--:|--:|
|id|もともとある|
|user_id|Integer|
|group_id|Integer|

### オプション
* belongs_to :user
* belongs_to :group
* t.references :user, foreign_key: true
* t.references :group, foreign_key: true
