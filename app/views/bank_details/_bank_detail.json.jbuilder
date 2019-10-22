json.extract! bank_detail, :id, :bsb, :account_number, :created_at, :updated_at
json.url bank_detail_url(bank_detail, format: :json)
