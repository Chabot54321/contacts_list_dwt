 
// web/mng/contacts/mng_contacts_web.dart 
 
import "dart:html"; 
 
import "package:dartling/dartling.dart"; 
import "package:dartling_default_app/dartling_default_app.dart"; 
 
import "package:mng_contacts/mng_contacts.dart"; 
 
initMngData(MngRepo mngRepo) { 
   var mngModels = 
       mngRepo.getDomainModels(MngRepo.mngDomainCode); 
 
   var mngContactsEntries = 
       mngModels.getModelEntries(MngRepo.mngContactsModelCode); 
   initMngContacts(mngContactsEntries); 
   mngContactsEntries.display(); 
   mngContactsEntries.displayJson(); 
} 
 
showMngData(MngRepo mngRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = mngRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var mngRepo = new MngRepo(); 
  initMngData(mngRepo); 
  showMngData(mngRepo); 
} 
 
