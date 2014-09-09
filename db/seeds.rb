# Create Role admin and member
admin  = Role.find_or_create_by(name: 'admin')
member = Role.find_or_create_by(name: 'member')

## Create User admin
user = User.find_or_initialize_by(username: 'admin', email: 'admin@gmail.com', password: 'admin123')
user.role = admin
user.save