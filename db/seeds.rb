User.destroy_all
u1 = User.create :email => 'abc@ga.co'
u2 = User.create :email => 'xyz@ga.co'
u3 = User.create :email => 'jfk@ga.co'

Book.destroy_all
b1 = Book.create :title => 'Macbeth'
b2 = Book.create :title => 'Small Spaces'
b3 = Book.create :title => "The Lost Flowers of Alice Hart"

Author.destroy_all
a1 = Author.create :name => 'Jo Nesbo'
a2 = Author.create :name => 'Sarah Epstein'
a3 = Author.create :name => 'Holly Ringland'

Discipline.destroy_all
d1 = Discipline.create :name => 'Fiction'
d2 = Discipline.create :name => 'Young Adult'
d3 = Discipline.create :name => 'Non-Fiction'

Publisher.destroy_all
p1 = Publisher.create :name => 'Nautical Text Rock'
p2 = Publisher.create :name => 'Nautical Math Rock'
p3 = Publisher.create :name => 'Bollywood Bubblegum Pop'
p4 = Publisher.create :name => 'Folk rock'
p5 = Publisher.create :name => 'Scottish Misery'

Personal_library.destroy_all
pl1 = Personal_library.create :title => 'Driving Songs'
pl2 = Personal_library.create :title => 'Makeout Music'
pl3 = Personal_library.create :title => 'Code Jams'
pl4 = Personal_library.create :title => 'Monkey Mongs'

# Albums and songs
l1.songs << s1
l2.songs << s2
l3.songs << s3

# Artists and songs
a1.songs << s1
a2.songs << s2
a3.songs << s3

# Genres and songs
s1.genres << g1 << g2
g3.songs << s2

# Mixtapes of songs
m1.songs << s1 << s2 << s3 << s2
m2.songs << s2 << s3
m3.songs << s1 << s3
m4.songs << s2 << s2 << s2

# Mixtapes and users
u1.mixtapes << m1 << m2
u2.mixtapes << m3 << m4
