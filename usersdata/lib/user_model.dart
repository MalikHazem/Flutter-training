class UserModel{
    int id;
    String name;
    int salary = 1880;
    int age;
    String img = "";
    UserModel({required this.id, required this.name, required this.age })
    {
        img=  "https://picsum.photos/id/${id}/200/300";
    } 
}