'use strict';

module.exports = function (Ozanlibrary) {
    let request = require('request');
    let app = require('../../server/server');


    /**
     * Create Data Order
     */
    Ozanlibrary.remoteMethod(
        'Ozanlibrary', {
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
                arg: 'Ozanlibrary', type: 'array', root: true
            },
            http: {
                path: '/Ozanlibrary',
                verb: 'post'
            }
        });

    Ozanlibrary.Ozanlibrary = function (params, options, cb) {
        console.log(params, 'Params');
        var idorder = params.idorder
        var namefile = params.namefile
        var typeimg = params.typeimg
        var flag = params.flag
        Ozanlibrary.create({
            idorder,
            namefile,
            typeimg,
            flag
        }, function (err, dataGet) {
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, dataGet);
            }
        });
    }





    Ozanlibrary.remoteMethod(
        'lookingimageorder', {
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
                arg: 'lookingimageorder', type: 'array', root: true
            },
            http: {
                path: '/lookingimageorder',
                verb: 'post'
            }
        });

    Ozanlibrary.lookingimageorder = function (params, options, cb) {
        console.log(params, 'Params');
        Ozanlibrary.find({
            where: {
                idorder: params.id
            }
        }, function (err, dataGet) {
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, dataGet);
            }
        });
    }



    Ozanlibrary.remoteMethod(
        'getphotodp', {
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
                arg: 'getphotodp', type: 'array', root: true
            },
            http: {
                path: '/getphotodp',
                verb: 'post'
            }
        });

    Ozanlibrary.getphotodp = function (params, options, cb) {
        console.log(params, 'Params');
        Ozanlibrary.find({
            where: {
                idorder: params.id,
                typeimg: params.typeimg
            }
        }, function (err, dataGet) {
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, dataGet);
            }
        });
    }



};
