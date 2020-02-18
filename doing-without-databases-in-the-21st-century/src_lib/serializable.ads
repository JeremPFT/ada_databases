package Serializable is

   type Byte_Buffer_Type is array (Natural range <>) of Unsigned_64;

   type Serializable_Interface is interface;

   function Serialize
     (Self : in Serializable_Interface)
     return Byte_Buffer
     is abstract;

   procedure Deserialize
     (Self   :    out Serializable_Interface;
      Buffer : in     Byte_Buffer)
     is abstract;

end Serializable;
