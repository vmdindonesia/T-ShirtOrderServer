'use strict';

module.exports = function (Ozanorder) {

    let request = require('request');
    let app = require('../../server/server');


    /**
     * Create Data Order
     */
    Ozanorder.remoteMethod(
        'ozanBuying', {
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
                arg: 'ozanBuying', type: 'array', root: true
            },
            http: {
                path: '/ozanBuying',
                verb: 'post'
            }
        });


    Ozanorder.ozanBuying = function (params, options, cb) {
        console.log(params, 'Params');
        Ozanorder.create({
            params
        }, function (err, dataGet) {
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, dataGet);
            }
        });
    }
    /**
     * function get data
     */
    Ozanorder.remoteMethod(
        'ozangetBuying', {
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
                arg: 'ozangetBuying', type: 'array', root: true
            },
            http: {
                path: '/ozangetBuying',
                verb: 'get'
            }
        });


    Ozanorder.ozangetBuying = function (params, options, cb) {
        console.log(params.userId, 'Params');
        Ozanorder.find({where: {userId: params.userId}}, function(err, accounts) { 
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, accounts);
            }
         });
        // Ozanorder.find({
        //     where: {
        //         userId: params.userId
        //     }
        // }, function (err, buyGet) {
        //     if (err) {
        //         cb(err);
        //         console.log(err, 'Errornya');
        //     } else {
        //         cb(null, buyGet);
        //     }
        // });
    }
};
