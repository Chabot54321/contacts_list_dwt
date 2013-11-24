part of mng_contacts; 
 
// lib/gen/mng/models.dart 
 
class MngModels extends DomainModels { 
 
  MngModels(Domain domain) : super(domain) { 
    add(fromJsonToContactsEntries()); 
  } 
 
  ContactsEntries fromJsonToContactsEntries() { 
    return new ContactsEntries(fromJsonToModel( 
      mngContactsModelJson, 
      domain, 
      MngRepo.mngContactsModelCode)); 
  } 
 
} 
 
