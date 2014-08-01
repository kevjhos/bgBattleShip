var DBManager, PersonManager, PersonModel,
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

DBManager = require('./db-manager');

PersonModel = require('../models/person-model');

PersonManager = (function() {
  function PersonManager() {
    this.remove = __bind(this.remove, this);
    this.findByIdAndModify = __bind(this.findByIdAndModify, this);
    this.add = __bind(this.add, this);
    this.findById = __bind(this.findById, this);
    this.dataManager = new DBManager(PersonModel);
  }

  PersonManager.prototype.findById = function(filter, callBack) {
    return this.dataManager.findById(filter, callBack);
  };

  PersonManager.prototype.add = function(newPerson, callBack) {
    return this.dataManager.add(newPerson, callBack);
  };

  PersonManager.prototype.findByIdAndModify = function(personID, newDataPerson, callBack) {
    return this.dataManager.add(personID, newDataPerson, callBack);
  };

  PersonManager.prototype.remove = function(personID, callBack) {
    return this.dataManager.remove({
      _id: personID
    }, callBack);
  };

  return PersonManager;

})();

module.exports = PersonManager;
