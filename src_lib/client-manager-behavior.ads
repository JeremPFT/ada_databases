package Client.Manager.Behavior is

   --
   --  type declaration
   --

   type Definition is interface;

   --
   --  configuration
   --

   procedure Set_Configuration
     (Self             : in out Definition;
      Value_Object     : in     Client.Value_Object.Behavior.Definition;
      Transfert_Object : in     Client.Transfert_Object.Behavior.Definition)
     is abstract;

   --
   --  services
   --

   procedure Register_Client
     (Self        : in Definition;
      Client_Data : in Client.Value_Object.Behavior.Definition)
     is abstract;

   function Get_Client
     (Self : in Definition;
      Id   : in Id.Definition)
     return Client.Behavior
     is abstract;

   function Get_Client_Count
     (Self  : in Definition;
      Where : in Criterion.Definition)
     return Natural
     is abstract;

   function Get_Client_List
     (Self  : in Definition;
      Where : in Criterion.Definition)
     return Client.Value_Object.Vector
     is abstract;

end Client.Manager.Behavior;
