



var mainController = require('./controller.js');

module.exports = function(app){

  app.get('/getAccount/:id', function(req, res){
    mainController.getAccount(req, res);
  });
  app.get('/balanceTransfer/:info', function(req, res){
    mainController.balanceTransfer(req, res);
  })

  app.get('/addKey/:info', function(req, res){
    mainController.addNewKey(req, res);
  })
  
}
