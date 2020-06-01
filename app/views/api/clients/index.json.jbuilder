json.array! @clients do |client|
    json.call(
        client, :id, :identification, :full_name, :birthdate
    )
    json.city client.city.name
    json.gender client.gender.name
    json.document_type client.document_type.name
    if client.avatar.attached?
      json.avatar url_for(client.avatar)
    else
        json.avatar ''
    end
end