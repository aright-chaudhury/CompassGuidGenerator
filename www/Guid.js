var exec = require('cordova/exec');

/*
exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'Guid', 'coolMethod', [arg0]);
};
*/

function Guid() {
    this.empty = '00000000-0000-0000-0000-000000000000';
    
    this.newGuid = function (success, error) {
        exec(success, error, 'Guid', 'newGuid', []);
    }
}

module.exports = new Guid();
