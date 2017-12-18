'use strict';

module.exports = function(Ozanmenucredential) {

    /**
     * FindMenu
     */

    Ozanmenucredential.remoteMethod(
        'ozanFindMenu', {
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
                arg: 'ozanFindMenu', type: 'array', root: true
            },
            http: {
                path: '/ozanFindMenu',
                verb: 'post'
            }
        });

    Ozanmenucredential.ozanFindMenu = function (params, options, cb) {
        console.log(params, 'FindMenu Data');
        Ozanmenucredential.find({
            where: {
                roleUser: params.roleUser
            }, order: 'title ASC'
        }, function (err, FindMenu) {
            if (err) {
                cb(err);
                console.log(err.statusCode, 'Errornya');
            } else {
                cb(null, FindMenu);
                console.log(FindMenu, 'MENU NYA NIH');
            }
        });
    }
};
