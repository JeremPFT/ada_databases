with Serializable;

package Forum_Operation is

   type Type_Definition is abstract
     new Serializable.Interface_Definition;

   type Operation_Type_Enumerate is
     (
      Read,
      Post,
      Edit,
      Reply,
      Delete
     );

   function Factory
     (Operation_Type : in Operation_Type_Enumerate;
      Buffer         : in Byte_Buffer)
     return Type_Definition;

   function Perform
     (Service : in Data_Access_Service)
     return String;
   --  usage : read post id from buffer and use service to load post.

end Forum_Operation;
