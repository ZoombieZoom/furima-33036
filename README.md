# DB 設計

## users table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email | string | null: false |
| encrypted_password | string | null: false |
| name | string | null: false |
| birthday | date | null: false |
| kanji_first_name | string | null: false |
| kanji_last_name | string | null: false |
| kana_first_name | string | null: false |
| kana_last_name | string | null: false |

### Association
- has_many :items
- has_many :likes
- has_many :comments
- has_many :purchases

## items table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| name | string |  null: false |
| explanation | text | null: false | 
| category_id | integer | null: false |
| state_id | integer | null: false |
| delivery_fee_id | integer | null false |
| area_id | integer | null: false |
| days_id | integer | null: false |
| price | integer | null: false |

### Association
- has_many :likes
- has_many :comments
- belong_to :users
- has_one :purchases

## likes table　お気に入り登録用
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user |  references | foreign_key: true |
| item | references | foreign_key: true |

### Association
- belong_to :users
- belong_to :items

## comments table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| text | text | null: false |
| user | references | foreign_key: true |
| item | references | foreign_key: true |

### Association
- belong_to :users
- belong_to :items

## purchases table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| item | references | foreign_key: true |
| user | references | foreign_key: true |

### Association
- belong_to :users
- belong_to :items
- has_one :shipping_addresses

## shipping_addresses table 
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| postal_code | string | null: false |
| area_id | integer | null: false |
| municipalities | string | null: false |
| address | string | null: false |
| building | string | |
| phone_number | integer | null: false |

### Association
- belong_to :purchases

# URL
https://gyazo.com/45bbc4633de4ee73221ac64440d7c7cf