# Using this template

This is a template for generating a serial letter for  professors of informatics with announcement of your thesis. The template is intended to help you to concentrate on the content of your thesis and get fastly all the letters you need.  To finalize the document for you please follow the steps:

1. Open file *zusammenfassung\_der\_arbeit.tex* and add your data in the variables. The parts which should be changed are marked with "\#\#".
2. Write your abstract in for this marked part of the file.
	* Add your references/own publications in *BibTex* format into *my\_articles.bib* file.
3. Check the abstract with your supervisor(s).
4. Write your contributions in for this marked field and check it with your supervisor.
5. When finished please check the structure of the generated PDF-file for any changes comparing it to the file *04\_Promotionsgespräch\_Professorenrunde.doc* on the [faculty web-site](https://www.informatik.kit.edu/2008.php)
6. Especially check the remarks on the last page of the document.
7. Generate Latex commands with addresses of professors:
	1. Download the file *03\_Adressen\_Professorenrunde.xls* to sub-folder *scripts*.
	2. Open the file in Microsoft Excel or LibreOffice Calc and store it with the same name but *.csv* file type with ";" as field separator.
	3. Go to *scripts* folder in the terminal or shell and execute script *convert\_prof\_addresses.bash*
	4. If you are using windows and can not execute bash script please check [here](http://letmegooglethat.com/?q=bash+in+windows) or find some Unix machine where you can execute this step.
	5. Now you should have list of professors and their addresses in the file *latex\_adressen\_professorenrunde.tex*
8. Recompile your document again.
9. Now you should have a big file with all letters generated.
10. Before printing please check if all names and addresses are written correctly.
11. I wish you luck with the "Professorenrunde" and later with your PhD exam.


#### Versions:

* 1.0 - August, 23rd 2019

#### Authors:

* Denis Štogl, IAR-IPR, August 2019
