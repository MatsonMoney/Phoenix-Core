public class ContactsSelector extends fflib_SObjectSelector implements IContactsSelector {

    public static IContactsSelector newInstance() {
        return (IContactsSelector) PhoenixCore.Selector.newInstance(Contact.SObjectType);
    }

    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField> {
            Contact.Id,
            Contact.FirstName,
            Contact.LastName,
            Contact.Email
        };
    }

    public Schema.SObjectType getSObjectType() {
        return Contact.sObjectType;
    }

    public List<Contact> selectById(Set<ID> idSet) {
        return (List<Contact>) selectSObjectsById(idSet);
    }

}