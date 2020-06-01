json.call(
    @client, :id, :identification, :full_name, :birthdate, :document_type_id, :gender_id, :city_id
)
json.department_id @client.city.department_id
json.country_id @client.city.department.country_id
if @client.avatar.attached?
  json.avatar url_for(@client.avatar)
else
    json.avatar ''
end