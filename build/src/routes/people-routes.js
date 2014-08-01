module.exports = function(app, dbManager) {
  var PersonManager, personManager;
  PersonManager = require('../managers/person-manager');
  personManager = new PersonManager(dbManager);
  /*
   Gets all people
  */

  app.get('/people/', function(request, respons) {
    var _this = this;
    console.log("GET: /people");
    return personManager.find({}, function(error, person) {
      var result;
      if (error != null) {
        console.log(person);
        result = {
          data: person,
          v: '1'
        };
        return respons.send(result);
      }
    });
  });
  /*
   Gets a person by an Id
  */

  app.get('/people/:person_id', function(request, respons) {
    var personId,
      _this = this;
    console.log("GET: /people/:person_id");
    personId = request.query.person_id;
    return personManager.findById(personId, function(error, person) {
      var result;
      if (error != null) {
        console.log(person);
        result = {
          data: person,
          v: '1'
        };
        return respons.send(result);
      }
    });
  });
  /*
   Adds a person
  */

  app.post('/people', function(request, respons) {
    var person,
      _this = this;
    console.log("POST: /people");
    person = request.body.person;
    return personManager.add(person, function(error, newPerson) {
      var result;
      if (error != null) {
        console.log(newPerson);
        result = {
          data: newPerson,
          v: '1'
        };
        return respons.send(result);
      }
    });
  });
  /*
  update the  person information
  */

  app.put('/people/:person_id', function(request, respons) {
    var newDataPerson, personID,
      _this = this;
    console.log("put: /people/:person_id");
    personID = req.params.person_id;
    newDataPerson = request.body.newDataPerson;
    return personManager.findByIdAndModify(personID, newDataPerson, function(error, updatedPerson) {
      var result;
      if (error != null) {
        console.log(updatedPerson);
        result = {
          data: updatedPerson,
          v: '1'
        };
        return respons.send(result);
      }
    });
  });
  /*
  Deletes the  person by an Id
  */

  return app["delete"]('/people/:person_id', function(request, respons) {
    var personID,
      _this = this;
    console.log("DELETE: /people/:person_id");
    personID = req.params.person_id;
    return personManager.remove(personID, function(error) {
      var result;
      result = {};
      if (error != null) {
        result = {
          data: true,
          v: '1'
        };
      } else {
        result = {
          data: false,
          v: '1'
        };
      }
      return respons.send(result);
    });
  });
};
