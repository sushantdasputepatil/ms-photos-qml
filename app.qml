import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls.Universal 2.4
ApplicationWindow{
                visible: true
                width:800
                height:600
                color:"black"
                title: qsTr('photos-'+image_source)
                Universal.theme: Universal.Dark
                Universal.accent:Universal.Cyan
                property string folder_name:"/home/sushant/qt/exercisefile/images/"
                property url font_source: "/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
                property url font_source2:"/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf"
                property font seg_li:Qt.font({'family':"/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf","pixelSize":16})
                property font seg_sb:Qt.font({'family':"/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/seguisb.ttf","pixelSize":12})
                property var files: ['fingerprint.jpg','desktop.jpg','bee.jpg','flamingo.jpg']
                property int curr_index: 0
                property int high_index: 3
                property string image_source:files[curr_index]
                menuBar: ToolBar{
                width:parent.width
                RowLayout{
                width:parent.width-(320*drawer.position)
                Row{
                    ToolButton{
                        font.family:"Segoe UI Semilight"
                        font.pixelSize: 12
                    text:"See all photos"
                    icon.source: "/home/sushant/qt/exercisefile/images/icons/ic_image_black_24dp.png"
                    checked: true
                    }
                    ToolButton{
                        font.family:"Segoe UI Semilight"
                        font.pixelSize: 12
                    text:"Add to a creation"
                    icon.source: "/home/sushant/qt/exercisefile/images/icons/ic_card_membership_black_24dp.png"
                    }
                }
                Row{
                    Layout.alignment: Qt.AlignCenter
                ToolButton{
                    //font.family: "/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
                font.family:"Segoe MDL2 Assets"
                font.pixelSize: 20
                    text:"\uE72d"
                }
                ToolButton{
                    font.family:"Segoe MDL2 Assets"
                    font.pixelSize: 20
                text:"\uE74d"
                }
                ToolButton{
                    font.family:"Segoe MDL2 Assets"
                    font.pixelSize: 20
                text:"\uE7ad"
                }
                ToolButton{
                    font.family:"Segoe MDL2 Assets"
                    font.pixelSize: 20
                text:"\ue70f"
                }
                }
                Row{
                    Layout.alignment: Qt.AlignRight
                ToolButton{
                    font.family:"Segoe MDL2 Assets"
                    font.pixelSize: 20
                text:"\uE749"
                }
                ToolButton{
                //font.family: "/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
                font.family:"Segoe MDL2 Assets"
                font.pixelSize: 20
                text:"\uE8a3"
                }
                ToolButton{
                    //font.family: "/home/sushant/qt/exercisefile/Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
                font.family:"Segoe MDL2 Assets"
                font.pixelSize: 20
                    text:"\uEb51"
                }
                ToolButton{
                    font.family: "segoe UI assets"
                    font.pixelSize: 20
                    text:"\uE712"
                    onClicked: contextmenu.open()
                    Menu{
                    id:contextmenu
                    y:parent.height
                    Action{
                    text:"Slideshow"
                    }
                    Action{
                    text:"Save as"
                    }
                    Action{
                    text:"Resize"
                    }
                    Action{
                    text:"Copy"
                    }
                    MenuSeparator{}
                    Action{
                    text:"Open with"
                    }
                    Action{
                    text:"Set as"
                    }
                     MenuSeparator{}
                    Action{
                    text:"View actual size"
                    }
                     MenuSeparator{}
                    Action{
                    text:"File information"
                    onTriggered: drawer.open()
                    }
                     MenuSeparator{}
                    Action{
                    text:"Find feedback"
                    }
                    }
                }
                }
                transform: Translate{
                x:320*drawer.position
                }
                }
                }
                Drawer{
                    id:drawer
                    width:320
                    height:parent.height
                    modal:false
                    interactive: false
                                        ColumnLayout{
                                        width: parent.width
                                        anchors.left: parent.Left
                                        anchors.leftMargin: 12
                                        spacing: 20
                                        RowLayout{
                                        Layout.alignment: Qt.AlignTop
                                        Layout.topMargin: 12
                                        Layout.preferredWidth: 320

                                        Label{
                                            font.family: "segoe UI assets"
                                            font.pixelSize: 20
                                            text:"File info"

                                        }
                                        Button{
                                        Layout.alignment: Qt.AlignRight
                                        Layout.rightMargin: 24
                                        text:qsTr("close")
                                        flat:true
                                        Universal.foreground: Universal.Cyan
                                        onClicked: drawer.close()
                                        }
                                        }

                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Filename"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: image_source
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Date Taken"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: "18 feb 2019"
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Size"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: "120kb"
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Dimensions"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: "320X270"
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Shot"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: "--"
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text: "Folder path"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: folder_name
                                        }
                                        }
                                        Column{
                                        Label{
                                        font: seg_li
                                        color: "black"
                                        text:"ISO"
                                        }
                                        Label{
                                        font: seg_sb
                                        text: "200"
                                        }
                                        }
                                        }
                }


                StackView{
                    width:parent.width-(drawer.width*drawer.position)
                    height:parent.height
                    initialItem: id_01
                    transform: Translate{
                    x:drawer.width*drawer.position
                    }
                }
                Rectangle{
                width:parent.width-(drawer.width*drawer.position)
                    height:parent.height
                    color:"transparent"
                    RowLayout{
                        anchors.verticalCenter: parent.verticalCenter
                        width:parent.width
                        Button{
                            font.family: font_source
                            flat:true
                            font.pixelSize: 38
                            Layout.alignment: Qt.AlignLeft
                        text:"\uE76b"
                        visible: curr_index>0
                        onClicked: {
                        curr_index--
                            image_source=files[curr_index]
                        }
                        }
                        Button{
                            font.family: font_source
                            flat:true
                            font.pixelSize: 38
                            Layout.alignment: Qt.AlignRight
                        text:"\uE76c"
                        visible: curr_index<high_index
                        onClicked: {
                        curr_index++
                            image_source=files[curr_index]
                        }
                        }

                }
                    transform: Translate{
                    x:drawer.width*drawer.position
                    }
                }
                Component{
                id:id_01
                Rectangle{
                width:parent.width-(drawer.width*drawer.position)
                height:parent.height
                color: "transparent"
                Image {
                    anchors.centerIn: parent
                    sourceSize.height:parent.height
                    //source: "/home/sushant/qt/exercisefile/images/fingerprint.jpg"
                    source:folder_name + image_source
                }
                }
                }
                footer: Rectangle{
                    width:parent.width
                    height:parent.height
                    color:"transparent"
                }
}
