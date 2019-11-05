--Like Function

--Select all columns from Vendors where a value from VendorName starts with B
Select * from ap.dbo.Vendors  
Where VendorName Like 'B%';

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--8	BFI Industries	PO Box 9369	NULL	Fresno	CA	93792	(559) 555-1551	Kaleigh	Erick	3	521
--11	Bill Marvin Electric Inc	4583 E Home	NULL	Fresno	CA	93703	(559) 555-5106	Hostlery	Kaitlin	2	523
--17	Blanchard & Johnson Associates	27371 Valderas	NULL	Mission Viejo	CA	92691	(214) 555-3647	Keeton	Gonzalo	3	540
--37	Blue Cross	PO Box 9061	NULL	Oxnard	CA	93031	(800) 555-0912	Eliana	Nikolas	3	510
--47	Baker & Taylor Books	Five Lakepointe Plaza, Ste 500	2709 Water Ridge Parkway	Charlotte	NC	28217	(704) 555-3500	Bernardo	Brittnee	3	572
--51	Blue Shield of California	PO Box 7021	NULL	Anaheim	CA	92850	(415) 555-5103	Smith	Kylie	3	510
--67	Bill Jones	Secretary Of State	PO Box 944230	Sacramento	CA	94244	NULL	Deasia	Tristin	3	589
--84	Boucher Communications Inc	1300 Virginia Dr. Ste 400	NULL	Fort Washington	PA	19034	(215) 555-8000	Carson	Julian	3	540
--99	Bertelsmann Industry Svcs. Inc	28210 N Avenue Stanford	NULL	Valencia	CA	91355	(805) 555-0584	Potter	Lance	3	400

--Selects all columns from Vendors where a value from the column VendorName ends with B
Select * from ap.dbo.Vendors 
where VendorName Like '%B'

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--20	Diversified Printing & Pub	2632 Saturn St	NULL	Brea	CA	92621	(714) 555-4541	Lane	Vanesa	3	400


--Selects all columns from Vendors where values from the column VendorName has l as the 3rd letter
Select * from ap.dbo.Vendors 
where VendorName Like '__l%'

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--6	California Chamber Of Commerce	3255 Ramos Cir	NULL	Sacramento	CA	95827	(916) 555-6670	Mauro	Anton	3	572
--11	Bill Marvin Electric Inc	4583 E Home	NULL	Fresno	CA	93703	(559) 555-5106	Hostlery	Kaitlin	2	523
--13	Golden Eagle Insurance Co	PO Box 85826	NULL	San Diego	CA	92186	NULL	Blanca	Korah	3	590
--23	Yale Industrial Trucks-Fresno	3711 W Franklin	NULL	Fresno	CA	93706	(559) 555-2993	Alexis	Alexandro	3	532
--25	California Data Marketing	2818 E Hamilton	NULL	Fresno	CA	93721	(559) 555-3801	Jonessen	Moises	4	540
--35	Cal State Termite	PO Box 956	NULL	Selma	CA	93662	(559) 555-1534	Hunter	Demetrius	2	523
--67	Bill Jones	Secretary Of State	PO Box 944230	Sacramento	CA	94244	NULL	Deasia	Tristin	3	589
--79	Valprint	PO Box 12332	NULL	Fresno	CA	93777	(559) 555-3112	Warren	Quentin	3	551
--96	Wells Fargo Bank	Business Mastercard	P.O. Box 29479	Phoenix	AZ	85038	(947) 555-3900	Damion	Mikayla	2	160
--101	California Business Machines	Gallery Plz	5091 N Fresno	Fresno	CA	93710	(559) 555-5570	Rohansen	Anders	2	170
--110	Malloy Lithographing Inc	5411 Jackson Road	PO Box 1124	Ann Arbor	MI	48106	(313) 555-6113	Regging	Abe	3	400
--113	Pollstar	4697 W Jacquelyn Ave	NULL	Fresno	CA	93722	(559) 555-2631	Aranovitch	Robert	5	520
--121	Zylka Design	3467 W Shaw Ave #103	NULL	Fresno	CA	93711	(559) 555-8625	Ronaldsen	Jaime	3	403

