package DataAccess.Entities;

public class Fine extends BaseEntity{
    
    private int UserID;
    private int LoanID;
    private float FineAmount;
    private boolean IsPaid;

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getLoanID() {
        return LoanID;
    }

    public void setLoanID(int LoanID) {
        this.LoanID = LoanID;
    }

    public float getFineAmount() {
        return FineAmount;
    }

    public void setFineAmount(float FineAmount) {
        this.FineAmount = FineAmount;
    }

    public boolean getIsPaid() {
        return IsPaid;
    }

    public void setIsPaid(boolean IsPaid) {
        this.IsPaid = IsPaid;
    }
    
}
