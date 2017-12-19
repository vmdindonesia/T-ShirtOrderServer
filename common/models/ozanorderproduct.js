'use strict';

module.exports = function(Ozanorderproduct) {

    let request = require('request');
    let app = require('../../server/server');


    /**
     * Create Data Order
     */
    Ozanorderproduct.remoteMethod(
        'ozanProduct', {
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
                arg:  'ozanProduct', type: 'array', root: true
            },
            http: {
                path: '/ozanProduct',
                verb: 'post'
            }
        });

        Ozanorderproduct.ozanProduct = function (params, options, cb) {
            console.log(params, 'DATA PRODUK');
            var idorder = params.idorder
            var descriptionorder = params.descriptionorder
            var sizeorder = params.sizeorder
            var qtyorder = params.qtyorder  
            var unitprice = params.unitprice
            Ozanorderproduct.create({
                idorder,
                descriptionorder,
                sizeorder,
                qtyorder,
                unitprice
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