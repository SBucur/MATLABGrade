# MATLABGrade
Grade Mastery Assignments (MAs) easier. This MATLAB script takes the downloaded .zip submissions and extracts them into separate folders by MA and attaches the Rubric files with them. The file structure should look like this:

```
+-- Extract.m
+-- MA1_Rubric.zip
|  ^--MA1_Rubric.xlsx
|  ^--Problem1.mat
|  ^--Problem2.csv
+-- MA1_sbucur.zip
+-- MA1_johndoe3.zip
+-- DoesntFollowDirections.zip
+-- MA1
|   +-- sbucur
|       |   +-- MA1_sbucur.m
|       |   +-- MA1_AlgSht_P1.pdf
|       |   +-- MA1_AlgSht_P2.pdf
|       |   +-- MA1_AlgSht_P3.pdf
|       |   +-- MA1_Rubric_sbucur.xlsx
|       |   +-- Problem1.mat
|       |   +-- Problem2.csv
|   +-- johndoe3
|       |   +-- MA1_johndoe3.m
|       |   +-- MA1_AlgSht_P1.pdf
|       |   +-- MA1_AlgSht_P2.pdf
|       |   +-- MA1_AlgSht_P3.pdf
|       |   +-- MA1_Rubric_johndoe3.xlsx
|       |   +-- Problem1.mat
|       |   +-- Problem2.csv
+-- MA2
...

+-- LICENSE
```
### Rules for using the script:
* Valid MAs must be in the format ```MA<#>_<cougarnet>.zip```. All others are incorrect and you should deduct points.
* ALL grading files must be in a .zip file with the format ```MA<#>_Rubric.zip```. All others are incorrect and you should feel bad for not following the same directions you give your students...
* Students should make sure all files are in the root directory of the .zip unless specified, otherwise grading files will not be extracted in the right place.

### TO DO:
* Fix behavior handling invalid .zip files
* Rename .xlsx files to append username
* Delete irrelevant files from MA submissions
* Interfaces (?)
