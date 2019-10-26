using System.ComponentModel.DataAnnotations;

namespace ZenithFrontEnd.Models
{
    public class CartItems
    {
        [Key]
        public string ProdID { get; set; }

        public string UserID { get; set; }

        public string ProdType { get; set; }

        public string ProdSize { get; set; }

        public string ProdMaterial { get; set; }

        public string ProdQuantity { get; set; }

        public string ProdBriefDescription { get; set; }

        public System.DateTime ProdDateCreated { get; set; }

        public virtual Product Product { get; set; }
    }
}