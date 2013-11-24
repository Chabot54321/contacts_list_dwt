part of mng_contacts_app;

class Mngs extends ui.VerticalPanel implements ActionReactionApi {
  MngApp _mngApp;

  Mngs(this._mngApp) {
    _mngApp.domain.startActionReaction(this);
    _load(_mngApp.contacts);
    

    addStyleName('mngs');
  }

  _load(Contacts contacts) {
     
    String json = window.localStorage['Contacts'];
    if (json != null) {
     
     contacts.fromJson(JSON.decode(json));
      for (Contact contact in contacts) {
        _add(contact);
      }
    }
  }

  _add(Contact contact) {
    var todo = new Mng(_mngApp, contact);
    add(todo);
      }
 

  
  Mng _find(Contact contact) {
    for (int i = 0; i < getWidgetCount(); i++) {
      Mng mng = getWidgetAt(i);
      if (mng.title == contact.name){
        return mng;
      }
    }
  }

//  _select(Contact contact) {
//    var todo = _find(contact);
//    if (todo != null) {
//      todo.select(contact.selected);
//    }
//  }

  _remove(Contact contact) {
    var mng = _find(contact);
    if (mng != null) {
      remove(mng);
    }
  }

  react(ActionApi action) {
    if (action is Transaction) {
      for (var transactionAction in action.past.actions) {
        if (transactionAction is RemoveAction) {
          if (transactionAction.undone) {
            _add(transactionAction.entity);
          } else {
            _remove(transactionAction.entity);
          }
        }
      }
    } else if (action is AddAction) {
      
      if (action.undone) {
        _remove(action.entity);
      } else {
        _add(action.entity);
      }
    } else if (action is RemoveAction) {
      if (action.undone) {
        _add(action.entity);
      } else {
        _remove(action.entity);
      }
//    } else if (action is SetAttributeAction) {
//      if (action.property == 'completed') {
//        _select(action.entity);
//      }
    }
   // _mngApp.updateDisplay();
    _mngApp.save();
  }
}