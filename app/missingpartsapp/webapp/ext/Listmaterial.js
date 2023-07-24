sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onPress: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        },
        onSelectionChange: function(oEvent) {
            var oSelectedItem = oEvent.getParameter("listItem");
            var FehlteilID = oSelectedItem.getBindingContext().getProperty("FehlteilID");

           

            MessageToast.show("Fehlteil ID:" +FehlteilID);

            //this.navigateToTarget("Parts_HeaderObjectPage", {
             //   "key": "FehlteilID=" + s1pt + ",IsActiveEntity=true"});

                const oModel = this.getModel();
                var Contextpath = "/Parts_Header(FehlteilID='"+FehlteilID+ "',"+"IsActiveEntity=true)";
                const oContextBinding = oModel.bindContext(Contextpath);
                
    
                oContextBinding.requestObject().then(function () {
                        let oBoundContext = oContextBinding.getBoundContext();
                        this.routing.navigate(oBoundContext);
    
    
                }.bind(this));
        }  
    };
});
