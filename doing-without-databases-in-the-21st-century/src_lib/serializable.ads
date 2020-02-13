package Serializable is

   type Interface_Definition is interface;

   function Serialize
     (Self : in Interface_Definition)
     return Byte_Buffer
     is abstract;

   procedure Deserialize
     (Self   :    out Interface_Definition;
      Buffer : in     Byte_Buffer)
     is abstract;

end Serializable;
