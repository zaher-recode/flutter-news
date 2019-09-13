import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/article_model.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;


class AtricleList extends StatelessWidget {
  final List<ArticleModel> articles;
  AtricleList(this.articles);
  Widget build(context){
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, int index){
        return Container(
          
          margin: const EdgeInsets.fromLTRB(21.0,31.0,26.0,0.0),
          decoration: BoxDecoration( 
            boxShadow: [
              BoxShadow(
                color: kColorLightGrey,
                offset: Offset(1.0,3.0),
                blurRadius: 3.0,
                spreadRadius: 1.0,
              )
            ],
            
          ),
          
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              
                        ),
            child: Column(
              
              children: <Widget>[
                Image.network('${articles[index].urlToImage}'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8.0,14.0,10.0),
                  child: Text('${articles[index].title}',
                  style: kTextSubTitle,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,8,14.0, 10.0),
                  child: Text('${articles[index].description}',
                  style: kTextBody,),
                ),

              ],
            ),
          ) 
        );
      }
    );
  }
}