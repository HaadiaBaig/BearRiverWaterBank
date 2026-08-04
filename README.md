# Immersive Model for a Water Bank for Bear River Basin

## Purpose

The purpose of this immersive online collaborative model is to help generate holistic strategies to get more water to the Great Salt Lake. The tool is useful for two purposes; as researchers we want to know A) Why do people decide to consume, conserve, bank, and deliver water within the immersive modeling environments? B) Which new insights do participants take away from a model session? C) How can an immersive online collaborative modeling approach help generate holistic strategies to address the multidisciplinary, multi-user, and conflict-laden problem to get more water to Great Salt Lake? Second, collaborators get an opportunity to immerse in and personify water user roles in Bear River Basin, while making decisions to consume, conserve, and bank water.

## Key Ideas

The model is based on the following principles: A) Store winter flows in Bear Lake B) Allocate summer natural flows to users based on historic flows C) Allocate water from Bear River or from Bear Lake storage (if applicable) D) Users consume, conserve or trade within their available water, other’s choices, and real-time discussion of choices E) Bank decides the amount of water to deliver to GSL from the banked water.

### Bear River Basin

Bear River is an interstate river in Utah, Wyoming, and Idaho, encompassing approximately 500 square miles. It originates in the Uinta Mountains of northeastern Utah, flows north into Wyoming, then west and south through Idaho, and ultimately returns to Utah before discharging into the Great Salt Lake. Key hydrologic features of the basin include Bear Lake, a large natural lake used for water storage and hydropower regulation, and a system of reservoirs, diversions, and irrigation infrastructure that support agricultural, municipal, industrial, and ecological uses. Average annual flows vary considerably due to snowpack-driven runoff and climatic conditions, requiring coordinated interstate management under established legal and operational frameworks.

