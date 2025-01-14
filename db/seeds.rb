if Rails.env.development?
  puts "Initial seed"
  AdminUser.create!(email: 'admin@mail.com',
                    password: '000000', password_confirmation: '000000')
  user_1 = User.create!(name: 'User 1', email: 'user1@mail.com',
                        password: '000000', password_confirmation: '000000')
  user_2 = User.create!(name: 'User 2', email: 'user2@mail.com',
                        password: '000000', password_confirmation: '000000')

  client_1 = Client.create(document: '81939120047', user: user_1)
  client_2 = Client.create(document: '66778473061', user: user_2)

  ConfigDelivery.create(
    delivery_forecast: 30, delivery_fee: 6,
    opening_time: '08:00', closing_time: '23:59',
    client: client_1)

  ConfigDelivery.create(
    delivery_forecast: 30, delivery_fee: 6,
    opening_time: '08:00', closing_time: '23:59',
    client: client_2)

  user_1.avatar.attach(io: File.open(
    Rails.root.join('spec', 'support', 'images', 'avatar-1.jpg')),
                       filename: 'avatar-1', content_type: 'image/jpg')

  goal1 = Goal.create(name: 'Aprender Linguagem Ruby',
                      description: 'Quero criar 10 algoritmos em até 3 meses', status: 'done', client: client_1)
  Task.create(name: '1ª agoritmo', description: 'Criar o algoritmo bubble sort',
              status: "done", goal: goal1)

  goal2 = Goal.create(name: 'Aprender Framework Rails',
                      description: 'Quero criar 5 projetos simples em até 3 meses', status: 'todo', client: client_1)
  Task.create(name: '1ª projeto', description: 'Criar a editora de livros',
              status: "todo", goal: goal2)

  goal3 = Goal.create(name: 'Aprender Linguagem Python',
                      description: 'Quero criar 5 scripts úteis em até 2 meses', status: 'doing', client: client_1)
  Task.create(name: '1º script', description: 'Criar um algoritmo de automação de tarefas',
              status: "doing", goal: goal3)

  goal4 = Goal.create(name: 'Aprender Banco de Dados SQL',
                      description: 'Quero criar um banco de dados de livros em até 1 mês', status: 'todo', client: client_1)
  Task.create(name: '1ª tabela', description: 'Criar a tabela de livros',
              status: "todo", goal: goal4)

  goal5 = Goal.create(name: 'Aprender Front-End Development',
                      description: 'Quero construir um portfólio online em 2 semanas', status: 'done', client: client_1)
  Task.create(name: 'Página inicial', description: 'Criar a página inicial do meu portfólio',
              status: "done", goal: goal5)

  goal6 = Goal.create(name: 'Aprender Linguagem JavaScript',
                      description: 'Quero dominar os conceitos básicos em 1 mês', status: 'todo', client: client_1)
  Task.create(name: '1º exercício', description: 'Realizar um exercício de lógica em JavaScript',
              status: "todo", goal: goal6)

  goal7 = Goal.create(name: 'Aprender Desenvolvimento Mobile',
                      description: 'Quero criar um aplicativo simples em 2 meses', status: 'doing', client: client_1)
  Task.create(name: 'Protótipo de tela', description: 'Desenhar o protótipo da tela inicial do aplicativo',
              status: "doing", goal: goal7)

  goal8 = Goal.create(name: 'Aprender Testes de Software',
                      description: 'Quero escrever testes para um projeto em 1 mês', status: 'todo', client: client_1)
  Task.create(name: 'Configurar ambiente', description: 'Configurar o ambiente de testes no projeto',
              status: "todo", goal: goal8)

  goal9 = Goal.create(name: 'Aprender Cloud Computing',
                      description: 'Quero implantar um aplicativo em nuvem em 2 semanas', status: 'doing', client: client_1)
  Task.create(name: 'Configurar servidor', description: 'Configurar um servidor na nuvem',
              status: "doing", goal: goal9)

  goal10 = Goal.create(name: 'Aprender Design de Interface',
                       description: 'Quero criar um design para um site em 1 mês', status: 'todo', client: client_1)
  Task.create(name: 'Layout da página inicial', description: 'Criar o layout da página inicial do site',
              status: "todo", goal: goal10)

  goal11 = Goal.create(name: 'Aprender Machine Learning',
                       description: 'Quero criar um modelo de machine learning em 2 meses', status: 'done', client: client_1)
  Task.create(name: 'Coleta de dados', description: 'Coletar dados para treinar o modelo',
              status: "done", goal: goal11)

  goal12 = Goal.create(name: 'Aprender Redes de Computadores',
                       description: 'Quero configurar uma rede local em 3 semanas', status: 'todo', client: client_1)
  Task.create(name: 'Configurar roteadores', description: 'Configurar os roteadores da rede',
              status: "todo", goal: goal12)

  goal13 = Goal.create(name: 'Aprender Segurança da Informação',
                       description: 'Quero realizar um teste de penetração em 1 mês', status: 'doing', client: client_1)
  Task.create(name: 'Varredura de vulnerabilidades', description: 'Realizar uma varredura de vulnerabilidades no sistema',
              status: "doing", goal: goal13)

  goal14 = Goal.create(name: 'Aprender Desenvolvimento Web Full-Stack',
                       description: 'Quero criar um aplicativo completo em 2 meses', status: 'doing', client: client_1)
  Task.create(name: 'Desenvolvimento do backend', description: 'Iniciar o desenvolvimento do backend do aplicativo',
              status: "doing", goal: goal14)

  goal15 = Goal.create(name: 'Aprender Inteligência Artificial',
                       description: 'Quero criar um chatbot em 1 mês', status: 'done', client: client_2)
  Task.create(name: 'Treinamento do modelo', description: 'Treinar um modelo de chatbot',
              status: "done", goal: goal15)

  delivery_categories = [
    { name: "Pizza", description: "Deliciosas pizzas tradicionais e gourmet.", image_url: "pizza_image_url" },
    { name: "Sushi", description: "Sushis e sashimis frescos dos melhores chefs.", image_url: "sushi_image_url" },
    { name: "Hambúrguer", description: "Hambúrgueres suculentos com uma variedade de coberturas.", image_url: "hamburguer_image_url" },
    { name: "Comida Chinesa", description: "Pratos clássicos chineses para satisfazer seus desejos.", image_url: "comida_chinesa_image_url" },
    { name: "Comida Italiana", description: "Autênticas massas italianas e mais.", image_url: "comida_italiana_image_url" },
    { name: "Comida Mexicana", description: "Cozinha mexicana picante e saborosa.", image_url: "comida_mexicana_image_url" },
    { name: "Comida Indiana", description: "Pratos indianos ricos e aromáticos.", image_url: "comida_indiana_image_url" },
    { name: "Salgados", description: "Variados tipos de salgados, como coxinhas e empadas.", image_url: "salgados_image_url" },
    { name: "Comida Vegetariana", description: "Opções deliciosas e saudáveis para vegetarianos.", image_url: "comida_vegetariana_image_url" },
    { name: "Sobremesas", description: "Doces tentadores para finalizar sua refeição.", image_url: "sobremesas_image_url" }
  ]

  delivery_categories.each do |category_attrs|
    category = Category.create(
      name: category_attrs[:name],
      description: category_attrs[:description],
      image_url: category_attrs[:image_url],
      client: client_1
    )

    rand(5..10).times do
      Product.create(
        name: FFaker::Product.product_name,
        description: FFaker::Lorem.sentence,
        long_description: FFaker::Lorem.paragraph,
        value: FFaker::Number.decimal(whole_digits: 2, fractional_digits: 2),
        category: category,
        client: client_1,
        combo: FFaker::Boolean.random,
        pizza: FFaker::Boolean.random,
        deleted_at: nil
      )
    end

    rand(3..6).times do
      Extra.create(
        name: FFaker::Product.product_name,
        value: FFaker::Number.decimal(whole_digits: 2, fractional_digits: 2),
        category: category,
        client: client_1,
        deleted_at: nil
      )
    end
  end

  15.times do
    Flavor.create(
      name: FFaker::Product.product_name,
      value: FFaker::Number.decimal(whole_digits: 2, fractional_digits: 2),
      client: client_1,
      deleted_at: nil
    )
  end

  15.times do
    DeliveryLocation.create(
      name: FFaker::Product.product_name,
      value: FFaker::Number.decimal(whole_digits: 2, fractional_digits: 2),
      client: client_1,
      deleted_at: nil
    )
  end

  5.times do
    Clerk.create(
      name: FFaker::NameBR.name,
      document: FFaker::Number.number(digits: 11),
      phone: FFaker::PhoneNumberBR.phone_number,
      person: "root",
      client: client_1,
      deleted_at: nil
    )
  end


  user_3 = User.create(
    email: 'edson.shideki@mail.com',
    password: '000000',
    password_confirmation: '000000',
    )

  consumer_1 = Consumer.create(
    name: 'Edson Shideki',
    document: FFaker::IdentificationBR.cpf,
    phone: FFaker::PhoneNumber.phone_number,
    street: FFaker::AddressBR.street,
    number: FFaker::AddressBR.building_number,
    district: FFaker::AddressBR.neighborhood,
    city: FFaker::AddressBR.city,
    state: FFaker::AddressBR.state_abbr,
    zipcode: FFaker::AddressBR.zip_code,
    complement: FFaker::AddressBR.secondary_address,
    user: user_3
  )

  user_4 = User.create(
    email: 'edson.kokado@mail.com',
    password: '000000',
    password_confirmation: '000000',
    )

  consumer_2 = Consumer.create(
    name: 'Edson Kokado',
    document: FFaker::IdentificationBR.cpf,
    phone: FFaker::PhoneNumber.phone_number,
    street: FFaker::AddressBR.street,
    number: FFaker::AddressBR.building_number,
    district: FFaker::AddressBR.neighborhood,
    city: FFaker::AddressBR.city,
    state: FFaker::AddressBR.state_abbr,
    zipcode: FFaker::AddressBR.zip_code,
    complement: FFaker::AddressBR.secondary_address,
    user: user_4
  )

  product_ids = Product.pluck(:id)

  40.times do |i|
    total = FFaker::Number.decimal(whole_digits: 2, fractional_digits: 2)
    change = FFaker::Number.decimal(whole_digits: 1, fractional_digits: 2)
    fixed_delivery = FFaker::Number.decimal(whole_digits: 1)
    total_paid = total + change + fixed_delivery
    order = Order.create!(
      total: total,
      total_paid: total_paid,
      change: change,
      payment_type: %w[Cash CreditCard DebitCard Transfer].sample,
      date: FFaker::Time.date,
      time: FFaker::Time.datetime,
      status: %w[Waiting Started Prepared Dispatched Completed Canceled].sample,
      paid: %w[Yes No].sample,
      notes: FFaker::Lorem.paragraph,
      fixed_delivery: fixed_delivery,
      client: client_1,
      consumer: consumer_1,
      deleted_at: nil
    )

    rand(3..6).times do
      product_id = product_ids.sample
      quantity = rand(1..10)

      OrderItem.create!(
        order_id: order.id,
        product_id: product_id,
        document: FFaker::IdentificationBR.pretty_cpf, # Example CPF, replace as necessary
        quantity: quantity,
        date: Date.today,
        deleted_at: nil
      )
    end
  end
  puts "seed success!!!!"
end
