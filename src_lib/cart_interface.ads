-------------------------------------------------------------------------------
--  Defines business interface to be implemented by a cart.
-------------------------------------------------------------------------------

package Cart_Interface is

   type Type_Definition is interface;

   procedure Initialize
     (Self   : in out Type_Definition;
      Person : in     String);

   procedure Initialize
     (Self   : in out Type_Definition;
      Person : in     String;
      Id     : in     Id_T);

   procedure Add_Book
     (Self    : in out Type_Definition;
      Book_Id : in     Id_T);

   procedure Remove_Book
     (Self    : in out Type_Definition;
      Book_Id : in     String);

   function Get_Contents
     (Self : in Type_Definition)
     return Id_List;

   procedure Clear
     (Self : in out Type_Definition);

end Cart_Interface;
