<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/18
  Time: 1:01
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ZHU'S Coding</title>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/src/wysiwyg.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/src/wysiwyg-editor.js"></script>
  <!-- github.io delivers wrong content-type - but you may want to include FontAwesome in 'wysiwyg-editor.css' -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/src/wysiwyg-editor.css" />
  <script type="text/javascript">
    $(document).ready(function(){
      // Full featured editor
      $('#editor1,#editor2,#editor3').each( function(index, element)
      {
        $(element).wysiwyg({
          classes: 'some-more-classes',
          position: index == 0 ? 'top-selection' : (index == 1 ? 'bottom' : 'selection'),
          buttons: {
            // Dummy-HTML-Plugin
            dummybutton1: index != 1 ? false : {
              html: $('<input id="submit" type="button" value="bold" />').click(function(){
                // We simply make 'bold'
                if( $(element).wysiwyg('selected-html') )
                  $(element).wysiwyg('bold');
                else
                  alert( 'Please selection some text' );
              }),
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            // Dummy-Button-Plugin
            dummybutton2: index != 1 ? false : {
              title: 'Dummy',
              image: '\uf1e7',
              click: function( $button ) {
                alert('Do something');
              },
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            // Smiley-Plugin
            smilies: {
              title: 'Smilies',
              image: '\uf118', // <img src="path/to/image.png" width="16" height="16" alt="" />
              popup: function( $popup, $button, $editor ) {
                var list_smilies = [
                  '<img src="<%=request.getContextPath()%>/resources/smiley/afraid.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/amorous.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/angel.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/angry.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/bored.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/cold.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/confused.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/cross.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/crying.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/devil.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/disappointed.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/dont-know.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/drool.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/embarrassed.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/excited.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/excruciating.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/eyeroll.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/happy.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/hot.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/hug-left.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/hug-right.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/hungry.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/invincible.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/kiss.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/lying.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/meeting.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/nerdy.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/neutral.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/party.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/pirate.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/pissed-off.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/question.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/sad.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/shame.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/shocked.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/shut-mouth.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/sick.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/silent.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/sleeping.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/sleepy.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/stressed.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/thinking.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/tongue.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/uhm-yeah.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/wink.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/working.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/bathing.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/beer.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/boy.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/camera.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/chilli.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/cigarette.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/cinema.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/coffee.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/girl.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/console.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/grumpy.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/in_love.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/internet.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/lamp.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/mobile.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/mrgreen.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/musical-note.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/music.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/phone.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/plate.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/restroom.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/rose.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/search.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/shopping.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/star.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/studying.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/suit.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/surfing.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/thunder.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/tv.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/typing.png" width="16" height="16" alt="" />',
                  '<img src="<%=request.getContextPath()%>/resources/smiley/writing.png" width="16" height="16" alt="" />'
                ];
                var $smilies = $('<div/>').addClass('wysiwyg-toolbar-smilies')
                        .attr('unselectable','on');
                $.each( list_smilies, function(index,smiley){
                  if( index != 0 )
                    $smilies.append(' ');
                  var $image = $(smiley).attr('unselectable','on');
                  // Append smiley
                  var imagehtml = ' '+$('<div/>').append($image.clone()).html()+' ';
                  $image
                          .css({ cursor: 'pointer' })
                          .click(function(event){
                            $(element).wysiwyg('inserthtml',imagehtml);
                            // do not close popup
                            //$(element).wysiwyg('close-popup');
                          })
                          .appendTo( $smilies );
                });
                $smilies.css({ maxWidth: parseInt($editor.width()*0.95)+'px' });
                $popup.append( $smilies );
                // Smilies do not close on click, so force the popup-position to cover the toolbar
                var $toolbar = $button.parents( '.wysiwyg-toolbar' );
                if( ! $toolbar.length ) // selection toolbar?
                  return ;
                var left = 0,
                        top = 0,
                        node = $toolbar.get(0);
                while( node )
                {
                  left += node.offsetLeft;
                  top += node.offsetTop;
                  node = node.offsetParent;
                }
                left += parseInt( ($toolbar.outerWidth() - $popup.outerWidth()) / 2 );
                if( $toolbar.hasClass('wysiwyg-toolbar-top') )
                  top -= $popup.height() - parseInt($button.outerHeight() * 1/4);
                else
                  top += parseInt($button.outerHeight() * 3/4);
                $popup.css({ left: left + 'px',
                  top: top + 'px'
                });
                // prevent applying position
                return false;
              },
              //showstatic: true,    // wanted on the toolbar
              showselection: index == 2 ? true : false    // wanted on selection
            },
            insertimage: {
              title: 'Insert image',
              image: '\uf030', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            insertlink: {
              title: 'Insert link',
              image: '\uf08e' // <img src="path/to/image.png" width="16" height="16" alt="" />
            },
            // Fontanme + Fontsize Plugin
            fontname: index == 1 ? false : {
              title: 'Font',
              image: '\uf031', // <img src="path/to/image.png" width="16" height="16" alt="" />
              popup: function( $popup, $button, $editor ) {
                var list_fontnames = {
                  // Name : Font
                  'Arial, Helvetica' : 'Arial,Helvetica',
                  'Verdana'          : 'Verdana,Geneva',
                  'Georgia'          : 'Georgia',
                  'Courier New'      : 'Courier New,Courier',
                  'Times New Roman'  : 'Times New Roman,Times'
                };
                var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                        .attr('unselectable','on');
                $.each( list_fontnames, function( name, font ){
                  var $link = $('<a/>').attr('href','#')
                          .css( 'font-family', font )
                          .html( name )
                          .click(function(event){
                            $(element).wysiwyg('fontname',font);
                            $(element).wysiwyg('close-popup');
                            // prevent link-href-#
                            event.stopPropagation();
                            event.preventDefault();
                            return false;
                          });
                  $list.append( $link );
                });
                $popup.append( $list );
              },
              //showstatic: true,    // wanted on the toolbar
              showselection: index == 0 ? true : false    // wanted on selection
            },
            fontsize: index == 1 ? false : {
              title: 'Size',
              image: '\uf034', // <img src="path/to/image.png" width="16" height="16" alt="" />
              popup: function( $popup, $button, $editor ) {
                var list_fontsizes = {
                  // Name : Size
                  'Huge'    : 7,
                  'Larger'  : 6,
                  'Large'   : 5,
                  'Normal'  : 4,
                  'Small'   : 3,
                  'Smaller' : 2,
                  'Tiny'    : 1
                };
                var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                        .attr('unselectable','on');
                $.each( list_fontsizes, function( name, size ){
                  var $link = $('<a/>').attr('href','#')
                          .css( 'font-size', (8 + (size * 3)) + 'px' )
                          .html( name )
                          .click(function(event){
                            $(element).wysiwyg('fontsize',size);
                            $(element).wysiwyg('close-popup');
                            // prevent link-href-#
                            event.stopPropagation();
                            event.preventDefault();
                            return false;
                          });
                  $list.append( $link );
                });
                $popup.append( $list );
              }
              //showstatic: true,    // wanted on the toolbar
              //showselection: true    // wanted on selection
            },
            bold: {
              title: 'Bold (Ctrl+B)',
              image: '\uf032', // <img src="path/to/image.png" width="16" height="16" alt="" />
              hotkey: 'b'
            },
            italic: {
              title: 'Italic (Ctrl+I)',
              image: '\uf033', // <img src="path/to/image.png" width="16" height="16" alt="" />
              hotkey: 'i'
            },
            underline: {
              title: 'Underline (Ctrl+U)',
              image: '\uf0cd', // <img src="path/to/image.png" width="16" height="16" alt="" />
              hotkey: 'u'
            },
            strikethrough: {
              title: 'Strikethrough (Ctrl+S)',
              image: '\uf0cc', // <img src="path/to/image.png" width="16" height="16" alt="" />
              hotkey: 's'
            },
            forecolor: {
              title: 'Text color',
              image: '\uf1fc' // <img src="path/to/image.png" width="16" height="16" alt="" />
            },
            highlight: {
              title: 'Background color',
              image: '\uf043' // <img src="path/to/image.png" width="16" height="16" alt="" />
            },
            alignleft: index != 0 ? false : {
              title: 'Left',
              image: '\uf036', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            aligncenter: index != 0 ? false : {
              title: 'Center',
              image: '\uf037', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            alignright: index != 0 ? false : {
              title: 'Right',
              image: '\uf038', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            alignjustify: index != 0 ? false : {
              title: 'Justify',
              image: '\uf039', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            subscript: index == 1 ? false : {
              title: 'Subscript',
              image: '\uf12c', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: true    // wanted on selection
            },
            superscript: index == 1 ? false : {
              title: 'Superscript',
              image: '\uf12b', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: true    // wanted on selection
            },
            indent: index != 0 ? false : {
              title: 'Indent',
              image: '\uf03c', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            outdent: index != 0 ? false : {
              title: 'Outdent',
              image: '\uf03b', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            orderedList: index != 0 ? false : {
              title: 'Ordered list',
              image: '\uf0cb', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            unorderedList: index != 0 ? false : {
              title: 'Unordered list',
              image: '\uf0ca', // <img src="path/to/image.png" width="16" height="16" alt="" />
              //showstatic: true,    // wanted on the toolbar
              showselection: false    // wanted on selection
            },
            removeformat: {
              title: 'Remove format',
              image: '\uf12d' // <img src="path/to/image.png" width="16" height="16" alt="" />
            }
          },
          // Submit-Button
          submit: {
            title: 'Submit',
            image: '\uf00c' // <img src="path/to/image.png" width="16" height="16" alt="" />
          },
          // Other properties
          dropfileclick: 'Drop image or click',
          placeholderUrl: 'www.example.com',
          maxImageSize: [600,200]
          /*
           onImageUpload: function( insert_image ) {
           // Used to insert an image without XMLHttpRequest 2
           // A bit tricky, because we can't easily upload a file
           // via '$.ajax()' on a legacy browser.
           // You have to submit the form into to a '<iframe/>' element.
           // Call 'insert_image(url)' as soon as the file is online
           // and the URL is available.
           // Best way to do: http://malsup.com/jquery/form/
           // For example:
           //$(this).parents('form')
           //       .attr('action','/path/to/file')
           //       .attr('method','POST')
           //       .attr('enctype','multipart/form-data')
           //       .ajaxSubmit({
           //          success: function(xhrdata,textStatus,jqXHR){
           //            var image_url = xhrdata;
           //            console.log( 'URL: ' + image_url );
           //            insert_image( image_url );
           //          }
           //        });
           },
           onKeyEnter: function() {
           return false; // swallow enter
           }
           */
        })
                .change(function(){
                  if( typeof console != 'undefined' )
                    console.log( 'change' );
                })
                .focus(function(){
                  if( typeof console != 'undefined' )
                    console.log( 'focus' );
                })
                .blur(function(){
                  if( typeof console != 'undefined' )
                    console.log( 'blur' );
                });
      });

      // Demo-Buttons
      $('#editor3-bold').click(function(){
        $('#editor3').wysiwyg('bold');
        return false;
      });
      $('#editor3-red').click(function(){
        $('#editor3').wysiwyg('highlight','#ff0000');
        return false;
      });
      $('#editor3-sethtml').click(function(){
        $('#editor3').wysiwyg('html', 'This is a the html text');
        return false;
      });
      $('#editor3-inserthtml').click(function(){
        $('#editor3').wysiwyg('inserthtml', 'This is some text');
        return false;
      });

      // Raw editor
      var option = {
        element: $('#editor0').get(0),
        onkeypress: function( code, character, shiftKey, altKey, ctrlKey, metaKey ) {
          if( typeof console != 'undefined' )
            console.log( 'RAW: '+character+' key pressed' );
        },
        onselection: function( collapsed, rect, nodes, rightclick ) {
          if( typeof console != 'undefined' && rect )
            console.log( 'RAW: selection rect('+rect.left+','+rect.top+','+rect.width+','+rect.height+'), '+nodes.length+' nodes' );
        },
        onplaceholder: function( visible ) {
          if( typeof console != 'undefined' )
            console.log( 'RAW: placeholder ' + (visible ? 'visible' : 'hidden') );
        }
      };
      var wysiwygeditor = wysiwyg( option );
      //wysiwygeditor.setHTML( '<html>' );
    });
  </script>
  <style>
    body {
      font-family: Arial,Verdana;
    }
    p {
      margin: 0;
      padding: 0;
    }
    .button {
      -moz-user-select: none;
      -webkit-touch-callout: none;
      -webkit-user-select: none;
      -khtml-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }
    /* CSS for the font-name + font-size plugin */
    .wysiwyg-toolbar-list {
      max-height: 16em;
      overflow: auto;
      overflow-x: hidden;
      overflow-y: scroll;
    }
    .wysiwyg-toolbar-list a,
    .wysiwyg-toolbar-list a:link,
    .wysiwyg-toolbar-list a:visited {
      display: block;
      color: black;
      padding: 5px 10px;
      text-decoration: none;
      cursor: pointer;
    }
    .wysiwyg-toolbar-list a:hover {
      color: HighlightText;
      background-color: Highlight;
    }
    /* CSS for the smiley plugin */
    .wysiwyg-toolbar-smilies {
      padding: 10px;
      text-align: center;
      white-space: normal;
    }
    .wysiwyg-toolbar-smilies img {
      display: -moz-inline-stack; /* inline-block: http://blog.mozilla.org/webdev/2009/02/20/cross-browser-inline-block/ */
      display: inline-block;
      *display: inline;
    }


    #write_top{
      margin-left: 20%;
      margin-top: 5%;
    }

  </style>
</head>
<body>

<form method="post" action="#" id="write_form">
  <div id="write_top">
    标题： <input type="text" name="article_title" id="title" tabindex="1" /><br/>
    作者： <input type="text" name="author"  tabindex="1" /><br/>
    分类：<label><input name="category" type="radio" value="code" />编程 </label>
    <label><input name="category" type="radio" value="bigData" />大数据 </label>
    <label><input name="category" type="radio" value="digit" /> 数码</label>
    <label><input name="category" type="radio" value="life" />生活 </label>

  </div>

  <div style="width:860px; margin: 30px auto;">
    <div style="color:#aa0000;font-weight:bold">Coding:</div><br/>
    <textarea id="editor1" name="article_context" placeholder="Type your text here...">
      Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
      Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </textarea>

    <br/>
    <button type="submit" class="btn btn-1 btn-1a" style="font-size: 16px;font-family: 微软雅黑">提交</button>


  </div>
</form>

<a href="../articles/?page=1"><button class="btn btn-1 btn-1a" style="font-size: 16px;font-family: 微软雅黑">返回</button></a>

</body>
</html>

