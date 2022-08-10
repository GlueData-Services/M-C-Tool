require './config/environment'

i = 0
Mara.all.each do |m|
  i+=1
  m.update(prefixed_matnr: m.banner[0] + '_' + m.material)
  puts i if i % 10000 == 0
end
