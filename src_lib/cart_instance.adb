-------------------------------------------------------------------------------
--  Defines cart type.
-------------------------------------------------------------------------------

with Id_Value;
with Id_Checker;
with Cart_Util;

package body Cart_Instance is

   Book_Exception : exception renames Cart_Util.Book_Exception;

   procedure Initialize
     (Self        : in out Type_Definition;
      Person_Name : in     String)
   is
   begin
      if Person_Name'Length = 0 then
         raise Book_Exception with "empty customer name";
      end if;

      Self.Customer_Name := Person_Name;
   end Initialize;

   procedure Initialize
     (Self        : in out Type_Definition;
      Person_Name : in     String;
      Person_Id   : in     Id_T)
   is
   begin
      if Person_Name'Length = 0 then
         raise Book_Exception with "empty customer name";
      end if;

      declare
         Check_Id : Id_Checker.Type_Definition;
      begin
         if not Check_Id.Is_Valid (Person_Id) then
            raise Book_Exception with "invalid id: " & Id_Value'Image (Person_Id);
         end if;
      end;

      Self.Customer_Name := Person_Name;
      Self.Customer_Id := Person_Id;
   end Initialize;

   procedure Add_Book
     (Self    : in out Type_Definition;
      Book_Id : in     Id_T)
   is
   begin
      declare
         Check_Id : Id_Checker.Type_Definition;
      begin
         if not Check_Id.Is_Valid (Book_Id) then
            raise Book_Exception with "invalid id: " & Id_Value'Image (Book_Id);
         end if;
      end;

      Self.Content.Append (Book_Id);
   end Add_Book;

   procedure Remove_Book
     (Self    : in out Type_Definition;
      Book_Id : in     String)
   is
      Remove_Result : Boolean := False;
   begin
      Remove_Result := Self.Content.Remove (Book_Id);

      if not Remove_Result then
         raise Book_Exception with "book """ & Book.Get_Title & """ not in cart";
      end if;
   end Remove_Book;

   function Get_Contents
     (Self : in Type_Definition)
     return Id_List
     is (Self.Content);

   procedure Clear
     (Self : in out Type_Definition)
   is
   begin
      Self.Content.Clear;
   end Clear;

end Cart_Instance;
