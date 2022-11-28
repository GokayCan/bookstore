package Entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-11-28T19:56:22")
@StaticMetamodel(User_1.class)
public class User_1_ { 

    public static volatile SingularAttribute<User_1, String> password;
    public static volatile SingularAttribute<User_1, Date> registrationDate;
    public static volatile SingularAttribute<User_1, Integer> userId;
    public static volatile SingularAttribute<User_1, String> username;

}