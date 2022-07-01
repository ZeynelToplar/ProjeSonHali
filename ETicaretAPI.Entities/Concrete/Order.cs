using ETicaretAPI.Core.Entities;
using ETicaretAPI.Entities.Concrete;

namespace ETicaretAPI.Entities.Concrete
{
    public class Order : IEntity
    {
        public int OrderId { get; set; }
        public int CustomerId { get; set; }
        public int PaymentId { get; set; }
        public int OrderStatusId { get; set; }
        public double Amount { get; set; }
        public string ShipAddress { get; set; }
        public string InvoiceAddress { get; set; }
        public string PaymentStatus { get; set; }
        public DateTime OrderDate { get; set; }

        //Relation
        public Customer Customer { get; set; }
        public OrderStatus OrderStatus { get; set; }
        public Payment Payment { get; set; }
        public ICollection<Shipment> Shipments { get; set; }
        public ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
