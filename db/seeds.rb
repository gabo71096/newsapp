# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add values for seed
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
  Noticium.create(
    title: 'Corrupción en Providencia',
    lower: 'Nuevo caso de corrupción remece la comuna',
    author: 'Gabriel López Valencia',
    body: 'A través de Transparencia, Mega indagó en las planillas de pago de sueldos de funcionarios municipales. La nómina de transferencia de dineros por horas extra la lideran Las Condes y Vitacura, que entre junio del año pasado y septiembre de 2021 son los municipios que más pagos por este concepto efectúan sobre las permitidas, detalla el reportaje emitido por el canal privado. Apelando a la Ley 19.104, que establece que el máximo de horas diurnas que pueden autorizarse son 40, en ambas municipalidades, la regla no se cumple. En el caso de Las Condes, detalla el informe periodístico, entre planta y contrata tiene 1.061 funcionarios. De ellos, el 56% declara horas extra sobre las 40 diurnas permitidas. Respecto del desembolso de la municipalidad aludida, el reportaje asegura que gasta 650 millones de pesos mensualmente por este concepto, consolidándola como la comuna con más horas extra del sector oriente. Un caso análogo lo representa la comuna de Vitacura, donde la investigación detectó situaciones similares con funcionarios que incluso llegaron a percibir sueldos más altos que el del propio alcalde cuestionado, Raúl Torrealba. Hasta 2.000.000 por concepto de horas extra, denuncia Mega en un reportaje que también abordó la situación que se vive en Providencia.',
    image: 'https://assets.eldesconcierto.cl/2021/11/Providencia-1024x639.jpg'
  )
  Noticium.create(
    title: 'Tribunal autoriza entrega de fichas médicas completas de Rojas Vade a la Fiscalía',
    lower: 'El tribunal autorizó la entrega de las fichas médicas del convencional Rodrigo Rojas Vade a la Fiscalía Centro Norte. Así también aprobó el levantamiento del secreto bancario. Esto, tras ser indagado por el delito de estafa y perjurio.',
    author: 'Gabriel López Valencia',
    body: 'El Séptimo Juzgado de Garantía de Santiago, autorizó entregar las fichas médicas completas del convencional Rodrigo Rojas Vade a la Fiscalía Centro Norte. Asimismo, el tribunal autorizó el levantamiento del secreto bancario. Esto, tras ser indagado por el delito de estafa y perjurio. Ambas peticiones fueron realizadas por el fiscal Patricio Cooper, quien lleva la investigación contra el convencional, quien recordemos mintió con su diagnóstico de cáncer. “Hoy día el tribunal ha dado la razón al Ministerio Público, y ha accedido al levantamiento del secreto bancario del señor Rojas Vade a sus cuentas. Además, vamos a tener acceso a las fichas clínicas”, indicó el fiscal. Las resoluciones fueron decretadas por la jueza del Séptimo Juzgado de Garantía de Santiago, Carla Capello. Cabe recordar que el abogado de Rodrigo Rojas Vade, Tomás Ramírez, había pedido a la Fiscalía justificar la entrega de información médica adicional del constituyente. Según la defensa ya se había entregado la documentación que acredita cuáles son sus diagnósticos reales. “La Físcalía solicitó que se entregaran también las fichas clínicas, a lo que nosotros accedimos sin ningún problema”, indicó Ramírez. Finalmente, en relación a la información bancaria dijo que "a nuestro juicio no se cumplían con los requisitos de la Ley General de Bancos. Sin embargo el tribunal ordenó su entrega, por lo tanto la investigación seguirá su curso, tanto respecto de la información bancaria y de salud, como todas las otras diligencias que se encuentran pendientes".',
    image: 'https://media.biobiochile.cl/wp-content/uploads/2021/12/rojas-vade-750x400.png'
  )
  Noticium.create(
    title: '"Hay que tener pruebas y hacerse cargo": abogada de Parisi por acusaciones de militantes del PDG',
    lower: '"Estamos aprendiendo y no queremos cometer errores", dijo la abogada del excandidato presidencial, Franco Parisi, del Partido de la Gente (PDG) a raíz de la polémica acusación contra la agrupación.',
    author: 'Tamara Ramírez Bravo',
    body: 'Esta semana se dieron a conocer antecedentes sobre el Partido de la Gente (PDG) que generaron polémica. Dos de sus militantes acusaron que presuntamente hubo amenazas de muerte, como también la solicitud de dinero para que el excandidato presidencial, Franco Parisi, pudiera realizar un viaje. En tanto, el Servicio Electoral (Servel) aseguró que el PDG se estaría arriesgando a multas luego de que se apuntaran posibles irregularidades en la recepción de dinero vía cuentas bancarias personales. En conversación con Podría Ser Peor de Radio Bío Bío, Elizabeth Rodríguez, abogada de Franco Parisi, se refirió a la polémica y señaló que "hay que tener pruebas y hacerse cargo de las acusaciones". En la instancia, la abogada destacó que "dentro de la complejidad (…) La directiva se está haciendo cargo de todo lo que tiene que ver con el partido. Se realizará una revisión completa de las fechas y de todo. Hago un llamado a la tranquilidad, somos un grupo de seres humanos que se pueden equivocar". En tanto, y tras ser consultada por la supuesta llegada de dineros para el candidato Parisi, Rodríguez opinó que "creo que hay un matices semánticos de cómo se han utilizado las palabras. Se pudo haber incurrido a algo, pero finalmente era obtener recursos para dar movimiento logístico al partido. En ningún momento platas directas para el candidato". También agregó que "la gente confunde, y tiene que ver con la inmediatez, y desafortunadamente acá hay que tomarse el tiempo (…) No es simple, esto es complejo. Necesitamos tiempo para clarificar y te aseguro que todo lo que se comenta ahora, no quedará en nada". Con respecto a la acusación de una de las militantes de PDG por la recaudación de fondos para que el excandidato Parisi presuntamente viajara, indicó que "considero que hay un error conceptual, se hizo una fiesta en el proceso de recaudación de fondos, pero no eran platas para Franco ni la candidatura presidencial". Finalmente, Rodríguez concluyó con que "no podemos implementar el procedimiento que tenemos (…) Estamos aprendiendo. Tenemos 5 meses de vida como partido. Estamos aprendiendo y no queremos cometer errores".',
    image: 'https://media.biobiochile.cl/wp-content/uploads/2021/12/pdg-parisi-polemica-desmentir-750x400.jpg'
  )
end

if Rails.env.production?
  AdminUser.create!(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PWD'],
                    password_confirmation: ENV['ADMIN_PWD'])
end
