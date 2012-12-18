# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person = Person.create( first_name: 'Álvaro', last_name: 'Ñara', birthdate: Time.now, email: 'alvarola@gmail.com' )

1000.times do 
  post = Post.new( title: "Éste es el título", content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel consequat elit. Nunc aliquam nibh id felis scelerisque fringilla. Maecenas consectetur magna a nibh faucibus elementum. Vivamus enim nibh, congue eu vestibulum eget, mollis eget velit. Donec aliquam posuere magna, ultricies pellentesque diam laoreet at. Fusce id odio id ipsum vestibulum ultrices at vel urna. Morbi tempor imperdiet enim, et tincidunt tortor eleifend eget. Mauris facilisis tristique leo, quis rhoncus est sollicitudin sed. Sed elementum felis eget massa egestas ultricies.
Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum sed justo felis, ut mattis nunc. Fusce dignissim justo non nisi vulputate condimentum. Sed a sapien sed leo eleifend viverra a mattis arcu. Donec vulputate malesuada sapien, non placerat velit malesuada eu. In consectetur blandit massa vehicula aliquet. Proin erat quam, semper id tempus id, auctor at nunc. Sed sit amet sapien quis eros rutrum pellentesque. Pellentesque sapien lacus, adipiscing et ultricies eget, dapibus hendrerit dui. Ut tellus metus, condimentum a sollicitudin in, bibendum ut elit.
Phasellus quam mi, tempus molestie malesuada ac, vehicula nec massa. Ut ultrices lectus vel dolor ornare ullamcorper. In facilisis posuere feugiat. Sed at velit lorem, ac varius enim. Nulla tortor dui, dignissim et semper aliquet, auctor sit amet felis. Vivamus suscipit ultricies rhoncus. Cras venenatis pellentesque nulla, vitae molestie nunc vehicula nec. Aenean ultrices cursus magna at vestibulum. Quisque et rutrum justo. Praesent mauris ipsum, gravida sit amet auctor in, blandit eu lacus.
Sed mi ipsum, gravida in ornare non, pretium sed est. Morbi a magna massa, sed luctus sapien. Suspendisse potenti. Sed nec erat lorem, vel blandit leo. Pellentesque pellentesque ultricies convallis. In nec magna est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam id metus ipsum. Vestibulum commodo urna sit amet nisl consequat mattis. Donec odio nulla, tincidunt sed blandit nec, blandit ut felis. Quisque justo est, scelerisque non vehicula id, molestie ac lectus. Suspendisse potenti. Vestibulum semper congue sapien et interdum. Praesent congue nisl ac ante posuere a facilisis sapien aliquet. Donec pretium, erat et imperdiet adipiscing, velit justo ullamcorper nisi, eu rhoncus lacus nulla nec tellus. Aenean vitae orci a sem malesuada dictum a ut sapien.
Morbi mollis purus vitae nulla convallis sit amet pharetra mi feugiat. Vivamus porta magna est. Etiam nec metus nec tortor adipiscing ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum eu ultrices lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras eu velit et enim rhoncus posuere nec quis nisl. Duis a leo eu sapien facilisis hendrerit. Curabitur scelerisque, purus et consectetur tristique, erat mi blandit velit, a rutrum erat eros eget enim. Donec a semper turpis. Ut sit amet lectus quis dui dapibus bibendum. Sed rutrum suscipit aliquet. Mauris malesuada, est eget elementum imperdiet, nulla felis condimentum justo, in elementum augue magna nec justo. Vestibulum ac placerat sem.
", publishing_date: Time.now)
  post.person= person
  post.save
end