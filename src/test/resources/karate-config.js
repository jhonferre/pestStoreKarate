function fn() {
  var config = {
    baseUrl: 'https://petstore.swagger.io/v2',
    newUser: {
      id: 1234,
      username: 'testuser',
      firstName: 'Test',
      lastName: 'User',
      email: 'testuser@example.com',
      password: 'password123',
      phone: '1234567890',
      userStatus: 0
    },
    updatedUser: {
      id: 1234,
      username: 'testuser',
      firstName: 'Updated',
      lastName: 'UserUpdated',
      email: 'updateduser@example.com',
      password: 'Updated123',
      phone: '1234567899',
      userStatus: 0
    }
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);

  return config;
}
