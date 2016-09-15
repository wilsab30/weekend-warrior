def hello_world(name = "World")
  if name == ""
  return "Hello, World!"
  end
  return "Hello, #{name}!"
  end
hello_world()
hello_world("Bob")
hello_world("Alice")
