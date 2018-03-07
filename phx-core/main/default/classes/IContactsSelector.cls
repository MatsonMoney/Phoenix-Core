public interface IContactsSelector extends fflib_ISObjectSelector {

    List<Contact> selectById(Set<ID> idSet);

}