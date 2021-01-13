# DB 設計

## users table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email | string | null: false |
| password | string | null: false |
| name | string | null: false |
| birthday | string | null: false |
| kanji_first_name | string | null: false |
| kanji_last_name | string | null: false |
| kana_first_name | string | null: false |
| kana_last_name | string | null: false |


## items table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| name | string |  null: false | 
| image | text | |
| category | string | null: false |
| state | string | null: false |
| delivery_fee | string | null false |
| area | string | null: false |
| days | string | null: false |
| price | string | null: false |

## likes table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user |  references | foreign_key: true |
| item | references | foreign_key: true |

## comments table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| text | text | null: false |
| user | references | foreign_key: true |
| item | references | foreign_key: true |

## shipping_addresses table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| postal_code | string | null: false |
| prefectures | string | null: false |
| municipalities | string | null: false |
| address | string | null: false |
| building | string | |
| phone_number | string | null: false |

## purchases table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| card_number | string | null: false |
| expiration_date | string | null: false |
| security_code | string | null: false |

# URL
https://gyazo.com/45bbc4633de4ee73221ac64440d7c7cf