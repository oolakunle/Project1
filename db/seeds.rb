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
p1 = Publisher.create :name => 'Penguin'
p2 = Publisher.create :name => 'Macmillian'
p3 = Publisher.create :name => 'Oxford Press'

Personal_library.destroy_all
pl1 = Personal_library.create :title => 'Personal Development'
pl2 = Personal_library.create :title => 'Life Enhancing'
pl3 = Personal_library.create :title => 'Meditation'

# Publishers and books
p1.books << b1
p2.books << b2
p3.books << b3

# Authors and books
a1.books << b1
a2.books << b2
a3.books << b3

# Disciplines and books
b1.disciplines << d1 << d2
d3.books << b2

# Personal Libraries and books
pl1.books << b1 << b2 << b3 << b2
pl2.books << b2 << b3
pl3.books << b1 << b3

# Personal Libraries and users
u1.personal_libraries << pl1 << pl2
u2.personal_libraries << pl3
