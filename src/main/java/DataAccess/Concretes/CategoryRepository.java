package DataAccess.Concretes;

import DataAccess.Abstractions.ICategoryRepository;
import java.sql.Connection;

public class CategoryRepository extends Repository implements ICategoryRepository{

    public CategoryRepository(Connection con) {
        super(con);
    }   
}
