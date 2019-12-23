def realizar_cadastro
  endpoint = "http://jsonplaceholder.typicode.com/posts"

  body = {
    data: {
      title: "#{Faker::Name.name}",
      body: "#{Faker::Name.name}",
      userId: "#{Faker::Number.number(4)}",
    },
  }.to_json

  return HTTParty.post("#{endpoint}", body: body)
end
