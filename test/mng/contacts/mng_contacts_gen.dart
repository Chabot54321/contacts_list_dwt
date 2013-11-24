 
// test/mng/contacts/mng_contacts_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:mng_contacts/mng_contacts.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var mngDomain = new Domain("Mng"); 
 
  Model mngContactsModel = 
      fromJsonToModel(mngContactsModelJson, mngDomain, "Contacts"); 
 
  repo.domains.add(mngDomain); 
 
  repo.gen("mng_contacts"); 
} 
 
initMngData(MngRepo mngRepo) { 
   var mngModels = 
       mngRepo.getDomainModels(MngRepo.mngDomainCode); 
 
   var mngContactsEntries = 
       mngModels.getModelEntries(MngRepo.mngContactsModelCode); 
   initMngContacts(mngContactsEntries); 
   mngContactsEntries.display(); 
   mngContactsEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var mngRepo = new MngRepo(); 
  initMngData(mngRepo); 
} 
 
