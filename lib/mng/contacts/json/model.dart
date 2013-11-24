part of mng_contacts;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/mng/contacts/json/model.dart

var mngContactsModelJson = r'''
{
    "width":990,
    "height":580,
    "boxes":[
        {
            "name":"Contact",
            "entry":true,
            "x":193,
            "y":190,
            "width":120,
            "height":120,
            "items":[
                {
                    "sequence":10,
                    "name":"name",
                    "category":"required",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":20,
                    "name":"email",
                    "category":"required",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":30,
                    "name":"phone",
                    "category":"required",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                }
            ]
        }
    ],
    "lines":[
        
    ]
}
''';
  