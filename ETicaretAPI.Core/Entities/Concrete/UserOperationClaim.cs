namespace ETicaretAPI.Core.Entities.Concrete
{
    public class UserOperationClaim : IEntity
    {
        public int UserOperationClaimId { get; set; }
        public int UserId { get; set; }
        public int OperationClaimId { get; set; }

        //Relation
        public User User { get; set; }
        public OperationClaim OperationClaim { get; set; }
    }
}
