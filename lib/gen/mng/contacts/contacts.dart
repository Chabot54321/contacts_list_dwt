part of mng_contacts; 
 
// lib/gen/mng/contacts/contacts.dart 
 
abstract class ContactGen extends ConceptEntity<Contact> { 
 
  ContactGen(Concept concept) : super.of(concept); 
 
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  String get email => getAttribute("email"); 
  set email(String a) => setAttribute("email", a); 
  
  String get phone => getAttribute("phone"); 
  set phone(String a) => setAttribute("phone", a);
  
  bool get selected => getAttribute("selected");
  set selected(bool a) => setAttribute("selected", a);
  
  Contact newEntity() => new Contact(concept); 
  Contacts newEntities() => new Contacts(concept); 
  
} 
 
abstract class ContactsGen extends Entities<Contact> { 
 
  ContactsGen(Concept concept) : super.of(concept); 
 
  Contacts newEntities() => new Contacts(concept); 
  Contact newEntity() => new Contact(concept); 
  
} 
 
