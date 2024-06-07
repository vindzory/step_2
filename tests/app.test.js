const request = require('supertest');
const server = require('../index.js');

describe('GET /', () => {
  var app;
  
  beforeEach(function () {
    app = server;
  });
  
  afterEach(function () {
    app.close();
  });
  
  it('responds to /', function testSlash(done) {
    request(app)
      .get('/')
      .expect(200, done);
  });
});
