'use strict';

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

    Ozanusercredential.LoginUser = function (params, options, cb) {
        console.log(params, 'Login Data');
        Ozanusercredential.login({
            username: params.username,
            password: params.password
        }, function (error, token) {
            console.log(token);
            if (error) {
                cb(error);
                console.log(error.statusCode, 'Errornya')
            } else {
                cb(null, token);
            }
        });
    }


};
