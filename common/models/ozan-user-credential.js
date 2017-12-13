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
            //pake if else buat misahin admin, marketing dan user
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

    Ozanusercredential.remoteMethod(
        'ozanLogout', {
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
                arg: 'ozanLogout', type: 'array', root: true
            },
            http: {
                path: '/ozanLogout',
                verb: 'post'
            }
        });

    Ozanusercredential.ozanLogout = function (params, options, cb) {
        console.log(params.id, 'LogOut Data');
        Ozanusercredential.logout(params.id, function (err, logout) {
            if (err) {
                cb(err);
                console.log(err.statusCode, 'Errornya')
            } else {
                cb(null, logout);
            }
        });
    }

};
