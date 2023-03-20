import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  //var users = ["ali", "mohamad", "feras"];
  var users = [
    {'name': 'ali', 'age': 22},
  ];

  var name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          color: Colors.grey,
          child: ListView(
            children: [
              ...users.map((user) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListTile(
                      trailing:
                          CircleAvatar(child: Icon(Icons.hourglass_empty)),
                      leading:
                          CircleAvatar(child: Text(user['age'].toString())),
                      title: Text(user['name'].toString()),
                      subtitle: Text(user['age'].toString())
                      ),
                );
              }),
            ],
          ),
        ),
        TextField(
          onChanged: (val) {
            name = val;
          },
        ),
        Container(
          height: 150,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                users.add({'name': name, 'age': 22});
                name = '';
              });

              print(users);
            },
            child: const Text("add"),
          ),
        ),
        Image.network(
            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxEQEhIQEBASDhAPEBUVFRUSEhIPEhYSFRUWFhUVFRUYHiggGBolGxUVITEhJSkrLi4uFx8zODYtNygtLi0BCgoKDg0OFxAQFysdICUtLS0rLSstKy0tKy0tLS0tLS0tLS0tLS0tLy0rLSstLS0tLS0tLS0tLS0tLSsrLS0tLf/AABEIAIoBbAMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQIDBAUGB//EAEAQAAIBAgMEBQoFAgQHAAAAAAABAgMRBBIhMVFhkQVBUnHRBhMUFSJigaGiwTJCkrHwI7JypMLhBxYkM0Oz8f/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMFBP/EACMRAQACAgIBAwUAAAAAAAAAAAABEQIhEjEDBDJREyJBQmH/2gAMAwEAAhEDEQA/APtQAKyArKP7CMP5qFWAIk7ASRK/VqRe235FgABDAkFbhSILEEkIASVinrfXX5EoCSFckpWqZVfa3olvZRcGmsRK9rwvutJ/DMbFOd7707NcSTIyAhvmyE+p/wCxRYAAAAAAAAAAAAAAAAhsNkJGMsvxCxBcWJIbMzjH7SX8JSJK3F1wN41WklYFW1vXMNreuZpFgVclvXMZlvXMCwK5lvXMZ1vXNATJX67dxIKVZ5Vsu27Jb2FXBrurNayUbdeW914mwAIaJAFci3LkWAAEMkhkFWVZZiKJYuAQUASQANfFbYvYk2u5tWTNkhq+j1RRqKdoZMrzWta2l99y+EWsntVoq+9past6LH3rbszsZopLRaJEBpParhRS6kczp3p2jg4xdTNOdR2p0qaz1akt0Y/Fa8UanrPHZfOSwdKnHbkdepUq24qnTlZ8FcTMR2O+DkYDpyFf2YZadWzeWbzRaTtJwcdtno07SjpdK6IxHSlejeVTDedpLbPDT89KK3ypSUZW/wALkUdgGt0fjqWIgqtGpGrTlscX19aa2p8HqbIAAAAAAAAAArIzlNRZAiWEQY9sf2V7EQ9yLIousVGPe5O1lFbvuyEtui4E5f5djIuPNnSJREb66dXWrakx4jIuPNjIv42US+BTXd8l4ktLc38f9xb3XzXiBHtfxLxMhjsuy/l4iy7L+XiBkNbFVHFxf5U/jezNkx16SmrP+MDWrYmNnZ3bXE24bF3I5voc9y5o6cdi7iagQo2be8lkkXEgSRYAASANOrjIxbi09O7xNmjK6T36mOthozabvpudr95nFCBckAQSRK9tNpIEZeskFZuxRYFFLjf9y4HjOioef6SxuIqe08JkoUU9VG6eaS46P9bO5jMW4OMYxvOabTm2oeyryV0m3JLXLbXXc7c7GU3gsVVxOVyw2MUPONf+OtTvFSe6Mk9u9W60b2FwUa051PPKpTdWM1GCUZRlCMUlKV8ys4t2WX8TTvdo8f1fiy8nn+72xGnbCax01ekejJ1KMcTCKhi4U41bRVk6sIp5fjHPTe9S1/Cjdw+JVSEKtN+zUjGcXwkrr9zm+V/lO8NKNChkdZLzlWUk5wo0VtlKKavJ3slfrW9HO8nOmoz85SjSqRjTiqmVqCcVU9pR0k0k220m7pO2xXXoenxyxxqXPLbL0tU9ArRx9JZaNWahjKa/D7X4a8V1Svt3/FntE76rVM8n5Q2ngsQ2moyw0pe0rNNJTjddTukdjyUqueCwspbXh6fyil9jvExPTLqgAoAAAAABVliLGM4uFhFSVk3uRqrHR48jLi/wvuZyGzXG5tHReOjufIiGOjro+Xec+4uOO7LdP0+O58h6fHc+RzLi5aHT9PjufImGNi2lrq9xyzJRese8Dsdey+i3cRm4P5eIhsLAVzcH8vEZuD+XiWAAAAACGuP7ALEkLmSAAAAAgkzQrUnYr51kVti7zGjlllN6aiGZTJUjGmWiZ5T8lQygA+hgAAAAAYMZX83CU7ZlBXkrZnk/Np12V3brtY1PVGHdp004JpOLpVJwhlezKovKl3I6KXX1nnsRh8Tg25YWHpWFbbeHzKFSk3q/MSejj15Hs6txKWGTF9DxVOpGioQdZNTcqUazkuN2rv8AxNo8VHyeqUZxToqpGOaVGnUnTfnK+idavZ2tG6tFX6l1u/pKvlxhI6VvPYafXCrRnGS5XRo1vKuWI9jAYSriqnVOUMlKL3t+LiVXP6c87Sw0ME6ssTjMbJJ3k2knJNqK/LG6Uer8z6j6L0fhFRpU6MdVSpxguOVJX+R5/wAl/JeVGcsXi5qvjKi27YU09qjxtpfYlouu/qAgAAAAAAAAAANfGfhfczks62M/C+5nJZQJctLCKuXyEmYGNIvk04loxsWMzkMBeltXeRURNLau81djrwjptfMLanra/wBmRTV+7+bS8urv+zAmXx+BTX3uSLT+Hxdil17vNgW1/liy5gASCLiLuBIIARIIFwJKliGjOUXCqTjcqqXEy2FjPCVtRU+JMIlwWMISwAG0CGuNiQAAPPeW/T88BQjWpwhUlKsoWne1nCpK+nX7C5hXoQeL6d8rcTHEPCYLDRr1YU4ym5ZpbYqVlFNaJSjq31mv0b5V9IVliqSw1NYrDQjJQSnq3OMZRcc23K29vUB6roXpmhjYSnRbnGnUcHmi4+0rPRPqaaZ0keF6B8qsRDEwweOwsMM67vFwi6ftyvZtXalmaauus90APO+WHlB6JCnGnOlGrWqxheft5ItNubgnd7EvieiPMeVHSawVXDzp0KMqmLrKE5yjadlkinmWr0fXuA6nk3iqtbC0atZWq1IXksuTW7/L1aWOmGAgAAAAAAADXxn4X3M5R18TG6a3o5zw74MqqxSRNyFQZCovZYxxFri5DovhqPMPgOIOxWltXeWVF7jJSw7utmjNRFDpU9hMurv+zIpPTiTLq7/swEvj8Lfci7976THi6+RJ2vd23dT8DV9ZPsrmEb1+L/Swu98rEZPdj/PgSotbEl/O4Kmz3v5FY97WnDYW14fMhRa2W+YQWv5np3eBOXi/l4Cz4DXh8wF2tuzf4lit7bdghu3OwEpi5ALQm4uVbEWY548uK0tcEEo3SJABAAAA8P8A8Xn/ANHSXX6VH/1VvFHuDh9M+TVLFV6NetObhh0/6V/6cpJ3Unu4222W4K8/030Fj6WLljcDkbq0oxnncE42jFS0npb2Iu/ecTyUlj6zxuLw2WeInKnFyapqEm5OU7ZvZ0SjzR9I6bwUcTQnRlUdJV45VKMrO72JdpPd1q6MfQuEw+Eoxo0pwUIK7bnG8m3Zzk+Mlb4W6gPAdK9CdNYqdKpWpwc6DvBxnh4NO6fU9dYo6efyh7NL/LeJ78xTxEFZucVdXV5JXW9b9qA8Ln8oezS/y3iaeN6K6YxNTDvFQpuNGvGStOhD80XLY9dI7D6TOajZNpZnZXdruzdlvdk+RzOnOhqGJdGVeUo+j1VUhafm05LWz5dWuj12gdVgAIAAAAAAAAhorkRcBVFTRSNNXfx+xlRSO1/H/SBEoLTv+zCpp93V4svKKe3q+Ay9/NgR5tEqCGXv5sZe/mwDjzIvs33+zJy9/NjIr361xYRLQyrciQBXItwyLcMiGRfy4Uhs+L/dliEiQgAAIlsfcRDr7/siZbPgVp9fw/ZASAyJysm3sSKIn327xHmcmtVcnd//AAmhWcHdbOtb0Y+njdrbrkohMI2ixDJBmVVMXn7vTYTiJ2i+Ohr0TluIVupnO6R6KdacZOtUpxik8sLf9yLeWabulo5Jq2t1uOjFEnWOkefpeTjTlF4mp5tylKyyubvkspuSaklkfVf2rX01mXkrSayyq1pRWVauF1GOdxgnl0inUbtwj1Kx3wUcPpPoOpXlOTxMoJ6RhGPsx/Aru/4naLfUrtPqu6/8rU9U61Zxas4/0knqpXdobbpa8DvADjUegrQlB16qvObvHJfLNRVnmi05ewnmsndy3srLydTeuIrOKd8v9JK7TTtaGiak9FvZ2wAAAQNXFYrI0kr34m0zTq4fO9trcLhWL1g+yuY9YPsrmW9XrtPkPV67T5FFfWD7K5j1g+yuZb1eu0+Q9XrtPkBX1g+yuY9YPsrmW9XrtPkPV67T5AV9YPsrmQsc73y/Pu8C/q9dp8h6vXafICvrB9lcx6wfZXMt6vXafIer12nyAr6wfZXMesH2VzLer12nyHq9dp8gLUukI/m9nuuzJ6bT3vkzFHBRT19r5Gf0On2fmyCvpsN75Mn02G98mT6HT7PzY9Dp9n5sIzRldX2EZu/kxD7v92UbW9fraAvm7+TGbv5Mx3W9frYut6/WwrJm7+TJT7+TRiut6/Wy9N936nIIsytPw/ZFmVp+H7ICWYMZFuNkrttcjYFijkrCT7PzRZYGfBfE6aJsBjoxaik9qVtC6JsBYkAEGOrSUrXvoWhBLYrFgRQArKaW1pd7SKiwKedj2o6cV/Oph1Y2cs0bLa7qy+PxQFwUnWjG7lKMUtt2lbZt3bVzQdWKu3KKSV3qtFxAuCqmm7JptK9rq9nsdiFVi7WlF3bS1WrW1LiBcAAQzHT6zIzHT6wq0u+3L7lMr7b+nwLz2aq/DaYvZ7H0oC2V9t/T4DK+2/p8Cvs9j6UPZ7H0oC2V9t/T4DK+2/p8Cvs9j6UPZ7H0oC2V9t/T4DK+2/p8Cvs9j6UPZ7H0oC2V9t/T4DK+2/p8Cvs9j6UPZ7H0oCyj77+nwMhiSXY+lGUDFUeq1tpw+5e67f8AaVne67t9jJd7lzfgBF12v7Rddr+0m73Lm/AXe5c34BCH3f7sh3976SYfd/uzDJ6sDLr730jX3vpK0XtMoFNfe+kmN+Pxt9iwChSl9l+xcx0vsv2CLgkAQiQAAAAAAAAABp9J9G08TFQqpuKlmVm4u9mtq7796T6jcAGhPoei6lSq4vNVpunLV2cZRjG1urSP1S3lfUtLzLw6zKm3drNrfOpp3e5xS7jogK0pdGU25tp/1Y5Xrpa0Iu3FqnD9PeRU6KpSlOftKVRxbaf5oOLi0npo4RN4AaWH6Mp05KUM0XGnGmvav7Ecllrwglfr5Cl0ZSi4OKcXCcp6PVykrPM9rVrabNFuN0AAAEDBnSvczmGoFR6RHjyI9Jjx5FLCxaF/SY8eQ9Jjx5FLCwoX9Jjx5D0mPHkUsLChf0mPHkx6VHjyf86yliiWvP8A0ihmeJjx5Mj0qPvfpZWwsKFvSo+9+lj0qPvfpZWwSAtmUmnrykjLp731EUzKQY9Pe+oae99RkAR//9k=")
      ],
    );
  }
}
