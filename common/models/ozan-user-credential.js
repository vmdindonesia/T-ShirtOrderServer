'use strict';

<<<<<<< HEAD
module.exports = function (Ozanusercredential) {
    let request = require('request');
    let app = require('../../server/server');

    Ozanusercredential.remoteMethod(
        'LoginUser', {
            accepts: [{
                arg: 'params',
                type: 'Object',
                required: true,
                http: { source: 'body' }
            }, {
                arg: "options",
                type: "object",
                http: "optionsFromRequest"
            }],
            returns: {
                arg: 'LoginUser', type: 'array', root: true
            },
            http: {
                path: '/LoginUser',
                verb: 'post'
            }
        });

    // Ozanusercredential.LoginUser = LoginUser;

    Ozanusercredential.LoginUser = function (params, options, cb) {
        console.log(params, 'Params Find');
        Ozanusercredential.login({
            username: params.username,
            password: params.password
        }, function (err, token) {
            console.log(token);
            if (err) {
                cb(err);
                console.log(err, 'Errornya')
            } else {
                cb(null, token);
            }
        });
    }

=======
module.exports = function(Ozanusercredential) {
>>>>>>> develop

};
