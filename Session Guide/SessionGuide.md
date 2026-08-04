# Immersive Model for a Water Bank for Bear River Basin- Session Guide

## Purpose

The purpose of this immersive online collaborative model is to help generate holistic strategies to get more water to the Great Salt Lake. The tool is useful for two purposes; as researchers we want to know A) Why do people decide to consume, conserve, bank, and deliver water within the immersive modeling environments? B) Which new insights do participants take away from a model session? C) How can an immersive online collaborative modeling approach help generate holistic strategies to address the multidisciplinary, multi-user, and conflict-laden problem to get more water to Great Salt Lake? Second, collaborators get an opportunity to immerse in and personify water user roles in Bear River Basin, while making decisions to consume, conserve, and bank water.

## Requirements

1.  Session Guide: 1 person to set up in Google Sheets (see Setup below), invite participants, and organize play.
2.  Number of People: 2 or more (Session Guide may also participate).
3.  Time: 1 to 2 hours.
4.  Software: Session Guide has a Google Account.

## Directions to Guide a Model Session

### Setup

1.  Download the file [BearRiverWaterBank.xlsx](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/ModelFiles/BearRiverWaterBank.xlsx) to your computer, (Click on ‘View raw’ to download the file).
2.  Move the Excel file to your Google Drive. Open as a Google Sheet.
3.  Open the *Versions* Worksheet to see updates.
4.  Duplicate the *Model* Worksheet to work on in this session and save a blank version for later use.
5.  Invite 1 or more other people to join the Google Sheet.
    1.  In the upper right of the Google Sheet, click the Share button.
    2.  Add emails and set permissions so players can access the Google Sheet. Or copy and share the sheet's URL.

### Use.

1.  On the Model worksheet, scroll down Column B. The instructions are given in rows with Blue text. For example, in **Rows 6-11**, participants select a User and enter the User's Strategy to participate in the banking. If fewer than 5 participants, participants select multiple parties.
-   Sample strategies
    -   Meet the water requirement for users.
        -   Preserve agricultural production. Buy if needed and sell if in excess.
        -   Save water to get to the Great Salt Lake.
        -   Try banking to understand how it might work for the Bear River Basin.
        -   Bank stores water in Bear Lake in summer, deliver to GSL in winter.

Start of the water year: October

2.  **Cell C13:** The user representing bank decides on a total budget for water bank assuming four years of operation.
3.  In **Cell C25**, select the Bear Lake starting level for start of the water year.
    -   The model calculates the beginning of water year Bear Lake Storage.

![](media/1a700101ceb839d8885b1e08113b18b9.png)

Figure 4: Historic elevation of Bear Lake at the beginning of water year(ft)

4.  In **Row 29,** select natural flow from the drop-down list. The list contains estimated historic natural flows for water years 2004 - 2001.
    -   The model also shows the year for the selected flow.

![](media/2498a1cc954da85849f25248cac99605.png)

Figure 5: Historic Natural Flows for Bear River Basin

5.  **Row 32 - 36:** The model shows the estimated winter natural flow (October – March) for the selected flow / year.
    -   The winter natural flow from upstream bear lake is added to the bear lake storage (assuming there are no diversions in winter season).

### Bear Lake Operations

