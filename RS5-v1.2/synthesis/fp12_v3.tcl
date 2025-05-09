# floorplan boundary
set ret [catch {floorplan -noResize -noSnapToGrid -b  0.0000000000 0.0000000000 556.0000000000 363.2800000000  0.0000000000 0.0000000000 556.0000000000 363.2800000000  8.0000000000 8.1700000000 548.0000000000 355.1100000000 }]
if {$ret != 0} {
  floorplan -noSnapToGrid -b  0.0000000000 0.0000000000 556.0000000000 363.2800000000  0.0000000000 0.0000000000 556.0000000000 363.2800000000  8.0000000000 8.1700000000 548.0000000000 355.1100000000 
}
# Standard Cell Row
deleteRow -all
set rdagFPlanRowSpaceType 2
set rdagFPlanRowSpacing 0
createRow -site CoreSiteDouble -area  8.0000000000 9.8800000000 548.0000000000 13.3000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 13.3000000000 548.0000000000 16.7200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 16.7200000000 548.0000000000 20.1400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 20.1400000000 548.0000000000 23.5600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 23.5600000000 548.0000000000 26.9800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 26.9800000000 548.0000000000 30.4000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 30.4000000000 548.0000000000 33.8200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 33.8200000000 548.0000000000 37.2400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 37.2400000000 548.0000000000 40.6600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 40.6600000000 548.0000000000 44.0800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 44.0800000000 548.0000000000 47.5000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 47.5000000000 548.0000000000 50.9200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 50.9200000000 548.0000000000 54.3400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 54.3400000000 548.0000000000 57.7600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 57.7600000000 548.0000000000 61.1800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 61.1800000000 548.0000000000 64.6000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 64.6000000000 548.0000000000 68.0200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 68.0200000000 548.0000000000 71.4400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 71.4400000000 548.0000000000 74.8600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 74.8600000000 548.0000000000 78.2800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 78.2800000000 548.0000000000 81.7000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 81.7000000000 548.0000000000 85.1200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 85.1200000000 548.0000000000 88.5400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 88.5400000000 548.0000000000 91.9600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 91.9600000000 548.0000000000 95.3800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 95.3800000000 548.0000000000 98.8000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 98.8000000000 548.0000000000 102.2200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 102.2200000000 548.0000000000 105.6400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 105.6400000000 548.0000000000 109.0600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 109.0600000000 548.0000000000 112.4800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 112.4800000000 548.0000000000 115.9000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 115.9000000000 548.0000000000 119.3200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 119.3200000000 548.0000000000 122.7400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 122.7400000000 548.0000000000 126.1600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 126.1600000000 548.0000000000 129.5800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 129.5800000000 548.0000000000 133.0000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 133.0000000000 548.0000000000 136.4200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 136.4200000000 548.0000000000 139.8400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 139.8400000000 548.0000000000 143.2600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 143.2600000000 548.0000000000 146.6800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 146.6800000000 548.0000000000 150.1000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 150.1000000000 548.0000000000 153.5200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 153.5200000000 548.0000000000 156.9400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 156.9400000000 548.0000000000 160.3600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 160.3600000000 548.0000000000 163.7800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 163.7800000000 548.0000000000 167.2000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 167.2000000000 548.0000000000 170.6200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 170.6200000000 548.0000000000 174.0400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 174.0400000000 548.0000000000 177.4600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 177.4600000000 548.0000000000 180.8800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 180.8800000000 548.0000000000 184.3000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 184.3000000000 548.0000000000 187.7200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 187.7200000000 548.0000000000 191.1400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 191.1400000000 548.0000000000 194.5600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 194.5600000000 548.0000000000 197.9800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 197.9800000000 548.0000000000 201.4000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 201.4000000000 548.0000000000 204.8200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 204.8200000000 548.0000000000 208.2400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 208.2400000000 548.0000000000 211.6600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 211.6600000000 548.0000000000 215.0800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 215.0800000000 548.0000000000 218.5000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 218.5000000000 548.0000000000 221.9200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 221.9200000000 548.0000000000 225.3400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 225.3400000000 548.0000000000 228.7600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 228.7600000000 548.0000000000 232.1800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 232.1800000000 548.0000000000 235.6000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 235.6000000000 548.0000000000 239.0200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 239.0200000000 548.0000000000 242.4400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 242.4400000000 548.0000000000 245.8600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 245.8600000000 548.0000000000 249.2800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 249.2800000000 548.0000000000 252.7000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 252.7000000000 548.0000000000 256.1200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 256.1200000000 548.0000000000 259.5400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 259.5400000000 548.0000000000 262.9600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 262.9600000000 548.0000000000 266.3800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 266.3800000000 548.0000000000 269.8000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 269.8000000000 548.0000000000 273.2200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 273.2200000000 548.0000000000 276.6400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 276.6400000000 548.0000000000 280.0600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 280.0600000000 548.0000000000 283.4800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 283.4800000000 548.0000000000 286.9000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 286.9000000000 548.0000000000 290.3200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 290.3200000000 548.0000000000 293.7400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 293.7400000000 548.0000000000 297.1600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 297.1600000000 548.0000000000 300.5800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 300.5800000000 548.0000000000 304.0000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 304.0000000000 548.0000000000 307.4200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 307.4200000000 548.0000000000 310.8400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 310.8400000000 548.0000000000 314.2600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 314.2600000000 548.0000000000 317.6800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 317.6800000000 548.0000000000 321.1000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 321.1000000000 548.0000000000 324.5200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 324.5200000000 548.0000000000 327.9400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 327.9400000000 548.0000000000 331.3600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 331.3600000000 548.0000000000 334.7800000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 334.7800000000 548.0000000000 338.2000000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 338.2000000000 548.0000000000 341.6200000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 341.6200000000 548.0000000000 345.0400000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 345.0400000000 548.0000000000 348.4600000000  -noCheck
createRow -site CoreSiteDouble -area  8.0000000000 348.4600000000 548.0000000000 351.8800000000  -noCheck
createRow -site CoreSite -area  8.0000000000 8.1700000000 548.0000000000 9.8800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 9.8800000000 548.0000000000 11.5900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 11.5900000000 548.0000000000 13.3000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 13.3000000000 548.0000000000 15.0100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 15.0100000000 548.0000000000 16.7200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 16.7200000000 548.0000000000 18.4300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 18.4300000000 548.0000000000 20.1400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 20.1400000000 548.0000000000 21.8500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 21.8500000000 548.0000000000 23.5600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 23.5600000000 548.0000000000 25.2700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 25.2700000000 548.0000000000 26.9800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 26.9800000000 548.0000000000 28.6900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 28.6900000000 548.0000000000 30.4000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 30.4000000000 548.0000000000 32.1100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 32.1100000000 548.0000000000 33.8200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 33.8200000000 548.0000000000 35.5300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 35.5300000000 548.0000000000 37.2400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 37.2400000000 548.0000000000 38.9500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 38.9500000000 548.0000000000 40.6600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 40.6600000000 548.0000000000 42.3700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 42.3700000000 548.0000000000 44.0800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 44.0800000000 548.0000000000 45.7900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 45.7900000000 548.0000000000 47.5000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 47.5000000000 548.0000000000 49.2100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 49.2100000000 548.0000000000 50.9200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 50.9200000000 548.0000000000 52.6300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 52.6300000000 548.0000000000 54.3400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 54.3400000000 548.0000000000 56.0500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 56.0500000000 548.0000000000 57.7600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 57.7600000000 548.0000000000 59.4700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 59.4700000000 548.0000000000 61.1800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 61.1800000000 548.0000000000 62.8900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 62.8900000000 548.0000000000 64.6000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 64.6000000000 548.0000000000 66.3100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 66.3100000000 548.0000000000 68.0200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 68.0200000000 548.0000000000 69.7300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 69.7300000000 548.0000000000 71.4400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 71.4400000000 548.0000000000 73.1500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 73.1500000000 548.0000000000 74.8600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 74.8600000000 548.0000000000 76.5700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 76.5700000000 548.0000000000 78.2800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 78.2800000000 548.0000000000 79.9900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 79.9900000000 548.0000000000 81.7000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 81.7000000000 548.0000000000 83.4100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 83.4100000000 548.0000000000 85.1200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 85.1200000000 548.0000000000 86.8300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 86.8300000000 548.0000000000 88.5400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 88.5400000000 548.0000000000 90.2500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 90.2500000000 548.0000000000 91.9600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 91.9600000000 548.0000000000 93.6700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 93.6700000000 548.0000000000 95.3800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 95.3800000000 548.0000000000 97.0900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 97.0900000000 548.0000000000 98.8000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 98.8000000000 548.0000000000 100.5100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 100.5100000000 548.0000000000 102.2200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 102.2200000000 548.0000000000 103.9300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 103.9300000000 548.0000000000 105.6400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 105.6400000000 548.0000000000 107.3500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 107.3500000000 548.0000000000 109.0600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 109.0600000000 548.0000000000 110.7700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 110.7700000000 548.0000000000 112.4800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 112.4800000000 548.0000000000 114.1900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 114.1900000000 548.0000000000 115.9000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 115.9000000000 548.0000000000 117.6100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 117.6100000000 548.0000000000 119.3200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 119.3200000000 548.0000000000 121.0300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 121.0300000000 548.0000000000 122.7400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 122.7400000000 548.0000000000 124.4500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 124.4500000000 548.0000000000 126.1600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 126.1600000000 548.0000000000 127.8700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 127.8700000000 548.0000000000 129.5800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 129.5800000000 548.0000000000 131.2900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 131.2900000000 548.0000000000 133.0000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 133.0000000000 548.0000000000 134.7100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 134.7100000000 548.0000000000 136.4200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 136.4200000000 548.0000000000 138.1300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 138.1300000000 548.0000000000 139.8400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 139.8400000000 548.0000000000 141.5500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 141.5500000000 548.0000000000 143.2600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 143.2600000000 548.0000000000 144.9700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 144.9700000000 548.0000000000 146.6800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 146.6800000000 548.0000000000 148.3900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 148.3900000000 548.0000000000 150.1000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 150.1000000000 548.0000000000 151.8100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 151.8100000000 548.0000000000 153.5200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 153.5200000000 548.0000000000 155.2300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 155.2300000000 548.0000000000 156.9400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 156.9400000000 548.0000000000 158.6500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 158.6500000000 548.0000000000 160.3600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 160.3600000000 548.0000000000 162.0700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 162.0700000000 548.0000000000 163.7800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 163.7800000000 548.0000000000 165.4900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 165.4900000000 548.0000000000 167.2000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 167.2000000000 548.0000000000 168.9100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 168.9100000000 548.0000000000 170.6200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 170.6200000000 548.0000000000 172.3300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 172.3300000000 548.0000000000 174.0400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 174.0400000000 548.0000000000 175.7500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 175.7500000000 548.0000000000 177.4600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 177.4600000000 548.0000000000 179.1700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 179.1700000000 548.0000000000 180.8800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 180.8800000000 548.0000000000 182.5900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 182.5900000000 548.0000000000 184.3000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 184.3000000000 548.0000000000 186.0100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 186.0100000000 548.0000000000 187.7200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 187.7200000000 548.0000000000 189.4300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 189.4300000000 548.0000000000 191.1400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 191.1400000000 548.0000000000 192.8500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 192.8500000000 548.0000000000 194.5600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 194.5600000000 548.0000000000 196.2700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 196.2700000000 548.0000000000 197.9800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 197.9800000000 548.0000000000 199.6900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 199.6900000000 548.0000000000 201.4000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 201.4000000000 548.0000000000 203.1100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 203.1100000000 548.0000000000 204.8200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 204.8200000000 548.0000000000 206.5300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 206.5300000000 548.0000000000 208.2400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 208.2400000000 548.0000000000 209.9500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 209.9500000000 548.0000000000 211.6600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 211.6600000000 548.0000000000 213.3700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 213.3700000000 548.0000000000 215.0800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 215.0800000000 548.0000000000 216.7900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 216.7900000000 548.0000000000 218.5000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 218.5000000000 548.0000000000 220.2100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 220.2100000000 548.0000000000 221.9200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 221.9200000000 548.0000000000 223.6300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 223.6300000000 548.0000000000 225.3400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 225.3400000000 548.0000000000 227.0500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 227.0500000000 548.0000000000 228.7600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 228.7600000000 548.0000000000 230.4700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 230.4700000000 548.0000000000 232.1800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 232.1800000000 548.0000000000 233.8900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 233.8900000000 548.0000000000 235.6000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 235.6000000000 548.0000000000 237.3100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 237.3100000000 548.0000000000 239.0200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 239.0200000000 548.0000000000 240.7300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 240.7300000000 548.0000000000 242.4400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 242.4400000000 548.0000000000 244.1500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 244.1500000000 548.0000000000 245.8600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 245.8600000000 548.0000000000 247.5700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 247.5700000000 548.0000000000 249.2800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 249.2800000000 548.0000000000 250.9900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 250.9900000000 548.0000000000 252.7000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 252.7000000000 548.0000000000 254.4100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 254.4100000000 548.0000000000 256.1200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 256.1200000000 548.0000000000 257.8300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 257.8300000000 548.0000000000 259.5400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 259.5400000000 548.0000000000 261.2500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 261.2500000000 548.0000000000 262.9600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 262.9600000000 548.0000000000 264.6700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 264.6700000000 548.0000000000 266.3800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 266.3800000000 548.0000000000 268.0900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 268.0900000000 548.0000000000 269.8000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 269.8000000000 548.0000000000 271.5100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 271.5100000000 548.0000000000 273.2200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 273.2200000000 548.0000000000 274.9300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 274.9300000000 548.0000000000 276.6400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 276.6400000000 548.0000000000 278.3500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 278.3500000000 548.0000000000 280.0600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 280.0600000000 548.0000000000 281.7700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 281.7700000000 548.0000000000 283.4800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 283.4800000000 548.0000000000 285.1900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 285.1900000000 548.0000000000 286.9000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 286.9000000000 548.0000000000 288.6100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 288.6100000000 548.0000000000 290.3200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 290.3200000000 548.0000000000 292.0300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 292.0300000000 548.0000000000 293.7400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 293.7400000000 548.0000000000 295.4500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 295.4500000000 548.0000000000 297.1600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 297.1600000000 548.0000000000 298.8700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 298.8700000000 548.0000000000 300.5800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 300.5800000000 548.0000000000 302.2900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 302.2900000000 548.0000000000 304.0000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 304.0000000000 548.0000000000 305.7100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 305.7100000000 548.0000000000 307.4200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 307.4200000000 548.0000000000 309.1300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 309.1300000000 548.0000000000 310.8400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 310.8400000000 548.0000000000 312.5500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 312.5500000000 548.0000000000 314.2600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 314.2600000000 548.0000000000 315.9700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 315.9700000000 548.0000000000 317.6800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 317.6800000000 548.0000000000 319.3900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 319.3900000000 548.0000000000 321.1000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 321.1000000000 548.0000000000 322.8100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 322.8100000000 548.0000000000 324.5200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 324.5200000000 548.0000000000 326.2300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 326.2300000000 548.0000000000 327.9400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 327.9400000000 548.0000000000 329.6500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 329.6500000000 548.0000000000 331.3600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 331.3600000000 548.0000000000 333.0700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 333.0700000000 548.0000000000 334.7800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 334.7800000000 548.0000000000 336.4900000000  -noCheck
createRow -site CoreSite -area  8.0000000000 336.4900000000 548.0000000000 338.2000000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 338.2000000000 548.0000000000 339.9100000000  -noCheck
createRow -site CoreSite -area  8.0000000000 339.9100000000 548.0000000000 341.6200000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 341.6200000000 548.0000000000 343.3300000000  -noCheck
createRow -site CoreSite -area  8.0000000000 343.3300000000 548.0000000000 345.0400000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 345.0400000000 548.0000000000 346.7500000000  -noCheck
createRow -site CoreSite -area  8.0000000000 346.7500000000 548.0000000000 348.4600000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 348.4600000000 548.0000000000 350.1700000000  -noCheck
createRow -site CoreSite -area  8.0000000000 350.1700000000 548.0000000000 351.8800000000  -flip1st -noCheck
createRow -site CoreSite -area  8.0000000000 351.8800000000 548.0000000000 353.5900000000  -noCheck
fpSetDefaultTechSite -site CoreSite
# Placement obstruction
if {[get_db place_blockages] != ""} {
  deletePlaceBlockage -all
}
# Routing obstruction
set rblkgs [dbGet -e top.fplan.rblkgs {.attr != "core_eol" && .attr != "boundary_eol" && .attr != "block_eol"}]
if { $rblkgs != "" } { 
    dbSet $rblkgs.isFixed 0
}
deleteRouteBlk -all
setFPlanMode -cutOffRouteBlockageOutsideDie false
setFPlanMode -cutOffRouteBlockageOutsideDie true
# Pin blockage
deletePinBlkg -all
# Instance group
# Hierarchical Instance's constraint(Fence, Region or Guide)
unplaceGuide FFT_CORE
createRegion  FFT_CORE 11.9800000000 12.1750000000 227.3800000000 350.1600000000
unplaceGuide RAMFFT
createRegion  RAMFFT 232.5550000000 13.5950000000 387.7550000000 278.8750000000
unplaceGuide execute1
createRegion  execute1 455.2300000000 14.0700000000 538.8300000000 242.2050000000
unplaceGuide fetch1
createRegion  fetch1 393.5550000000 14.9100000000 448.4150000000 123.6400000000
unplaceGuide CSRBank1
createRegion  CSRBank1 270.4900000000 283.0600000000 386.4900000000 348.5550000000
unplaceGuide retire1
createRegion  retire1 231.6350000000 282.8700000000 267.6350000000 344.6050000000
unplaceGuide RegFileFF_blk.regbankff
createRegion  RegFileFF_blk.regbankff 394.2150000000 245.5850000000 537.6150000000 350.9250000000
unplaceGuide decoder1
createRegion  decoder1 393.8300000000 129.8150000000 451.4300000000 240.9650000000
# Pin
setPinAssignMode -pinEditInBatch true
editPin -pin clk -layer Metal2 -assign {0.0000000000 222.1900000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin reset_n -layer Metal1 -assign {544.5100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin sys_reset_i -layer Metal1 -assign {555.7900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin stall -layer Metal1 -assign {555.3000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin instruction_i[31] -layer Metal1 -assign {263.3700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[30] -layer Metal1 -assign {267.6950000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[29] -layer Metal1 -assign {272.0000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[28] -layer Metal1 -assign {276.3400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[27] -layer Metal1 -assign {280.6400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[26] -layer Metal1 -assign {284.9750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[25] -layer Metal1 -assign {289.3050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[24] -layer Metal1 -assign {293.6200000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[23] -layer Metal1 -assign {297.9450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[22] -layer Metal1 -assign {302.2650000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[21] -layer Metal1 -assign {306.5900000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[20] -layer Metal1 -assign {310.9050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[19] -layer Metal1 -assign {315.2300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[18] -layer Metal1 -assign {319.5350000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[17] -layer Metal1 -assign {323.8700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[16] -layer Metal1 -assign {328.1750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[15] -layer Metal1 -assign {332.5100000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[14] -layer Metal1 -assign {336.8350000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[13] -layer Metal1 -assign {341.1500000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[12] -layer Metal1 -assign {345.4700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[11] -layer Metal1 -assign {349.7950000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[10] -layer Metal1 -assign {354.1200000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[9] -layer Metal1 -assign {358.4300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[8] -layer Metal1 -assign {362.7600000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[7] -layer Metal1 -assign {367.0700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[6] -layer Metal1 -assign {371.4000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[5] -layer Metal1 -assign {375.7100000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[4] -layer Metal1 -assign {380.0450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[3] -layer Metal1 -assign {384.3500000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[2] -layer Metal1 -assign {388.6850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[1] -layer Metal1 -assign {393.0050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_i[0] -layer Metal1 -assign {397.3250000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin mem_data_i[31] -layer Metal1 -assign {167.1000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[30] -layer Metal1 -assign {161.7000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[29] -layer Metal1 -assign {156.2950000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[28] -layer Metal1 -assign {150.8950000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[27] -layer Metal1 -assign {145.4900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[26] -layer Metal1 -assign {140.2200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[25] -layer Metal1 -assign {134.8300000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[24] -layer Metal1 -assign {129.4150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[23] -layer Metal1 -assign {124.0250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[22] -layer Metal1 -assign {118.6200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[21] -layer Metal1 -assign {113.2150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[20] -layer Metal1 -assign {107.8150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[19] -layer Metal1 -assign {102.4100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[18] -layer Metal1 -assign {97.0200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[17] -layer Metal1 -assign {91.6050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[16] -layer Metal1 -assign {86.2150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[15] -layer Metal1 -assign {80.8150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[14] -layer Metal1 -assign {75.4150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[13] -layer Metal1 -assign {70.1450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[12] -layer Metal1 -assign {64.7450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[11] -layer Metal1 -assign {59.3350000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[10] -layer Metal1 -assign {53.9450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[9] -layer Metal1 -assign {48.5450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[8] -layer Metal1 -assign {43.1400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[7] -layer Metal1 -assign {37.7400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[6] -layer Metal1 -assign {32.3400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[5] -layer Metal1 -assign {26.9400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[4] -layer Metal1 -assign {21.5250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[3] -layer Metal1 -assign {16.1300000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[2] -layer Metal1 -assign {10.7150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[1] -layer Metal1 -assign {5.3250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_data_i[0] -layer Metal1 -assign {0.3350000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[63] -layer Metal1 -assign {539.1100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[62] -layer Metal1 -assign {533.7100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[61] -layer Metal1 -assign {528.3050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[60] -layer Metal1 -assign {522.9050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[59] -layer Metal1 -assign {517.4850000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[58] -layer Metal1 -assign {512.1000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[57] -layer Metal1 -assign {506.7000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[56] -layer Metal1 -assign {501.3000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[55] -layer Metal1 -assign {495.9000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[54] -layer Metal1 -assign {490.6350000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[53] -layer Metal1 -assign {485.2200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[52] -layer Metal1 -assign {479.8250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[51] -layer Metal1 -assign {474.4150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[50] -layer Metal1 -assign {469.0300000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[49] -layer Metal1 -assign {463.6300000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[48] -layer Metal1 -assign {458.2250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[47] -layer Metal1 -assign {452.8250000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[46] -layer Metal1 -assign {447.4150000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[45] -layer Metal1 -assign {442.0200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[44] -layer Metal1 -assign {436.6100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[43] -layer Metal1 -assign {431.2200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[42] -layer Metal1 -assign {425.8200000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[41] -layer Metal1 -assign {420.5550000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[40] -layer Metal1 -assign {415.1450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[39] -layer Metal1 -assign {409.7450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[38] -layer Metal1 -assign {404.3350000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[37] -layer Metal1 -assign {398.9450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[36] -layer Metal1 -assign {393.5500000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[35] -layer Metal1 -assign {388.1450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[34] -layer Metal1 -assign {382.7450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[33] -layer Metal1 -assign {377.3400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[32] -layer Metal1 -assign {371.9400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[31] -layer Metal1 -assign {366.5300000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[30] -layer Metal1 -assign {361.1400000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[29] -layer Metal1 -assign {355.7350000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[28] -layer Metal1 -assign {350.4750000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[27] -layer Metal1 -assign {345.0700000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[26] -layer Metal1 -assign {339.6700000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[25] -layer Metal1 -assign {334.2650000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[24] -layer Metal1 -assign {328.8650000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[23] -layer Metal1 -assign {323.4500000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[22] -layer Metal1 -assign {318.0600000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[21] -layer Metal1 -assign {312.6600000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[20] -layer Metal1 -assign {307.2550000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[19] -layer Metal1 -assign {301.8550000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[18] -layer Metal1 -assign {296.4550000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[17] -layer Metal1 -assign {291.0600000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[16] -layer Metal1 -assign {285.6450000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[15] -layer Metal1 -assign {280.3750000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[14] -layer Metal1 -assign {274.9900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[13] -layer Metal1 -assign {269.5900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[12] -layer Metal1 -assign {264.1850000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[11] -layer Metal1 -assign {258.7850000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[10] -layer Metal1 -assign {253.3700000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[9] -layer Metal1 -assign {247.9850000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[8] -layer Metal1 -assign {242.5700000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[7] -layer Metal1 -assign {237.1800000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[6] -layer Metal1 -assign {231.7800000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[5] -layer Metal1 -assign {226.3750000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[4] -layer Metal1 -assign {220.9750000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[3] -layer Metal1 -assign {215.5600000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[2] -layer Metal1 -assign {210.2900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[1] -layer Metal1 -assign {204.9050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mtime_i[0] -layer Metal1 -assign {199.5100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin irq_i[31] -layer Metal1 -assign {125.1050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[30] -layer Metal1 -assign {129.4150000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[29] -layer Metal1 -assign {133.7450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[28] -layer Metal1 -assign {138.0700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[27] -layer Metal1 -assign {142.3850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[26] -layer Metal1 -assign {146.7100000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[25] -layer Metal1 -assign {151.0300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[24] -layer Metal1 -assign {155.3500000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[23] -layer Metal1 -assign {159.6700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[22] -layer Metal1 -assign {163.9950000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[21] -layer Metal1 -assign {168.3000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[20] -layer Metal1 -assign {172.6350000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[19] -layer Metal1 -assign {176.9450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[18] -layer Metal1 -assign {181.2750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[17] -layer Metal1 -assign {185.6000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[16] -layer Metal1 -assign {189.9150000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[15] -layer Metal1 -assign {194.2400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[14] -layer Metal1 -assign {198.5600000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[13] -layer Metal1 -assign {202.8850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[12] -layer Metal1 -assign {207.2000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[11] -layer Metal1 -assign {211.5300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[10] -layer Metal1 -assign {215.8350000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[9] -layer Metal1 -assign {220.1650000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[8] -layer Metal1 -assign {224.4800000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[7] -layer Metal1 -assign {228.8100000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[6] -layer Metal1 -assign {233.1150000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[5] -layer Metal1 -assign {237.4500000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[4] -layer Metal1 -assign {241.7750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[3] -layer Metal1 -assign {246.0900000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[2] -layer Metal1 -assign {250.4150000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[1] -layer Metal1 -assign {254.7300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin irq_i[0] -layer Metal1 -assign {259.0550000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[31] -layer Metal1 -assign {453.0950000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[30] -layer Metal1 -assign {456.7450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[29] -layer Metal1 -assign {460.3850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[28] -layer Metal1 -assign {464.0300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[27] -layer Metal1 -assign {467.6750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[26] -layer Metal1 -assign {471.3200000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[25] -layer Metal1 -assign {474.9550000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[24] -layer Metal1 -assign {478.6200000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[23] -layer Metal1 -assign {482.2650000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[22] -layer Metal1 -assign {485.9050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[21] -layer Metal1 -assign {489.5550000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[20] -layer Metal1 -assign {493.2000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[19] -layer Metal1 -assign {496.8400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[18] -layer Metal1 -assign {500.4850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[17] -layer Metal1 -assign {504.1250000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[16] -layer Metal1 -assign {507.7700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[15] -layer Metal1 -assign {511.4300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[14] -layer Metal1 -assign {515.0750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[13] -layer Metal1 -assign {518.7200000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[12] -layer Metal1 -assign {522.3650000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[11] -layer Metal1 -assign {526.0100000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[10] -layer Metal1 -assign {529.6550000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[9] -layer Metal1 -assign {533.3000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[8] -layer Metal1 -assign {536.9350000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[7] -layer Metal1 -assign {540.5800000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[6] -layer Metal1 -assign {544.2400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[5] -layer Metal1 -assign {547.8800000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[4] -layer Metal1 -assign {551.5300000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[3] -layer Metal1 -assign {555.1750000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[2] -layer Metal1 -assign {555.7900000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[1] -layer Metal1 -assign {556.0000000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin instruction_address_o[0] -layer Metal1 -assign {556.0000000000 0.2000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_operation_enable_o -layer Metal1 -assign {172.4900000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_write_enable_o[3] -layer Metal1 -assign {194.1050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_write_enable_o[2] -layer Metal1 -assign {188.7050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_write_enable_o[1] -layer Metal1 -assign {183.3000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_write_enable_o[0] -layer Metal1 -assign {177.9050000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin mem_address_o[31] -layer Metal1 -assign {556.0000000000 147.2700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[30] -layer Metal1 -assign {556.0000000000 151.7750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[29] -layer Metal1 -assign {556.0000000000 156.4700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[28] -layer Metal1 -assign {556.0000000000 161.1400000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[27] -layer Metal1 -assign {556.0000000000 165.6700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[26] -layer Metal1 -assign {556.0000000000 170.1750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[25] -layer Metal1 -assign {556.0000000000 174.8700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[24] -layer Metal1 -assign {556.0000000000 179.3750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[23] -layer Metal1 -assign {556.0000000000 184.0700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[22] -layer Metal1 -assign {556.0000000000 188.5750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[21] -layer Metal1 -assign {556.0000000000 193.2700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[20] -layer Metal1 -assign {556.0000000000 197.7750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[19] -layer Metal1 -assign {556.0000000000 202.3050000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[18] -layer Metal1 -assign {556.0000000000 206.9750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[17] -layer Metal1 -assign {556.0000000000 211.6700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[16] -layer Metal1 -assign {556.0000000000 216.1750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[15] -layer Metal1 -assign {556.0000000000 220.6900000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[14] -layer Metal1 -assign {556.0000000000 225.3750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[13] -layer Metal1 -assign {556.0000000000 229.8800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[12] -layer Metal1 -assign {556.0000000000 234.5750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[11] -layer Metal1 -assign {556.0000000000 239.2550000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[10] -layer Metal1 -assign {556.0000000000 243.7750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[9] -layer Metal1 -assign {556.0000000000 248.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[8] -layer Metal1 -assign {556.0000000000 252.9750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[7] -layer Metal1 -assign {556.0000000000 257.4800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[6] -layer Metal1 -assign {556.0000000000 262.1750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[5] -layer Metal1 -assign {556.0000000000 266.8450000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[4] -layer Metal1 -assign {556.0000000000 271.3750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[3] -layer Metal1 -assign {556.0000000000 275.8800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[2] -layer Metal1 -assign {556.0000000000 280.5750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[1] -layer Metal1 -assign {556.0000000000 285.0800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_address_o[0] -layer Metal1 -assign {556.0000000000 289.7750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[31] -layer Metal1 -assign {556.0000000000 0.6000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[30] -layer Metal1 -assign {556.0000000000 4.7650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[29] -layer Metal1 -assign {556.0000000000 9.2700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[28] -layer Metal1 -assign {556.0000000000 13.8000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[27] -layer Metal1 -assign {556.0000000000 18.4700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[26] -layer Metal1 -assign {556.0000000000 23.1650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[25] -layer Metal1 -assign {556.0000000000 27.6700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[24] -layer Metal1 -assign {556.0000000000 32.3650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[23] -layer Metal1 -assign {556.0000000000 36.8700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[22] -layer Metal1 -assign {556.0000000000 41.4000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[21] -layer Metal1 -assign {556.0000000000 46.0700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[20] -layer Metal1 -assign {556.0000000000 50.7650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[19] -layer Metal1 -assign {556.0000000000 55.2700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[18] -layer Metal1 -assign {556.0000000000 59.9650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[17] -layer Metal1 -assign {556.0000000000 64.4700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[16] -layer Metal1 -assign {556.0000000000 69.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[15] -layer Metal1 -assign {556.0000000000 73.6700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[14] -layer Metal1 -assign {556.0000000000 78.3650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[13] -layer Metal1 -assign {556.0000000000 82.8700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[12] -layer Metal1 -assign {556.0000000000 87.4000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[11] -layer Metal1 -assign {556.0000000000 92.0700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[10] -layer Metal1 -assign {556.0000000000 96.5900000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[9] -layer Metal1 -assign {556.0000000000 101.2700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[8] -layer Metal1 -assign {556.0000000000 105.9650000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[7] -layer Metal1 -assign {556.0000000000 110.4700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[6] -layer Metal1 -assign {556.0000000000 114.9750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[5] -layer Metal1 -assign {556.0000000000 119.6700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[4] -layer Metal1 -assign {556.0000000000 124.1750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[3] -layer Metal1 -assign {556.0000000000 128.8700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[2] -layer Metal1 -assign {556.0000000000 133.5450000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[1] -layer Metal1 -assign {556.0000000000 138.0700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin mem_data_o[0] -layer Metal1 -assign {556.0000000000 142.5750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin interrupt_ack_o -layer Metal2 -assign {0.2100000000 0.0000000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side S -snap MGRID 
editPin -pin rst -layer Metal1 -assign {549.9100000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin en_i -layer Metal2 -assign {0.0000000000 363.0200000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin we_i -layer Metal1 -assign {556.0000000000 363.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side N -snap MGRID 
editPin -pin addr_i[15] -layer Metal2 -assign {0.0000000000 217.8500000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[14] -layer Metal2 -assign {0.0000000000 213.6750000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[13] -layer Metal2 -assign {0.0000000000 209.3100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[12] -layer Metal2 -assign {0.0000000000 204.9700000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[11] -layer Metal2 -assign {0.0000000000 200.7950000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[10] -layer Metal2 -assign {0.0000000000 196.4300000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[9] -layer Metal2 -assign {0.0000000000 192.2550000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[8] -layer Metal2 -assign {0.0000000000 187.9150000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[7] -layer Metal2 -assign {0.0000000000 183.7350000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[6] -layer Metal2 -assign {0.0000000000 179.3750000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[5] -layer Metal2 -assign {0.0000000000 175.2000000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[4] -layer Metal2 -assign {0.0000000000 170.8600000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[3] -layer Metal2 -assign {0.0000000000 166.6600000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[2] -layer Metal2 -assign {0.0000000000 162.3200000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[1] -layer Metal2 -assign {0.0000000000 158.1450000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin addr_i[0] -layer Metal2 -assign {0.0000000000 153.7800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[31] -layer Metal2 -assign {0.0000000000 358.8450000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[30] -layer Metal2 -assign {0.0000000000 354.5050000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[29] -layer Metal2 -assign {0.0000000000 350.3050000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[28] -layer Metal2 -assign {0.0000000000 345.9650000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[27] -layer Metal2 -assign {0.0000000000 341.7900000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[26] -layer Metal2 -assign {0.0000000000 337.4300000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[25] -layer Metal2 -assign {0.0000000000 333.2500000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[24] -layer Metal2 -assign {0.0000000000 328.9100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[23] -layer Metal2 -assign {0.0000000000 324.7350000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[22] -layer Metal2 -assign {0.0000000000 320.3700000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[21] -layer Metal2 -assign {0.0000000000 316.1950000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[20] -layer Metal2 -assign {0.0000000000 311.8550000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[19] -layer Metal2 -assign {0.0000000000 307.4900000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[18] -layer Metal2 -assign {0.0000000000 303.3150000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[17] -layer Metal2 -assign {0.0000000000 298.9750000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[16] -layer Metal2 -assign {0.0000000000 294.7800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[15] -layer Metal2 -assign {0.0000000000 290.4350000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[14] -layer Metal2 -assign {0.0000000000 286.2600000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[13] -layer Metal2 -assign {0.0000000000 281.9100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[12] -layer Metal2 -assign {0.0000000000 277.7200000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[11] -layer Metal2 -assign {0.0000000000 273.3800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[10] -layer Metal2 -assign {0.0000000000 269.2050000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[9] -layer Metal2 -assign {0.0000000000 264.8400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[8] -layer Metal2 -assign {0.0000000000 260.6650000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[7] -layer Metal2 -assign {0.0000000000 256.3250000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[6] -layer Metal2 -assign {0.0000000000 251.9600000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[5] -layer Metal2 -assign {0.0000000000 247.7850000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[4] -layer Metal2 -assign {0.0000000000 243.4450000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[3] -layer Metal2 -assign {0.0000000000 239.2550000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[2] -layer Metal2 -assign {0.0000000000 234.9050000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[1] -layer Metal2 -assign {0.0000000000 230.7300000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin data_i[0] -layer Metal2 -assign {0.0000000000 226.3900000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_out_en -layer Metal2 -assign {0.0000000000 149.4400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[15] -layer Metal2 -assign {0.0000000000 68.3150000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[14] -layer Metal2 -assign {0.0000000000 64.1400000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[13] -layer Metal2 -assign {0.0000000000 59.8000000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[12] -layer Metal2 -assign {0.0000000000 55.6000000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[11] -layer Metal2 -assign {0.0000000000 51.2600000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[10] -layer Metal2 -assign {0.0000000000 46.9200000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[9] -layer Metal2 -assign {0.0000000000 42.7250000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[8] -layer Metal2 -assign {0.0000000000 38.3800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[7] -layer Metal2 -assign {0.0000000000 34.2050000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[6] -layer Metal2 -assign {0.0000000000 29.8550000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[5] -layer Metal2 -assign {0.0000000000 25.6650000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[4] -layer Metal2 -assign {0.0000000000 21.3250000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[3] -layer Metal2 -assign {0.0000000000 17.1500000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[2] -layer Metal2 -assign {0.0000000000 12.7850000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[1] -layer Metal2 -assign {0.0000000000 8.6100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_r[0] -layer Metal2 -assign {0.0000000000 4.2700000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_dout_i[15] -layer Metal1 -assign {11.1400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[14] -layer Metal1 -assign {14.3800000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[13] -layer Metal1 -assign {17.6150000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[12] -layer Metal1 -assign {20.8600000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[11] -layer Metal1 -assign {24.1050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[10] -layer Metal1 -assign {27.3400000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[9] -layer Metal1 -assign {30.5800000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[8] -layer Metal1 -assign {33.8250000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[7] -layer Metal1 -assign {37.0650000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[6] -layer Metal1 -assign {40.3050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[5] -layer Metal1 -assign {43.5450000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[4] -layer Metal1 -assign {46.7850000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[3] -layer Metal1 -assign {50.0250000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[2] -layer Metal1 -assign {53.2700000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[1] -layer Metal1 -assign {56.5050000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_dout_i[0] -layer Metal1 -assign {59.7500000000 0.0000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side S -snap MGRID 
editPin -pin accel_mem_en -layer Metal2 -assign {0.0000000000 145.2650000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_address[15] -layer Metal1 -assign {556.0000000000 294.4450000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[14] -layer Metal1 -assign {556.0000000000 298.9750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[13] -layer Metal1 -assign {556.0000000000 303.4800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[12] -layer Metal1 -assign {556.0000000000 308.1750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[11] -layer Metal1 -assign {556.0000000000 312.6800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[10] -layer Metal1 -assign {556.0000000000 317.3750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[9] -layer Metal1 -assign {556.0000000000 322.0450000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[8] -layer Metal1 -assign {556.0000000000 326.4000000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[7] -layer Metal1 -assign {556.0000000000 331.0800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[6] -layer Metal1 -assign {556.0000000000 335.7750000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[5] -layer Metal1 -assign {556.0000000000 340.2800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[4] -layer Metal1 -assign {556.0000000000 344.9700000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[3] -layer Metal1 -assign {556.0000000000 349.4800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[2] -layer Metal1 -assign {556.0000000000 353.9850000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[1] -layer Metal1 -assign {556.0000000000 358.6800000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_address[0] -layer Metal1 -assign {556.0000000000 363.1850000000} -pinWidth 0.06 -pinDepth 0.335 -fixOverlap false  -side E -snap MGRID 
editPin -pin accel_mem_data[15] -layer Metal2 -assign {0.0000000000 140.9000000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[14] -layer Metal2 -assign {0.0000000000 136.7250000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[13] -layer Metal2 -assign {0.0000000000 132.3850000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[12] -layer Metal2 -assign {0.0000000000 128.2100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[11] -layer Metal2 -assign {0.0000000000 123.8450000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[10] -layer Metal2 -assign {0.0000000000 119.6700000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[9] -layer Metal2 -assign {0.0000000000 115.3300000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[8] -layer Metal2 -assign {0.0000000000 111.1300000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[7] -layer Metal2 -assign {0.0000000000 106.7900000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[6] -layer Metal2 -assign {0.0000000000 102.4500000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[5] -layer Metal2 -assign {0.0000000000 98.2500000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[4] -layer Metal2 -assign {0.0000000000 93.9100000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[3] -layer Metal2 -assign {0.0000000000 89.7350000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[2] -layer Metal2 -assign {0.0000000000 85.3800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[1] -layer Metal2 -assign {0.0000000000 81.1950000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_mem_data[0] -layer Metal2 -assign {0.0000000000 76.8550000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
editPin -pin accel_en -layer Metal2 -assign {0.0000000000 72.6800000000} -pinWidth 0.08 -pinDepth 0.25 -fixOverlap false  -side W -snap MGRID 
setPinAssignMode -pinEditInBatch false
# IO pad
# Area IO
# Bump
deleteBumps -all
# partition
# Block placement
unplaceAllBlocks
deleteHaloFromBlock -allBlock
# Global Net Connection
clearGlobalNets 
globalNetConnect VDD -pin {VDD} -instanceBasename * -type pgpin -all
globalNetConnect VSS -pin {VSS} -instanceBasename * -type pgpin -all
applyGlobalNets 
# busSinkGroup
# blackbox
# netGroupAndBusGuide
# relative floorplan
# pin groups
# pin guides
deletePinGuide -all
# custom shape
delete_gui_object -shape
# coverCell
