-------------------------------------------------------------------------------
--  Defines cart type.
-------------------------------------------------------------------------------

package Cart_Instance is

   type Definition is
     new Cart_Interface.Definition
   with record
      Customer_Id   : Id_T          := Invalid_Id;
      Customer_Name : access String := null;
      Content       : Book_Id_List  := Book_Id_Empty_List;
   end record;

   procedure Initialize
     (Self        : in out Definition;
      Person_Name : in     String);

   procedure Initialize
     (Self        : in out Definition;
      Person_Name : in     String;
      Person_Id   : in     Id_T);

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

end Cart_Instance;
