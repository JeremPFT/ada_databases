-------------------------------------------------------------------------------
--  Defines cart type.
-------------------------------------------------------------------------------

package Cart_Instance is

   type Type_Definition is
     new Cart_Interface.Type_Definition
   with record
      Customer_Id   : Id_T          := Invalid_Id;
      Customer_Name : access String := null;
      Content       : Book_Id_List  := Book_Id_Empty_List;
   end record;

   procedure Initialize
     (Self        : in out Type_Definition;
      Person_Name : in     String);

   procedure Initialize
     (Self        : in out Type_Definition;
      Person_Name : in     String;
      Person_Id   : in     Id_T);

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

end Cart_Instance;
