# Data Selection

A dataset containing data from the [2018 New Zealand Petroleum Exploration](https://www.nzpam.govt.nz/about/news/2018-petroleum-exploration-data-pack-released/) public data pack which has the [Crown Copyright Protection](https://www.nzpam.govt.nz/about/copyright/).

Currated data prepared, processed and cleaned is desired to be made available with the [Community Data License Agreement](https://cdla.dev/sharing-1-0/).

## Well List

1. Arakamu-1A (97.8 MiB)
2. Arakamu-2  (144.9 MiB)
3. Cardiff-3  (184.41 MiB)
4. Cardiff-3 ST1  (150.09 MiB)
5. Cheal-A10  (103.77 MiB)
6. Cheal-A11  (403.5 MiB)
7. Cheal-A12  (6055 MiB)
8. Cheal-B8   (109.77 MiB)
9  Cheal-C3   (91.72 MiB)
10. Cheal-C4  (90.4 MiB)
11. Cheal-E1  (47.76 MiB)
12. Cheal-E2  (84.39 MiB)
13. Cheal-E3  (65.59 MiB)
14. Cheal-E4  (95.01 MiB)
15. Cheal-E5  (100.59 MiB)
16. Cheal-G1  (131.6 MiB)
17. Cheal-G2  (140.62 MiB)
18. Cheal-G3  (122.49 MiB)

**Note:** The data is not available in the original format.
taranaki-basin.gz  (217.92 MiB)

## Data Identification

This is used to help perform the step of identifying the data to be loaded.

The table below lists the domain data type, OSDU group type, and file formats.

| Data Type                | Group Type  | Files  |
|--------------------------|-------------|--------|
| Basin                    | Master      | csv    |
| Field                    | Master      | csv    |
| Geopolitical Entity      | Master      | csv    |
| Organization             | Master      | csv    |
| Well                     | Master      | csv    |
| Wellbore                 | Master      | csv    |


__Well Details__
General Data is available for all wells in a Excel Worksheet with the following sheets.

- General Well Data
- Casing Shoe Depths
- Bit Size Depths
- Deviation Survey
- Formation Summary
- Electric Log Summary
- Wireline Run Details
- Wireline Pressure Tests
- Curve Tracking
- Reference Lists


__Folder/File Tree Pattern__
```
└───<WELL>
    ├───Deviation Data
        --Definitive Surveys.csv
    ├───LWD
    │   ├───LAS
            --<WELL>_LWD_REC_590-2900m.las
    │   └───Log Plots
            --PR<NUM>L1.pdf
            --PR<NUM>L1.pdf
    ├───Mudlog Data
    │   ├───ASCII
    │   │   ├───Annotations
                --<WELL> CommentsAscii.txt
                --<WELL> CommentsAscii.xls
                --<WELL> DecriptionsAscii.txt
                --<WELL> DecriptionsAscii.xls
    │   │   ├───Drilling_Data
                --<WELL>_Drill_Ascii_559-2900m.xlsx
    │   │   ├───Gas_Data
                -- <WELL>_Gas Ascii_559-2900m.xlsx
    │   │   └───Percent_Lith
                -- <WELL>_PercentLithAscii.xls
    │   └───Log Plots
            -- PR<NUM>L5.pdf
            -- PR<NUM>L6.pdf
            -- PR<NUM>L7.pdf
    ├───WCR
        -- PR<NUM>-14.txt
        -- PR<NUM>-2.pdf
        -- PR<NUM>-3.pdf
        -- PR<NUM>.pdf
    │   ├───Appendix_1
            -- <WELL>_Drilling_report.pdf
    │   ├───Appendix_10
            -- <WELL>_MDT Pressure Table.pdf
            -- TaranakiVentures_<WELL>_MDT_Report.pdf
            -- TVL_<WELL>_MDT.Pdf
    │   │   └───Appendix_10-MDT_LAS
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT10_2735.03m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT11_2734.02m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT12_2743.02m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT13_2742m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT14_2741m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT15_2739.97m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT16_2739m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT17_2743.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT18_2745m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT19_2752.98m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT2_2731.06m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT20_2755m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT21_2761.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT22_2765.98m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT23_2766.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT24_2767.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT25_2776m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT26_2776.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT27_2778m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT28_2779m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT29_2779.98m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT3_2729.98m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT30_2780.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT31_2782m_MRPS_MRH.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT32_2782.99m_MRPS_.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT4_2729.06m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT5_2728.04m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT6_2727.06m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT7_2738.02m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT8_2737.01m_MRPS_M.las
                -- TaranakiVentures_<WELL>_ConCu_R2Sta_MDT9_2736.03m_MRPS_M.las
    │   ├───Appendix_11
            -- <WELL>_DGR_231212-0501213.pdf
            -- <WELL>_Lithology_Worksheet.pdf
    │   ├───Appendix_12
            -- <WELL>_Sums_1.00e.xls
            -- <WELL>_v1.00.las
            -- PR<NUM>L9.pdf
    │   ├───Appendix_2
            -- <WELL>_Completion_Summary.pdf
    │   ├───Appendix_3
            -- Ensign_Contract_signed.pdf
    │   ├───Appendix_4
            -- <WELL> Definitive Surveys.csv
            -- <WELL> Definitive Surveys.ut
            -- <WELL> Plot.pdf
            -- <WELL> Survey Report.pdf
            -- Insite Slide-Rotate.pdf
            -- TVL_ <WELL>_directional_EOWR.pdf
    │   ├───Appendix_5
            -- <WELL>_Casing_report.pdf
    │   ├───Appendix_6
            -- <WELL>_cementing_report.pdf
    │   ├───Appendix_7
            -- Arakuma-1A_Mud_recap.pdf
    │   ├───Appendix_8
            -- <WELL>_BHI_EOWR.pdf
    │   └───Appendix_9
    │       ├───TVL_<WELL>_Daily Reports
                -- <WELL>_Morning_Report-01_BHI_20-Dec-2012.xls
                -- <WELL>_Morning_Report-02_BHI_21-Dec-2012.xls
                -- <WELL>_Morning_Report-03_BHI_22-Dec-2012.xls
                -- <WELL>_Morning_Report-04_BHI_23-Dec-2012.xls
                -- <WELL>_Morning_Report-05_BHI_24-Dec-2012.xls
                -- <WELL>_Morning_Report-06_BHI_25-Dec-2012.xls
                -- <WELL>_Morning_Report-07_BHI_26-Dec-2012.xls
                -- <WELL>_Morning_Report-08_BHI_27-Dec-2012.xls
                -- <WELL>_Morning_Report-09_BHI_28-Dec-2012.xls
                -- <WELL>_Morning_Report-10_BHI_29-Dec-2012.xls
                -- <WELL>_Morning_Report-11_BHI_30-Dec-2012.xls
                -- <WELL>_Morning_Report-12_BHI_31-Dec-2012.xls
                -- <WELL>_Morning_Report-13_BHI_01-Jan-2013.xls
                -- <WELL>_Morning_Report-14_BHI_02-Jan-2013.xls
                -- <WELL>_Morning_Report-15_BHI_03-Jan-2013.xls
                -- <WELL>_Morning_Report-16_BHI_04-Jan-2013.xls
                -- <WELL>_Morning_Report-17_BHI_05-Jan-2013.xls
                -- <WELL>_Morning_Report-18_BHI_06-Jan-2013.xls
                -- <WELL>_Morning_Report-19_BHI_07-Jan-2013.xls
    │       └───TVL_<WELL>_End of Well Report
                -- <WELL>_BHI_EOWR.pdf
    ├───Well Details Summary
        -- <WELL>_Details_Summary.xlsx
    ├───Wireline
    │   ├───LAS
            -- TVL_<WELL>_Main Pass_DSI.las
            -- TVL_<WELL>_Main Pass_PEX_HRLA.las
    │   └───Log Plots
            -- PR<NUM>L3.Pdf
            -- PR<NUM>L4.pdf
            -- PR<NUM>L8.Pdf
    └───Wireline Data-Merged
        -- <WELL>_Final.las
        -- <WELL>_Raw.las
        -- <WELL>-Composite.tif
```
