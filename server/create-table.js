var server = require('./server');
var ds = server.dataSources.ozanDB;
var lbTables = ['User', 'AccessToken', 'ACL', 'RoleMapping', 'Role', 'OzanUserCredential', 'OzanOrder', 'OzanLibrary'];
ds.automigrate(lbTables, function(er) {
  if (er) throw er;
  console.log('Loopback tables [' - lbTables - '] created in ', ds.adapter.name);
  ds.disconnect();
});