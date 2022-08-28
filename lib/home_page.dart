import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('facebook',style: TextStyle(
          color: Colors.blueAccent,fontSize: 30,
            fontWeight:FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search,color: Colors.grey[400],)),
          IconButton(onPressed: (){},
              icon: Icon(Icons.camera_alt,color: Colors.grey[400],)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(child: Row(
                  children: [
                    Container(
                      width: 50,height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/pic8.webp'),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      height: 46,
                      padding: EdgeInsets.only(left: 15,right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(
                          width: 1, color: Colors.grey.shade500,
                        )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What`s on your mind?',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey.shade500)
                        ),
                      ),
                    )),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_call, color: Colors.red),
                          SizedBox(width: 5,),
                          Text('Live',style: TextStyle(color: Colors.grey[700]),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,bottom: 15),
                      width: 1,
                      color: Colors.grey[300],
                    ),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo,color: Colors.green,),
                        SizedBox(width: 5,),
                        Text('Photo',style: TextStyle(color: Colors.grey[700])),

                      ],
                    ),),Container(
                      margin: EdgeInsets.only(top: 15,bottom: 15),
                      width: 1,
                      color: Colors.grey[300],),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text('Check in',style: TextStyle(color: Colors.grey[700])),
                      ],
                    ),),
                  ],
                ),),
        ],
      ),
    ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: 'assets/images/pic2.webp',
                  userImage: 'assets/images/pic3.webp',
                  userName: 'User One',
                ),
                makeStory(
                  storyImage: 'assets/images/pic4.jpg',
                  userImage: 'assets/images/pic5.webp',
                  userName: 'User Two',
                ),
                makeStory(
                  storyImage: 'assets/images/pic6.webp',
                  userImage: 'assets/images/pic7.webp',
                  userName: 'User Three',
                ),
                makeStory(
                  storyImage: 'assets/images/pic8.webp',
                  userImage: 'assets/images/pic2.webp',
                  userName: 'User Four',
                ),
                makeStory(
                  storyImage: 'assets/images/pic1.webp',
                  userImage: 'assets/images/pic3.webp',
                  userName: 'User Five',
                ),
              ],
            ),
          ),
          makeFeed(
            userName: 'User One',
            userImage: 'assets/images/pic6.webp',
            feedTime: '1 hr ago',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage1: 'assets/images/pic1.webp',
            feedImage2: 'assets/images/pic3.webp'
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/pic3.webp',
            feedTime: '2hr age',
            feedText: 'All the lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage1: 'assets/images/pic7.webp',
            feedImage2: 'assets/images/pic4.jpg'
          ),
        ]),);

  }
  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(aspectRatio: 1.3/2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: AssetImage(storyImage),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue,width: 2),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(userName,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),);
  }

  makeFeed({userName,userImage,feedTime,feedText,feedImage1,feedImage2}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50, width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(
                              color: Colors.grey[500],fontSize: 18,
                              fontWeight: FontWeight.bold,letterSpacing: 1
                            ),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                          ],
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(
                      Icons.more_horiz, size: 30,color: Colors.grey[600],
                    ))
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText,style: TextStyle(
                  fontSize: 15,color: Colors.grey[600],
                  letterSpacing: 1.5
                ),),
                SizedBox(height: 20,)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(feedImage1),
                    fit: BoxFit.cover
                  )
                ),),
              ),
              Expanded(child: Container(height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(feedImage2),
                        fit: BoxFit.cover
                    )
                ),),)
            ],
          ),
          SizedBox(height: 20,),
          Container(padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(offset: Offset(-5,0),
                  child: makeLove(),),
                  SizedBox(width: 5,),
                  Text('2,3K',style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                ],
              ),
              Text('400 Comments',style: TextStyle(fontSize: 13,color: Colors.grey[700]),),
            ],
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton()
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  Widget makeLike(){
    return Container(
      width: 25,height: 25,
      decoration: BoxDecoration(
        color: Colors.blue, shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
      ),
    );
  }
  Widget makeLove(){
    return Container(
      width: 25,height: 25,
      decoration: BoxDecoration(
        color: Colors.red,shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite,
        size: 12,color: Colors.white,),
      ),
    );
  }
  Widget  makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive ? Colors.blue:Colors.grey[600],),
            SizedBox(width: 5,),
            Text('Like',style: TextStyle(color: isActive ? Colors.blue:Colors.grey[600]),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat,size: 18,color: Colors.grey[600],),
            SizedBox(width: 5,),
            Text('Comment',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,size: 18,color: Colors.grey[600],),
            SizedBox(width: 5,),
            Text('Share',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),
      ),
    );
  }

}
