using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace C10L3Exercise1WebApplication
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IShipperService" in both code and config file together.
    [ServiceContract]
    public interface IShipperService
    {
        [OperationContract]
        Shipper GetShipper(int shipperId);

        [OperationContract]
        void SaveShipper(Shipper shipper);
    }
}
