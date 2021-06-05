import QtQuick 2.6
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 1920
    height: 1080
    //width: 1366
    //height: 768
    visibility: "FullScreen"
    title: qsTr("Media Player")
    //Backgroud of Application
    Rectangle {
        id: rcBackground
        Image {
            source: "Image/background.png"
        }
    }

    //Header
    Rectangle {
        id: rcHeader
        height: 100
        Image {
            id: imgHeaderBackground
            height: parent.height
            source: "Image/title.png"
        }
        Text {
            id: txtHeader
            x: mainWindow.width /2
            y: 30
            text: qsTr("Media Player")
            font.family: "Helvetica"
            font.pointSize: 24
            color: "#F9EBD8"
        }
    }


    //Playlist
    Rectangle {
        id: rcPlaylist
        y:rcHeader.height
        width: 540
         Image {
             id: imgPlaylistBackground
             width: parent.width
             source: "Image/playlist.png"
         }

         Image {
             id: imgPlaylistItem
             width: parent.width
             height: 130
             source: "Image/playlist_item.png"
         }

         Text {
             id: txtPlaylistItem
             x: 10
             y: 55
             text: qsTr("Playlist Item")
             font.family: "Helvetica"
             font.pointSize: 18
             color: "#65696C"
         }
    }

    //Media Info
    Rectangle {
        id: rcMediaInfo
        y:rcHeader.height
        x:rcPlaylist.width
        height: 150
        Text {
            id: txtTitle
            x: 10
            y: 10
            text: qsTr("Music title")
            font.family: "Helvetica"
            font.pointSize: 18
            color: "#FAF6F3"
        }

        Image {
            id: imgMusic
            width: 30
            height: 30
            x: mainWindow.width - rcPlaylist.width - 60
            y: txtTitle.y
            source: "Image/music.png"
        }

        Text {
            id: txtNumOfMusic
            x: imgMusic.x + imgMusic.width + 5
            y: txtTitle.y
            text: qsTr("3")
            font.family: "Helvetica"
            font.pointSize: 18
            color: "#FAF6F3"
        }

        Text {
            id: txtSinger
            x: txtTitle.x
            y: txtTitle.y + 25
            text: qsTr("Singer")
            font.family: "Helvetica"
            font.pointSize: 18
            color: "#FAF6F3"
        }
    }

    //AlbumArt
    Rectangle {
        id: rcAlbumArt
        y:rcHeader.height + rcMediaInfo.height
        x:rcPlaylist.width + 40
        height: 550
        Image {
            id: imgAlbumLeft
            x: 50
            y: 50
            height: 350
            width: 350
            source: "Image/Bui-Anh-Tuan.png"
        }
        Image {
            id: imgAlbumCenter
            x:imgAlbumLeft.x + imgAlbumLeft.width+ 20
            y:imgAlbumLeft.y - 50
            height: imgAlbumLeft.height + 100
            width: imgAlbumLeft.width + 100
            source: "Image/Hongkong1.png"
        }
        Image {
            id: imgAlbumRight
            x:imgAlbumCenter.x + imgAlbumCenter.width + 20
            y:imgAlbumLeft.y
            height: imgAlbumLeft.height
            width: imgAlbumLeft.width
            source: "Image/Ha-Anh-Tuan.png"
        }

    }

    //ProgressBar
    Rectangle {
        id: rcProgressBar
        y:rcHeader.height + rcMediaInfo.height + rcAlbumArt.height
        x:rcPlaylist.width + 50
        height: 30
        Text {
            id: txtCurrentTime
            x: 100
            y: 4
            text: qsTr("00:00")
            font.family: "Helvetica"
            font.pointSize: 10
            color: "#FAF6F3"
        }
        Image {
            id: imgProgressbarBackground
            x: txtCurrentTime.x + txtCurrentTime.width + 10
            y:10
            width: 1000
            source: "Image/progress_bar_bg.png"
        }
        Image {
            id: imgProgressbar
            x: imgProgressbarBackground.x
            y:imgProgressbarBackground.y
            width: 50
            source: "Image/progress_bar.png"
        }
        Image {
            id: imgProgressbarPoint
            x: imgProgressbarBackground.x + imgProgressbar.width
            source: "Image/point.png"
        }
        Image {
            id: imgProgressbarCenterPoint
            x: imgProgressbarBackground.x + imgProgressbar.width + 4
            y: imgProgressbarBackground.y -6
            source: "Image/center_point.png"
        }
        Text {
            id: txtMaxTime
            x: txtCurrentTime.x + txtCurrentTime.width + imgProgressbarBackground.width + 20
            y: txtCurrentTime.y
            text: qsTr("00:00")
            font.family: "Helvetica"
            font.pointSize: 10
            color: "#FAF6F3"
        }
    }

    //Media control
    Rectangle {
        id: rcMediaControl
        x:rcPlaylist.width + 50
        y:rcHeader.height + rcMediaInfo.height + rcAlbumArt.height + rcProgressBar.height

        Image {
            id: imgShuffle
            x: txtCurrentTime.x
            y: 60
            source: "Image/shuffle-1.png"
        }

        Image {
            id: imgPrev
            x: imgShuffle.x + imgShuffle.width + 250
            y: imgShuffle.y
            source: "Image/prev.png"
        }

        Image {
            id: imgPlay
            x: imgPrev.x + imgPrev.width + 2
            y: imgShuffle.y - 40
            source: "Image/play.png"
        }

        Image {
            id: imgNext
            x: imgPlay.x + imgPlay.width + 2
            y: imgShuffle.y
            source: "Image/next.png"
        }

        Image {
            id: imgRepeat
            x: imgNext.x +imgNext.width+ 250
            y: imgShuffle.y
            source: "Image/repeat1_hold.png"
        }
    }

}
