namespace ETicaretAPI.Core.Entities.Concrete
{
    public class OperationClaim :IEntity
    {
        public int OperationClaimID { get; set; }
        public string Name { get; set; }

        //Relation
        public ICollection<UserOperationClaim> UserOperationClaims { get; set; }
    }
}
