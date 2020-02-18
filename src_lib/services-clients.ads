package Services.Clients_Manager is

   type Definition is interface;

   procedure Register_Client
     (Self : in Definition);

   function Get_Client
     (Self : in Definition)
     return Client.Behavior;

end Services.Clients_Manager;
