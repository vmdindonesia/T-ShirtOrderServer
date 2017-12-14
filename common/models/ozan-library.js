'use strict';

module.exports = function(Ozanlibrary) {
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
            Ozanlibrary.create({
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

};