6.  **Row 38 – 46** contains data for Bear Lake based on operation decision.
7.  **Row 40:** select the March 1st Potential Target Elevation (PTE) for the Bear Lake. This is the elevation to be achieved for Bear Lake on March 31st. Historically, PTE is kept at 5916 ft for expected high runoff years to accommodate spring runoff, 5920 ft for low runoff years, and 5918 ft in average year ([Read about Potential Target Elevation](https://github.com/HaadiaBaig/BearRiverWaterBank#bear-lake-potential-target-elevation-pte)).
    -   If there is excess water in the lake corresponding to the lake level, excess water is spilled.

### Summer Flows (April – September)

8.  **Row 48-52**, the model calculates the natural flow from April – September for each user.
9.  **Row 54-58**, the model calculates the historic depletions by each user.

    ![](media/5304f459a85b59b74dc7bdffa8982648.png)

Figure 6: Historic Depletions in Bear River Basin

### Participant Dashboard

10. The participant dashboard is divided into two sections; one is for the water bank and the other is for the users
11. **Cell C63** shows the total budget for the water bank.
    -   The model calculates the budget available for water transactions.
12. **Row 66**: Shows the remaining budget for each year.
13. **Row 68 – 155:** User dashboard for other water users.
14. Beginning of year account balance: It is the water conserved in the previous year, its ‘0’ for Year 1.

### ![](media/9add26ce49f6aa967c7103e93c43dc1d.png)

Figure 7: Participant Dashboard in the model file

15. Model shows the historic natural flow, non-agricultural depletions, streamflow losses, and upstream depletions for each user.
    -   For Cache Valley, UT the non ag depletions are considered to be 0 as mainly all of the urban water is sourced from underground sources.
16. Model allocates available natural flow to each user, calculated by the formula

    *Available water = Natural Flow – Streamflow losses – Non-Ag Depletions – Upstream consumptive use derived from flow (if any) – water sold to the bank by upstream users – water conserved in the bank by upstream users.*

17. Model shows if there is any additional depletion is allowed based on the Bear River Compact and / or other agreement(s).
18. Model shows the historic consumptive use for the year for the user.
19. In Year 2 – 4 User decides is they want to use any water from conserved storage from previous years.
20. Model calculates the total depletions allowed based on historic uses, compact provisions and conserved storage if used.

    *Total Depletions allowed = Volume of historic consumptive use + Additional depletions possible based on compact provisions + water used from previous year banked storage (starting in Year 2).*

21. The user decides the consumptive use of water that year based on ‘allowable depletions’ values.
    -   If there is enough water available in the river, the user gets water from the available water. For users downstream Bear Lake, the users can take additional water from the lake to meet their consumptive use without a charge.
    -   If the available water is less than the historic water use, then the users can either decide to take water from the lake or sell their entitlement from the lake to the bank.
    -   If the user decides to consume more than allowed depletions, they need to buy the water from bank.
22. Model shows the water available after consumptive use.
    -   The user decides how much water do they want to buy from or sell to the bank.
    -   If the user sells portion of their water available after consumptive use, the remaining water is added to the conserved water, that acts as the end of year account balance.
23. Model calculates the water to sell or buy based on the user’s decision of consumptive use.
24. User sets or negotiates the price of water (\$/acft) with the bank. [(See benchmarks for pricing.](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/AdditionalInformation/Pricing.md#pricing))
25. Model shows the net income or expense and the end of year account balance.

### Bank Summary

26. **Row 157-171**, the model calculates the net water traded, the compensation (\$), and the end of year cumulative storage for the bank in Bear Lake and in Cache Valley.
27. **Row 173-178:** Summary of the total budget, transaction costs each year and remaining budget for the water bank.

*Remaining Total Budget (\$) = Total transaction costs in previous years + Transaction costs in present year.*

### End of Summer

### Bear Lake Summary

28. Row **180-190:** The model summarizes the Bear Lake levels at the beginning of year and at the end of summer after all uses, trades and deliveries from Bear Lake have happened.

### Bank Delivery to the Great Salt Lake

29. **Row 194**: model calculates the available Bear Lake storage using the formula
    -   Available Bear Lake Storage = End of summer Lake storage – User accounts balance.
30. **Row 195-196:** Model calculates end of summer season bank storage.

### Delivering Water for GSL

31. **Row 197-198**: The bank decides how much water to deliver to the Great Salt Lake. It cannot deliver more than the end of year banked storage available.

### End of year summary

32. **Row 202-203:** End of year bank storage = Cumulative bank storage – Water delivered to the GSL
33. **Row 205-206**: Model calculates End of year Bear Lake storage and Levels.
    -   The end of year Bear Lake level becomes the beginning of year Bear Lake level for the next year.
34. **Row 211:** Move to next year

## Pricing

There is no set pricing standard for water markets in Utah. Some benchmarks can be used to justify pricing ([Read about pricing strategies](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/AdditionalInformation/Pricing.md#pricing)).

## File Description

1.  Data \> Natural Flow: Data and R code to calculate Natural Flow for the model users.
2.  IRB: Approved documents for Institutional Review Board.
3.  Model Files \> [BearRiverWaterBank.xlsx](https://github.com/HaadiaBaig/BearRiverWaterBank/blob/main/ModelFiles/BearRiverWaterBank.xlsx) : Model file for Bear River Water Bank
4.  Experiments: Older versions of the model using different scenarios.
