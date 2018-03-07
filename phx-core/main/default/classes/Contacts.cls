public with sharing class Contacts extends PhoenixDomain {

    public Contacts(List<Contact> contacts) {
        super(contacts);
    }    

    public class Constructor implements fflib_SObjectDomain.IConstructable {
		public fflib_SObjectDomain construct(List<SObject> sObjectList) {
			return new Contacts(sObjectList);
		}
	}    
}
