part of mng_contacts_app;

class MngApp {
  MngModels domain;
  DomainSession session;
  Contacts contacts;



  MngApp(this.domain) {
    session = domain.newSession();
    ContactsEntries model = domain.getModelEntries('Contacts');
    contacts = model.contacts;

    var root = ui.RootPanel.get();
    var mngApp = new ui.VerticalPanel();
    mngApp.spacing = 8;
    root.add(mngApp);
    var header = new Header(this);
    mngApp.add(header);
    
    var mngs = new Mngs(this);
    mngApp.add(mngs);


  }

  save() {
    window.localStorage['Contacts'] = JSON.encode(contacts.toJson());
  }


}