sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onPress: function(oEvent) {
            var aaa = this.getView().getID();

            MessageToast.show("Custom handler invoked.");
        }
    };
});
