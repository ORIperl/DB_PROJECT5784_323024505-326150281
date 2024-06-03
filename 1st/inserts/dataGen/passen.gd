
[General]
Version=1

[Preferences]
Username=
Password=2168
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##ORIPERL
Name=BAGGAGE
Count=100..200

[Record]
Name=BAGGAGE_ID
Type=NUMBER
Size=38
Data=Random(1111111, 9999999)
Master=

[Record]
Name=BAGGAGE_TYPE
Type=VARCHAR2
Size=255
Data=List('small', 'big', 'medium')
Master=

[Record]
Name=BAGGAGE_WEIGHT
Type=FLOAT
Size=22
Data=Random(0.01, 20)
Master=

[Record]
Name=TICKET_ID
Type=NUMBER
Size=38
Data=Random(00000000, 99999999)
Master=

