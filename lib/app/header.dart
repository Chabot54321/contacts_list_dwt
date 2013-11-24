part of mng_contacts_app;

class Header extends ui.VerticalPanel implements PastReactionApi {
  ui.Button _undo;
  ui.Button _redo;

  Header(MngApp mngApp) {
    DomainSession session = mngApp.session;
    session.past.startPastReaction(this);
    Contacts contacts = mngApp.contacts;

    spacing = 16;

    var title = new ui.Label('Contacts');
    title.addStyleName("title");
    add(title);

    var hPanel = new ui.HorizontalPanel();
    hPanel.spacing = 8;
    add(hPanel);

    _undo = new ui.Button(
        'Undo', new event.ClickHandlerAdapter((event.ClickEvent e) {
          session.past.undo();
        }));
        
    _undo.enabled = false;
    _undo.addStyleName('mng-button');
     hPanel.add(_undo);
    _redo = new ui.Button(
        'Redo', new event.ClickHandlerAdapter((event.ClickEvent e) {
          session.past.redo();
        }));
      
    _redo.enabled = false;
    _redo.addStyleName('mng-button');
    hPanel.add(_redo);

    var namelabel = new ui.Label('Name :');
    var newName = new ui.TextBox(); 
    var emaillabel = new ui.Label('Email :');
    var newEmail = new ui.TextBox(); 
    var phonelabel = new ui.Label('Phone :');
    var newPhone = new ui.TextBox(); 
    

    
    var btn_add = new ui.Button("Add"); 
    btn_add.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent event) {
            

      
      
            var name = newName.text.trim(); 
            var email = newEmail.text.trim(); 
            var phone = newPhone.text.trim(); 
            Contact contact = new Contact(contacts.concept); 
            if (name != '') {
            contact.name = name; 
            contact.email = email; 
            contact.phone = phone;
           
            contacts.add(contact);
            new AddAction(session, contacts, contact).doit();
            newName.text = '';
            newEmail.text = '';
            newPhone.text = '';
             } 

    }));
     
    add(namelabel);
    add(newName);
    add(emaillabel);
    add(newEmail);
    add(phonelabel);
    add(newPhone);
    add(btn_add);
  }

  reactCannotUndo() {
    _undo.enabled = false;
  }
  reactCanUndo() {
    _undo.enabled = true;
  }
  reactCanRedo() {
    _redo.enabled = true;
  }
  reactCannotRedo() {
    _redo.enabled = false;
  }
}