The water allocation and management in the Bear River Basin are governed by an interconnected framework of interstate compacts, federal legislation, court decrees, state water laws, and administrative institutions ([Read more on Bear River Compact and agreements](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/AdditionalInformation/BearRiverManagement.md#bear-river-basin-management)).

Bear Lake is a large natural freshwater lake on the Utah–Idaho border. It functions as a major storage reservoir, regulating flows in the Bear River for irrigation and hydropower generation. Bear Lake is also ecologically significant and supports native fish species and important recreational activities.

![](media/efb205682cd25cc0b07362c743f00818.png)

Figure 1: Bear Lake Storage Profile

### Bear Lake Potential Target Elevation (PTE)

The Bear Lake's level is managed based on its level at the end of the irrigation season. PacifiCorp determines the PTE, which represents the elevation of Bear Lake to be achieved on March 31st of each year. PTE ranges from 5916 ft - 5920 ft (high runoff – low runoff), and is adjusted to accommodate changing weather forecasts, downstream constraints, irrigation demands. and runoff variations

**PTE Aug – Dec:** PacifiCorp sets the PTE at the end of the irrigation season, which is updated monthly until March 31st of the following year. During the irrigation season, if lake elevation is greater than 5,918 and the irrigation demand for storage water is not enough to reach 5,918 by the end of the irrigation season, stored water may be released in late July/August.

**PTE Jan – Mar:** PaciCorp adjusts the PTE as per spring runoff forecasts and local inflows to the lake. Under normal conditions, PacifiCorp sets PTE at 5918 ft. If the elevation is 5918 ft or higher, releases are scheduled to maintain this level by March 31st. If it's below 5918 ft, water releases are delayed until forecasts indicate the lake can reach that elevation or if high snowpack requires flood control releases. During winter, if forecasts suggest below-average runoff, releases may be curtailed even if the elevation exceeds 5918 ft. Generally, water will not be released from Bear Lake when its elevation is below the PTE, except during emergencies or for flood control. This strategy balances long-term water supply needs during droughts with flood control requirements.

If the Bear Lake elevation is below the PTE from the end of the irrigation season to March 31st of the following year, releases are curtailed until the lake is predicted to reach the PTE. ([Read more on Bear Lake Operations](https://bearrivercommission.org/docs/Operations%20Agreement%20for%20PacifiCorps%20Bear%20River%20System.pdf))

## Model

To use, download the [Excel Model File](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/ModelFiles/BearRiverWaterBank.xlsx) (Click on ‘View raw’ to download the file), move to Google Sheets, and invite participants. There are accounts for different water users in the Bear River Basin. Over one or more years, participants consume, conserve or trade water in the accounts. Read on for directions to use.

### Model Setup

The water users in the model are 1) UT, WY users upstream Bear Lake 2) Lower ID users (Users below Bear Lake in ID) 3) Cache Valley, UT (Users in UT that are in Logan River – Little Bear River Watershed 4) Lower UT (Utah users excluding Cache Valley and Malad river users).

![](media/663b9cb5558c024e5f7c6fb90a1c0c0f.png)

Figure 2: Water Users as in the Immersive Model (Original Map: UT Division of Water Rights)

The model is set up for a seasonal time step as follows: October–March: Winter inflows, April–September: Summer flow and user decisions for water use, conservation, trade, and pricing (Figure 2).

![](media/5fe7677301e7a6c32655a0a4d03d3e4a.png)

Figure 3: Model setup and choices

### Model Assumptions

1.  All the users in the model represent agricultural uses.
2.  All the depletions occur in the summer season. Winter depletions are negligible.
3.  We use natural flow in the model. It is the flow that would have been observed if there were no depletions,

    *Natural Flow = Gaged Flow + depletions upstream.*

4.  The streamflow losses (evaporation, seepage, delivery losses) are assumed to be 10% for each reach for summer season and 3.33% (1/3rd of summer season) for winter season. Row 21-22 shows streamflow assumptions.
5.  The users make decisions to consume, conserve, or trade water based on historic water use, which is used in the model as a proxy to the water their water entitlement.
6.  Users can only bank water from the current year’s flow available. They cannot bank water that was conserved in their account in the previous years.

### Considerations for Users

1.  Users can only trade water with the bank.
2.  WY, Upstream Bear Lake Users: The user can sell water to the bank but cannot conserve water for next years as they cannot draw water from the lake in next years.
3.  Lower ID: The user can sell water to the bank, draw from and conserve water in the bear lake (bank) to be drawn in the subsequent years.
4.  Cache Valley: Cache Valley users draw water from the Little Bear River – Logan River system.
    -   The user cannot draw from or store water in the bear lake.
    -   The net water available from Cache Valley for the “Bank” is assumed to kept in reservoirs or ‘bank’ in Cache Valley and made available in winter season (Ref: [Cache Valley Water Bank](https://www.hydroshare.org/resource/31793214a3794afd8a33141fda0933bf/)).
5.  Lower UT
    -   The user can sell water to the bank, draw from and conserve water in the bear lake (bank) to be drawn in the subsequent years.
6.  For users downstream Bear Lake (Lower ID, Lower UT) : If the water use is less than the flow available, the water is delivered form the river flow.
    -   If the water use is more than the flow available, the exceeded flow is delivered from the Bear Lake.
7.  Bank
    -   The bank manages two storages in the model. One is Bear Lake and the other is in Cache Valley.
    -   The banked water is delivered to GSL in winter season when the diversions and losses are minimum.

### Additional Depletions Under Amended Bear River Compact

Different divisions in the Bear River Basin are allowed additional storage or depletion under certain conditions.

1.  The Upper and Central Divisions (Upstream Bear Lake users in our model) are allowed an additional storage of 74,000 ac-ft such that the depletions do not exceed 28,000 ac-ft in any year **IF** the Bear Lake level on Apr 1st is more than 5911 ft. In the model, this depletion amount is used. If users don’t deplete this amount, it is sold to the bank.
2.  ID is allowed first right to an additional 125,000 ac-ft of depletion if water is available.
    1.  In the model. If users have excess water available and they don’t deplete this amount, it can be conserved or sold to the bank.
3.  UT is allowed an additional 275,000 ac-ft of depletions if water is available.
    1.  In the model. If users have excess water available and they don’t deplete this amount, it can be conserved or sold to the bank.

### Requirements

1.  Session Guide: 1 person to set up in Google Sheets (see Setup below), invite participants, and organize play.
2.  Number of People: 2 or more (Session Guide may also participate).
3.  Time: 1 to 2 hours.
4.  Software: Session Guide has a Google Account.

## Directions to Guide a Model Session

The following section contains details on how to guide a model session.

### [Model Guide](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/Session%20Guide/SessionGuide.md#requirements)

## Pricing

There is no set pricing standard for water markets in Utah. Some benchmarks can be used to justify pricing ([Read about pricing strategies](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/AdditionalInformation/Pricing.md#pricing)).

## File Description

1.  Data \> Natural Flow: Data and R code to calculate Natural Flow for the model users.
2.  IRB: Approved documents for Institutional Review Board.
3.  Model Files \> [BearRiverWaterBank.xlsx](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/ModelFiles/BearRiverWaterBank.xlsx) : Model file for Bear River Water Bank
4.  Experiments: Older versions of the model using different scenarios.
