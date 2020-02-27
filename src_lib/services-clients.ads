package Services.Clients.API is

   --
   --  type declaration
   --

   type Instance is interface;

   --
   --  configuration
   --

   procedure Set_Configuration
     (Self             : in out Instance;
      Value_Object     : in     Client.Value_Object.Behavior.Instance;
      Transfert_Object : in     Client.Transfert_Object.Behavior.Instance)
     is abstract;

   --
   --  services
   --

   procedure Register_Client
     (Self        : in Instance;
      Client_Data : in Client.Value_Object.Behavior.Instance)
     is abstract;

   function Get_Client
     (Self : in Instance;
      Id   : in Id.Instance)
     return Client.Behavior
     is abstract;

   function Get_Client_Count
     (Self  : in Instance;
      Where : in Criterion.Instance)
     return Natural
     is abstract;

   function Get_Client_List
     (Self  : in Instance;
      Where : in Criterion.Instance)
     return Client.Value_Object.Vector
     is abstract;

end Services.Clients.API;
