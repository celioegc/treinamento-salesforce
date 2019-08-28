/**
 * @author: celioegc
 */
 @isTest
public class VisitFixtureFactory {

    /*
        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'Rua X';
        visit.Bairro__c = 'Agua Verde';
        visit.Cep__c = '80240290';
        visit.Cidade__c = 'Curitiba';

        insert visit;    
    */

    public static Visita__c buildVisit (String zipCode) {

        Visita__c visit = new Visita__c();
        
        visit.Endereco__c = 'Rua X';
        visit.Bairro__c = 'Agua Verde';
        visit.Cep__c = zipCode;
        visit.Cidade__c = 'Curitiba';

        return visit;

    }

    public static Visita__c buildVisit (Account account, String zipCode) {

        Visita__c visit = buildVisit(zipCode);
        visit.Conta__c = account.Id;

        return visit;

    }

    public static Visita__c create (Account account, String zipCode) {

        return create(buildVisit(account, zipCode));
    }

    public static Visita__c create (String zipCode) {

        return create(buildVisit(zipCode));
    }

    public static Visita__c create (Visita__c visit) {
        insert visit;

        return visit;
    }

}