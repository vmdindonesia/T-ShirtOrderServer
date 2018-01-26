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
        'getorderdetail', {
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
                arg: 'getorderdetail', type: 'array', root: true
            },
            http: {
                path: '/getorderdetail',
                verb: 'post'
            }
        });

    Ozanorder.getorderdetail = function (params, options, cb) {
        console.log(params, 'User Id');
        Ozanorder.find({
            where: {
                id: params.id,
                userid: params.userid
            }
        }
            , function (err, data) {
                if (err) {
                    cb(err);
                } else {
                    cb(null, data);
                }
            });
    }

    // Ozanorder.remoteMethod(
    //     'ozangetBuying', {
    //         accepts: [{
    //             arg: 'params',
    //             type: 'Object',
    //             required: true,
    //             http: { source: 'body' }
    //         }, {
    //             arg: "options",
    //             type: "object",
    //             http: "optionsFromRequest"
    //         }],
    //         returns: {
    //             arg: 'ozangetBuying', type: 'array', root: true
    //         },
    //         http: {
    //             path: '/ozangetBuying',
    //             verb: 'get'
    //         }
    //     });


    // Ozanorder.ozangetBuying = function (params, options, cb) {
    //     console.log(params.userid, 'Get User Id');
    //     Ozanorder.findById(
    //                  params.userid        
    //         , function (err, dataGet) {
    //             if (err) {
    //                 cb(err);
    //                 console.log(err, 'Errornya');
    //             } else {
    //                 cb(null, dataGet);
    //             }
    //         });
    // }

    Ozanorder.remoteMethod(
        'lookingdetailorder', {
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
                arg: 'lookingdetailorder', type: 'array', root: true
            },
            http: {
                path: '/lookingdetailorder',
                verb: 'post'
            }
        });

    Ozanorder.lookingdetailorder = function (params, options, cb) {
        console.log(params, 'Data');
        Ozanorder.findById(
            params.id
            , function (err, data) {
                if (err) {
                    cb(err);
                } else {
                    cb(null, data);
                }
            });
    }


    Ozanorder.remoteMethod(
        'changedetailorder', {
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
                arg: 'changedetailorder', type: 'array', root: true
            },
            http: {
                path: '/changedetailorder',
                verb: 'post'
            }
        });

    Ozanorder.changedetailorder = function (params, options, cb) {
        console.log(params, 'Data');
        Ozanorder.findById(
            params.id
            , function (err, data) {
                if (err) {
                    cb(err);
                } else {
                    cb(null, data);
                }
            });
    }

    Ozanorder.remoteMethod(
        'updatedataorder', {
            accepts: {
                arg: 'data',
                type: 'Object',
                http: { source: 'body' }
            },
            returns: {
                type: 'array', root: true
            },
            http: {
                path: '/updatedataorder',
                verb: 'post'
            }
        });


    Ozanorder.updatedataorder = function (params, cb) {
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

        Ozanorder.updateAll({
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

    /***
 * Donwload PDF
 */

    Ozanorder.remoteMethod(
        'download',
        {
            isStatic: true,
            accepts: [
                { arg: 'id', type: 'string', required: true }
            ],
            returns: [
                { arg: 'body', type: 'file', root: true },
                { arg: 'Content-Type', type: 'string', http: { target: 'header' } }
            ],
            http: { path: '/:id/download', verb: 'get' }
        }
    );

    Ozanorder.download = function download(userId, cb) {
        var reader = fs.createReadStream(__dirname + '/../document.pdf');
        cb(null, reader, 'application/pdf');
    };


    /***
* Get Report DP
*/

    Ozanorder.remoteMethod(
        'getreportDP', {
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
                arg: 'getreportDP', type: 'array', root: true
            },
            http: {
                path: '/getreportDP',
                verb: 'post'
            }
        });

    Ozanorder.getreportDP = function (params, options, cb) {
        console.log(params, 'Data');
        Ozanorder.find({
            where: {
                status: params.statusDP
            }
        }, function (err, data) {
            if (err) {
                cb(err);
            } else {
                cb(null, data);
            }
        });
    }

    /***
* Get Report Full Payment
*/

    Ozanorder.remoteMethod(
        'getreportFP', {
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
                arg: 'getreportFP', type: 'array', root: true
            },
            http: {
                path: '/getreportFP',
                verb: 'post'
            }
        });

    Ozanorder.getreportFP = function (params, options, cb) {
        console.log(params, 'Data');
        Ozanorder.find({
            where: {
                status: params.statusFP
            }
        }, function (err, data) {
            if (err) {
                cb(err);
            } else {
                cb(null, data);
            }
        });
    }



    /**
     * Manage Order
     */
    Ozanorder.remoteMethod(
        'manageorder', {
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
                arg: 'manageorder', type: 'array', root: true
            },
            http: {
                path: '/manageorder',
                verb: 'post'
            }
        });

    Ozanorder.manageorder = function (params, options, cb) {
        console.log(params, 'id');
        Ozanorder.find({}
            , function (err, data) {
                if (err) {
                    cb(err);
                } else {
                    cb(null, data);
                }
            });
    }

};







