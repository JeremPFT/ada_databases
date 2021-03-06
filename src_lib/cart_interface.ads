-------------------------------------------------------------------------------
--  Defines business interface to be implemented by a cart.
-------------------------------------------------------------------------------

package Cart_Interface is

   type Definition is interface;

   procedure Initialize
     (Self   : in out Definition;
      Person : in     String);

   procedure Initialize
     (Self   : in out Definition;
      Person : in     String;
      Id     : in     Id_T);

   procedure Add_Book
     (Self    : in out Definition;
      Book_Id : in     Id_T);

   procedure Remove_Book
     (Self    : in out Definition;
      Book_Id : in     String);

   function Get_Contents
     (Self : in Definition)
     return Id_List;

   procedure Clear
     (Self : in out Definition);

end Cart_Interface;
