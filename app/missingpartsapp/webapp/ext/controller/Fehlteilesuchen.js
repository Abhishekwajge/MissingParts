sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        OnPressFehlteileSuchen: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
