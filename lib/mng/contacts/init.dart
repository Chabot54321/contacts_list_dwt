 part of mng_contacts; 
 
// lib/mng/contacts/init.dart 
 
initMngContacts(var entries) { 
  _initContacts(entries); 
} 
 
_initContacts(var entries) { 
  
  
  Contact contact = new Contact(entries.contacts.concept); 
  contact.name = "Thomas Chabot"; 
  contact.email = "thomas.chabot@gmail.com"; 
  contact.phone = "571-2199"; 
  entries.contacts.add(contact); 
 
  contact = new Contact(entries.contacts.concept); 
  contact.name = "Bechir Sellami"; 
  contact.email = "bechirTheGreat@hotmail.com"; 
  contact.phone = "418-999-8798"; 
  entries.contacts.add(contact); 
 
  contact = new Contact(entries.contacts.concept); 
  contact.name = "Monsieur Yon Gagné"; 
  contact.email = "YvonGagnéLaPartie@yahou.com"; 
  contact.phone = "847-999-8723"; 
  entries.contacts.add(contact); 
 

 
} 
 
