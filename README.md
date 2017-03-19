## データベース設計

### ①users


|column|type|option|
|--:|--:|--:|
|name|string|null false,add_index|
|mail|string|null false,unique true|
|password|string|null false|


### association
* has_many :messages,through: :user_groups
* has_many :groups　

### ②groups


|column|type|option|
|--:|--:|--:|
|name|string|null false|


### association
* has_many :messages,through: :user_groups
* has_many :users

### ③messages　

|column|type|
|--:|--:|
|text|string|
|image|string|

user references
group references

### association
* belongs_to :user
* belongs_to :group

### ④user_groups　　　　中間テーブル

user references
group references


### association
* belongs_to :user
* belongs_to :group

