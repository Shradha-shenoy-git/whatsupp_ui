import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("calls"),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          Text("Favorites"),
          ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEVnwQD///9gvwBhvwBavQD///34/PKy3o7k89Xt9+PW7cH3/PCV0mHI562S0Vry+evs9+bg8tHG56e/5KCm2XiCy0OLz0vm9Nq34JSLzlB+yTt4xyra78dvxBe64Zl2xyjS7Lqo2Yec1Wui13Ob1WqCyzTU7bza78Sq2oHH56ysYzwSAAAJN0lEQVR4nO2daXebOhCGQRIQbBIvwUvAeGl70/b//8Er7LixQUIDM2Ixfr/05Nin8FjSaCTNjBz30eV0/QLW9SQcvp6Ew9eTcPh6Eg5fT8Lh60k4fD0JSeT5s/niuNxvg+B0OgXBdr88LuYz32vj4ZYJvXDxHkerjAkhWC7O+fnf/O9sFcXvi9Ayp0XC6SRYHxyRQzlq5bjCOayDydTea1gi9I9xJltJh1YAlS2axUffzqtYIPQ22w8mYHA3mIJ9bDcWeiw54UuQMGDblduSJcEL9QvREk73aVO8f5DpnnZQEhJ6u0gwBN1VTEQ7wt5KRugv09pjTycu0iWZ3SEinAUZGd+FMQtmNK9GQujHjKJ73ouxmKQdCQhnAafnOzNyinZEE3p7xw7fmdHZo20OlvDzYI/vzHj47JQwXAmrfLnEKuyM0NujZneoOEN1VQThIrHbQb/FkkUXhAHpBFgtLoLWCcPE/gi8lUiajsaGhK9Oew14EXde2ySM223Ai0TcGuGsNRNzL5Y0cXEaEO5a76FXcWfXBuFrV3xnxvqDsTbhtosh+C2xtU34q1tAifjLLmHUNaBEjCwSem/dGNF7sbdabmodQm/VB0CJuKqDWIOwL4A1EWsQ9qKLXsTebBBG/QGUiHBzAybsfJq4F3zSgBJ2PNGXBZ76gYSvfQOUiEAHDka469IX1YnD3HAQ4axrGI1AiykQYdLHJpSNmFARxn2aJ27FIKt+AGEPrcxVEGtjJgy7xqiUeQfOTNjTQXgRYCgaCYP+9tFc5q1iE+Gi34AS0bThbyD0et1Hc/HEsJIyEO77OlF8i+0xhGH/ASVitT2tJlz1vY/m4qvmhJ99NzMXicqD8CpC79D1uwN1qDI2VYQDMDMXVRqbCsK+rplUqlhHVRAGQ2lC2YgVno2e0B+CHb2K6wPE9IS9XRWqVLFS1BLOhgQoEbUjUUs4oFGYSz8SdYR+1vU711SmG4k6wuUw3JlviWU9Qi8dkiXNxVONY6Mh3A2tCWUjajaINYTR0JpQNqLmOEpNOB1eE8pGVOdpqAkH43PfSuN/qwnT9t5Ln9lWWymc8IWkCbngWZokacY1kahcOFmyWq9ShyZUlSlzppSEFP6MyH5+bs4jw98co3I8PxdZPAkv03T4GVG0pNqvURESbCGKw3064SwoIIj0/gvhD7xxU28sqgg32CbkvDzop283CJy9l76wyNC/K9sACbdIQn5QDoj3f/8tT1Wv4qGjPZjqbF9F+IH7MXmmWclM2BVQ84Wf2J/2A0boI5+j36GdXDoq167lsEFJTLHAUBAecWNeTHTv/7ViYRVnKUgbJ44gwhj1FF4ZyvODOexU8TnyOJYrNjMUhLi1L688RZhmXLtUPQvpL2YQQpzXrfPwr3oVfys/93C/r8L7LhNOUITGA8v/DJ8vUY2oMAJlQqTLZgBwTanoOEuucNzKb7RG5dPXDMJWCPf8tZkQd+Ck8Mbq6h3ViOVjqBIhzl5XH+WB9Bs3HZdMeYkQF3wh8GUt5sSWrkSI6yQCl7Oby0cRlodJiRDn0QjVoqFNwrJXUyLE7SOK32jCkNjjKBJ6uPALaGhyhXCWhpdSMYqEyBMZU/gOQDinpnxCUyREHhtyk1Nm1g/cAqp0kFgkxNlq2U3xdSyQLzA3EGJjEXXnI2BtsC9QnBCLhMgFvmEBDBD2QKG0zC8SIse5FLKOFfZAgRVPSouE6DMZVr3CNWmBfn7RmhcJsXulpkhBk5CWVLFnWiTEH1mglhchft+7uAamJ+TqQy6Y8GFKRsIT/gwI0YgEYUr8ZJ/QyRrP+uhR2BJhVaRgpV4IwgeMhCTBXrzhKhG1CfWlFiyNFK+Ran0jkhQyIyF6PjxLNNlym1I82TwfEsWZNNmveaMJVzD5NHi/9Cxjrk5ZWJ//S0a/lOg5DvtTE3BO81zz2oIsV81wxlQUcn/o5rmm9SF2jf8tdfyOTn+o4syMa3y68G7u1CiwSpdrbNynIYx+rmFtsFsXNzLutZGNB6dGMSAqK+NA9ktJY2fFTxCgT5ioat7zRp5bFCROEELKLEfAuQXu7KkoQFVOb035RMDZE3HytjBt8xPXDwOcH1KXUDA54dTVp8xnwOSJo9pUj7NIu6gDOscnWYbeqcJ/ox2DDiwWw0JKl3aT2P+gfhYongYXE6WUphV9+kqvoJgoG9kkSsTpgT4xBxTXhoxN1Dy5bG5CfFx3WaDYRFqv5qrSTLyxAQiML6Va5t+rMC++0KXK3D4EFiOMjfPWPf12E8yCOcsFjPPGxurrdOOj/rXzI0Jj9Yn2TMsS190pW0UYwfkW6JwZnb6qqv+xld0IzpmxVzopXxJ7BBlOasHznizm4otoRu6p/RM8d40o/1ApbrFkfY38wzZzSAlVI4d0BHnAj5/L/fj5+COoqfD4dTEev7bJCOrTPH6NoRHUiXr8Wl8jqNc2pJHYrObeCOomDsf/blr7cgT1Sx+/Bu0I6giPoBb0EIwNrp73CGqyP35d/RHcjTCC+y1GcEfJ498z0+OVItVdQb0dinT3PfV2HUV3Z9fj37vWS2tDe3feCO4/HMEdliO4h3QEd8mO4D7g3iBau9N5BPdyu49/t7rbg0kDPk00JOx66gdP9M0J3dcufVRev5ZYfUJ3ZzFwy8DnNKjR1IDQndFnEYDEEtByiYBQrvq7GIwCsqKnInRfW++p3GlYzq8hoRsm7TajSJpW1WxKmG8Vt9eMHJCpSU/oLlozOCwxbd3bIXS9PWujGTnbY0oVYgjlaFzZH41ihatriyN03c+D3a7KDtjay1hC2VXLd8jQ8TmoDkpDeL5Dxg4j40ETJ4ae0HX9mNEzMhbXKB2iFwlh3o4Z6fTIRUbRfrmICGU7LlMyRi7SJUn75SIjlDZnFwmKzspEtEPbl28REkpN9ylDeQGcsXSPrPFaEC2h1EuQNIWUeEmAL8xfEDmh7K2b7QerPSa5YB/bDWHvvMoCYS7/GGdCANuSMyGy+EhmW+5liTDXdBKsD47E1KZty0+YcA7rYEI79O5kkTCXFy7e42iVyVYSLFcOlSv/O1tF8fsitNAzb2WZ8CLPn80Xx+V+GwSn0ykItvvlcTGf+ZbZLmqFsFM9CYevJ+Hw9SQcvp6Ew9eTcPh6Eg5fT8Lh6388RJ5nOD3fRgAAAABJRU5ErkJggg==",
            ),
          ),
          title: Text("Favorites"),
        ),

          Text("Recents"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF2yaox2cALIq_yyd-9qEyovEsficJr7X9QQ&s",
              ),
            ),
            title: Text("sumanth"),subtitle: Text("july12 ,8:00AM"),trailing: Icon(Icons.call) ,
          ),

        ],
      ),
    );
  }
}
