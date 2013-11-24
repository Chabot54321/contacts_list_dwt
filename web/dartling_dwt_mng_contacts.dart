
import 'package:mng_contacts/mng_contacts.dart';
import 'package:mng_contacts/mng_contacts_app.dart';

 

main() {
  var repo = new MngRepo();
  var domain = repo.getDomainModels('Mng');
  var model = domain.getModelEntries('Contacts');
  //initMngContacts(model);
  new MngApp(domain);
}