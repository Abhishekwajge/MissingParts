sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'missingpartsapp/test/integration/FirstJourney',
		'missingpartsapp/test/integration/pages/Parts_HeaderList',
		'missingpartsapp/test/integration/pages/Parts_HeaderObjectPage'
    ],
    function(JourneyRunner, opaJourney, Parts_HeaderList, Parts_HeaderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('missingpartsapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParts_HeaderList: Parts_HeaderList,
					onTheParts_HeaderObjectPage: Parts_HeaderObjectPage
                }
            },
            opaJourney.run
        );
    }
);