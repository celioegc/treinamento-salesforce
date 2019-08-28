/**
 * @author: celioegc
 */
@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Account account = AccountFixtureFactory.create('Cliente 1');
        Visita__c visit = VisitFixtureFactory.create(account, '80240290');
        
        VisitRepository repo = new VisitRepository();
        List<Visita__c> visits = repo.findByZipCode('80%') ;

        System.assert(!visits.isEmpty());
        System.assertEquals(visit.Id, visits.get(0).Id);
               
    }

    @isTest
    public static void notFoundByZipCodeTest () {
        Visita__c visit = VisitFixtureFactory.create('10240290');
        
        VisitRepository repo = new VisitRepository();
        List<Visita__c> visits = repo.findByZipCode('80%') ;

        System.assert(visits.isEmpty());
    }

}