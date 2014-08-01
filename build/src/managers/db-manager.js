var DataManager;

DataManager = (function() {
  function DataManager(dataModel) {
    this.model = dataModel;
  }

  DataManager.prototype.add = function(item, callBack) {
    var _this = this;
    return this.model.create(item, function(error, data) {
      if (error) {
        return callBack(true, null);
      } else {
        return callBack(null, data);
      }
    });
  };

  DataManager.prototype.findById = function(filter, callback) {
    var _this = this;
    return this.model.findById(filter, function(error, data) {
      if (error) {
        return callBack(true, null);
      } else {
        return callBack(null, data);
      }
    });
  };

  DataManager.prototype.findByIdAndModify = function(id, newData, callback) {
    var filter,
      _this = this;
    filter = {
      _id: id
    };
    return this.model.findById(filter, function(error, data) {
      var attribute;
      if (error) {
        return callBack(true, null);
      } else {
        if (data) {
          if (data) {
            for (attribute in newData) {
              data[attribute] = newData[attribute];
            }
            data.save(function(error, updatedData) {
              if (error) {
                return callBack(true, null);
              } else {
                return callBack(null, updatedData);
              }
            });
          } else {
            callBack(true, null);
          }
        } else {
          callBack(true, null);
        }
        return callBack(null, data);
      }
    });
  };

  DataManager.prototype.remove = function(filter, callBack) {
    var _this = this;
    return this.model.remove(filter, function(error, data) {
      if (error) {
        return callBack(true, null);
      } else {
        return callBack(null, data);
      }
    });
  };

  return DataManager;

})();

module.exports = DataManager;
