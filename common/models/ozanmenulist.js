'use strict';

module.exports = function(Ozanmenulist) {

    /**
     * FindMenu
     */

    Ozanmenulist.remoteMethod(
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

    Ozanmenulist.ozanFindMenu = function (params, options, cb) {
        console.log(params, 'FindMenu Data');
        Ozanmenulist.find({
            where: {
                roleuser: params.roleuser
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
