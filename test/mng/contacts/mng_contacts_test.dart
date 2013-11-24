 
// test/mng/contacts/mng_contacts_test.dart 
 
import "package:unittest/unittest.dart"; 
 
import "package:dartling/dartling.dart"; 
 
import "package:mng_contacts/mng_contacts.dart"; 
 
testMngContacts(Repo repo, String domainCode, String modelCode) { 
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.isEmpty, isTrue); 
    }); 
 
  }); 
} 
 
testMngData(MngRepo mngRepo) { 
  testMngContacts(mngRepo, MngRepo.mngDomainCode, 
      MngRepo.mngContactsModelCode); 
} 
 
void main() { 
  var mngRepo = new MngRepo(); 
  testMngData(mngRepo); 
} 
 
