/**
 * @author: celioegc
 */
public with sharing class VisitRepository {
    public List<Visita__c> findByZipCode (String zipCOde) {
        return [ SELECT Id, Name, Cep__c, RecordType.Name, RecordType.DeveloperName
                 FROM Visita__c
                 WHERE Cep__c LIKE :zipCOde
                 LIMIT 100 ];
    }
}