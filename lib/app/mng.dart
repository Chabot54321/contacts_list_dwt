part of mng_contacts_app;

class Mng extends ui.HorizontalPanel {
    
  var namelabel = new ui.Label('Name :');
  var emaillabel = new ui.Label('Email :');
  var phonelabel = new ui.Label('Phone number :');
  ui.TextBox _name;
  ui.TextBox _email;
  ui.TextBox _phone;
  
  Mng(MngApp mngApp, Contact contact) {
    DomainSession session = mngApp.session;
    Contacts contacts = mngApp.contacts;

    
    
    spacing = 8;
 
    _name = new ui.TextBox();
    _name.text = contact.name;

    _email = new ui.TextBox();
    _email.text = contact.email;
    
    _phone = new ui.TextBox();
    _phone.text = contact.phone;

    ;
    
    _name.addStyleName('mngs');
    _email.addStyleName('mngs');
    _phone.addStyleName('mngs');
    
    add(namelabel);
    add(_name);
    add(emaillabel);
    add(_email);
    add(phonelabel);
    add(_phone);

    
    ////////////////  BOUTON REMOVE ///////////////
    
    ui.Button remove = new ui.Button(
        'X', new event.ClickHandlerAdapter((event.ClickEvent e) {
          new RemoveAction(session, contacts, contact).doit();
        }));
    remove.addStyleName('mng-button');
    add(remove);
    }
  String get title => _name.text;

}