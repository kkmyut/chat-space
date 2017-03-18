## データベース設計

### ①users


|column|type|option|
|--:|--:|--:|
|name|string|null false|
|mail|string|null false,unique true|
|password|string|null false|


### association
* has_many :messages,through: :user_groups
* has_many :groups　
* add_index :users,  :name

### ②groups


|column|type|option|
|--:|--:|--:|
|name|string|null false|


### association
* has_many :messages,through: :user_groups
* has_many :users

### ③messages　

|column|type|option|
|--:|--:|--:|
|text|string||
|image|string||
|user_id|references|foreign_key|
|group_id|references|foreign_key|


### association
* belongs_to :user
* belongs_to :group

### ④user_groups　　　　中間テーブル

|column|type|option|
|--:|--:|--:|
|user_id|references|foreign_key|
|group_id|references|foreign_key|

### オプション
* belongs_to :user
* belongs_to :group

