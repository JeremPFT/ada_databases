package Data_Object.Book is

   type Object_T is private;

   procedure Initialize
     (Self   :    out Object_T;
      Id     : in     Id_T;
      Title  : in     String;
      Author : in     String);

   function Get_Id
     (Self : in Object_T) return Id_T;

   function Get_Title
     (Self : in Object_T) return String;

   function Get_Author
     (Self : in Object_T) return String;

end Data_Object.Book;
