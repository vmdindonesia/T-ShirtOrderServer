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

    }

    /**
     * function get data report Down Payment
     */
    Ozanorder.remoteMethod(
        'ozanDownPaymentReport', {
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
                arg: 'ozanDownPaymentReport', type: 'array', root: true
            },
            http: {
                path: '/ozanDownPaymentReport',
                verb: 'get'
            }
        });


    Ozanorder.ozanDownPaymentReport = function (params, options, cb) {
        console.log(params.userId, 'Params');
        Ozanorder.find({
            where: {
                status: 2
            }}, function(err, accounts) { 
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, accounts);
            }
         });
    }

        /**
     * function get data report Payed
     */
    Ozanorder.remoteMethod(
        'ozanPayedReport', {
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
                arg: 'ozanPayedReport', type: 'array', root: true
            },
            http: {
                path: '/ozanPayedReport',
                verb: 'get'
            }
        });


    Ozanorder.ozanPayedReport = function (params, options, cb) {
        console.log(params.userId, 'Params');
        Ozanorder.find({
            where: {
                status: 3
            }}, function(err, accounts) { 
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, accounts);
            }
         });
    }


};
