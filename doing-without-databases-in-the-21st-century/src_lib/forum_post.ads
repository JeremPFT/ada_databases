with User;

package Forum_Post is

   type Type_Definition (Top_Level : Boolean) is
   record
      Replies        : Type_Definition_Vector;
      Keywords       : String_Vector;
      Utc_Time_Stamp : Local_Date_Time;
      Unique_Id      : Long_Integer;
      Author         : User.Type_Definition;
      Html_Text      : String;

      case Top_Level is
        when True =>
           null;
        when False =>
           Post_Replied_To : Forum_Post;
      end case;
   end record;

   function Get_Display_Html
     (Self : in Type_Definition)
     return String;

   function Get_Summary_Html
     (Self : in Type_Definition)
     return String;

end Forum_Post;
