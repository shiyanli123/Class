--
-- Author: Your Name
-- Date: 2015-05-22 20:23:44
--
--所有类的头文件包含到此（在main.lua中引用一次，即可在后续文件中，防止文件相互包含）
BubbleButton=require("app.Class.BubbleButton")
LoseLayer=require("app.Class.LoseLayer")
MessageBox=require("app.Class.MessageBox")
ModifyData=require("app.Class.ModifyData")
PauseLayer=require("app.Class.PauseLayer")
SetLayer=require("app.Class.SetLayer")
TouchLayer=require("app.Class.TouchLayer")
WinLayer=require("app.Class.WinLayer")


GameScene=require("app.scenes.GameScene")
ResourceLoadScene=require("app.scenes.ResourceLoadScene")
SelectChapter=require("app.scenes.SelectChapter")
SelectScene=require("app.scenes.SelectScene")
StartScene=require("app.scenes.StartScene")


