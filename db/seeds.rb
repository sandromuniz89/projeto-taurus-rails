default_description = "Canais, Filmes, Séries e Adulto (Opcional)"
planos_data = [
  { nome: 'Silver', valor: 5.00, duration_days: 30 },
  { nome: 'Gold', valor: 10.00, duration_days: 90 },
  { nome: 'Platinum', valor: 20.00, duration_days: 180 },
  { nome: 'Black', valor: 40.00, duration_days: 360 }
]

puts "Atualizando/Criando Planos..."

planos_data.each do |plano_attrs|
  plano = Plano.find_or_initialize_by(nome: plano_attrs[:nome])
  plano.update!(
    valor: plano_attrs[:valor],
    description: default_description,
    duration_days: plano_attrs[:duration_days]
  )
  puts "- #{plano.nome} atualizado/criado."
end

puts "Planos atualizados/criados com sucesso!"