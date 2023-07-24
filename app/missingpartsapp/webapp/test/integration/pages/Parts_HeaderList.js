sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'missingpartsapp',
            componentId: 'Parts_HeaderList',
            entitySet: 'Parts_Header'
        },
        CustomPageDefinitions
    );
});