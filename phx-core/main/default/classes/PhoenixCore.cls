global class PhoenixCore {
    
    // Configure and create the UnitOfWorkFactory for this Application
	public static final fflib_Application.UnitOfWorkFactory UnitOfWork = 
		new fflib_Application.UnitOfWorkFactory(
				new List<SObjectType> { 
					Contact.SObjectType });    

    // Configure and create the SelectorFactory for this Application
    public static final fflib_Application.SelectorFactory Selector = 
        new fflib_Application.SelectorFactory(
            // Map SObjectType to Selector Class
            new Map<SObjectType, Type> {
                    Contact.SObjectType => ContactsSelector.class }); 

    // Configure and create the DomainFactory for this Application
	public static final fflib_Application.DomainFactory Domain = 
		new fflib_Application.DomainFactory(
			PhoenixCore.Selector,
			// Map SObjectType to Domain Class Constructors 
			new Map<SObjectType, Type> {
					Contact.SObjectType => Contacts.Constructor.class });                                        
}
