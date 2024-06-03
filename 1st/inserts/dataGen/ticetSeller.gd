
[General]
Version=1

[Preferences]
Username=
Password=2994
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##ORIPERL
Name=TICKETSELLER
Count=1000..2000

[Record]
Name=SELLER_ID
Type=NUMBER
Size=38
Data=Random(200000000, 390000000)
Master=

[Record]
Name=SELLER_NAME
Type=VARCHAR2
Size=255
Data=FirstName
Master=

[Record]
Name=SELLER_CONTACT
Type=VARCHAR2
Size=255
Data=Random(0500000000, 0599999999)
Master=

