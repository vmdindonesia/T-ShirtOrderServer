'use strict';

module.exports = function (Ozanorder) {
    let request = require('request');
    let app = require('../../server/server');


    /**
     * Create Data Order
     */
    Ozanorder.remoteMethod(
        'ozanBuying', {
            accepts: {
                arg: 'data',
                type: 'Object',
                http: { source: 'body' }
            },
            returns: {
                type: 'array', root: true
            },
            http: {
                path: '/ozanBuying',
                verb: 'post'
            }
        });


    Ozanorder.ozanBuying = function (params, cb) {
        console.log(params, 'DATA BUYING');

        var userid = params.userid
        var buyername = params.buyername
        var companyname = params.companyname
        var address = params.address
        var shippedto = params.shippedto
        var invoiceto = params.invoiceto
        var vendorname = params.vendorname
        var trackingno = params.trackingno
        var deliverydate = params.deliverydate
        var amount = params.amount
        var totalamount = params.totalamount
        var confirmto = params.confirmto
        var productionstatus = params.productionstatus
        var status = params.status

        Ozanorder.create({
            userid,
            buyername,
            companyname,
            address,
            shippedto,
            invoiceto,
            vendorname,
            trackingno,
            deliverydate,
            amount,
            totalamount,
            confirmto,
            productionstatus,
            status
        }, function (err, dataGet) {
            if (err) {
                cb(err);
                console.log(err, 'Errornya');
            } else {
                cb(null, dataGet);
                console.log(dataGet, 'DATA GET')
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
        console.log(params.userid, 'Params');
        Ozanorder.find(
            { where: 
                { 
                    userid: params.userid 
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
