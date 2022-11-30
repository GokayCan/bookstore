package DataAccess.Concretes;

import DataAccess.Abstractions.ITranslatorRepository;
import java.sql.Connection;

public class TranslatorRepository extends Repository implements ITranslatorRepository{

    public TranslatorRepository(Connection con) {
        super(con);
    } 
}
