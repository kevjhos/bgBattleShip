var DBManager, app, dbConfig, express, mongoose, path, pathDBManager, server, srv;

express = require("express");

path = require("path");

mongoose = require('mongoose');

app = express();

server = require('http').createServer(app);

/*
  Instance of DB
*/


pathDBManager = './managers/db-manager';

DBManager = require(pathDBManager);

dbConfig = {
  dbName: 'Winter',
  dbUser: '',
  dbPass: '',
  dbHost: 'localhost'
};

mongoose.connect("mongodb://" + dbConfig.dbHost + "/" + dbConfig.dbName);

app.set('port', process.env.PORT || '3000');

app.use(express["static"](path.join(__dirname, '../views')));

app.use(express["static"](path.join(__dirname, '../public')));

app.engine('.html', require('ejs').__express);

app.set('view engine', 'html');

app.use(express.logger('dev'));

app.use(express.bodyParser());

app.use(express.methodOverride());

app.use(app.router);

app.configure('development', function() {
  return app.use(express.errorHandler({
    dumpExceptions: true,
    showStack: true
  }));
});

app.configure('production', function() {
  return app.use(express.errorHandler());
});

app.get('/', function(request, respons) {
  var view;
  view = 'index';
  return respons.render(view);
});

app.get('/example', function(req, res) {
  var responseData;
  responseData = {
    name: 'Fulano',
    age: 100
  };
  return res.json(200, responseData);
});

require('./routes/people-routes')(app);

srv = app.listen(app.get('port'), function() {
  return console.log('Listening on port %d', srv.address().port);
});
