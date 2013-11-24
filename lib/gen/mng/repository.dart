part of mng_contacts; 
 
// lib/gen/mng/repository.dart 
 
class MngRepo extends Repo { 
 
  static final mngDomainCode = "Mng"; 
  static final mngContactsModelCode = "Contacts"; 
 
  MngRepo([String code="MngRepo"]) : super(code) { 
    _initMngDomain(); 
  } 
 
  _initMngDomain() { 
    var mngDomain = new Domain(mngDomainCode); 
    domains.add(mngDomain); 
    add(new MngModels(mngDomain)); 
  } 
 
} 
 
