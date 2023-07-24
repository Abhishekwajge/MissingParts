sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        OnPress2: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
