# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| family_name        | string  | null: false |
| first_name         | string  | null: false |
| family_name_kana   | string  | null: false |
| first_name_kana    | string  | null: false |
| birth_day_yy       | integer | null: false |
| birth_day_mm       | integer | null: false |
| birth_day_dd       | integer | null: false |

### Association

- has_many :items
- has_many :purchase_records
- has_one :address

## items テーブル

| Column           | Type   | Options                         |
| ---------------- | ------ | ------------------------------- |
| image            | 
| name             | string  | null: false                    |
| description      | text    | null: false                    |
| category_id      | integer | null: false, foreign_key: true |
| status_id        | integer | null: false, foreign_key: true |
| shipping_cost_id | integer | null: false, foreign_key: true |
| sender_id        | integer | null: false, foreign_key: true |
| shipping_days_id | integer | null: false, foreign_key: true |
| price            | string  | null: false                    |

### Association

- belongs_to :user
- has_many :item_images

## item_images テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| url    | string     | null: false |

### Association

- belongs_to :items

## purchase_records テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| name   | string     | null: false |


### Association

- belongs_to :user


## address テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| post_code       | string     | null: false                    |
| prefecture      | string     | null: false                    |
| city            | string     | null: false                    |
| house_number    | string     | null: false                    |
| building_name   | string     |                                |
| phone_number    | string     | null: false                    |

### Association

- belongs_to :user
