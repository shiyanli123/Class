--
-- Author: Your Name
-- Date: 2015-05-22 20:25:25
--
--退出游戏时的界面
local MessageBox = class("MessageBox", function()
  return display.newColorLayer(cc.c4b(100, 100, 100, 0))
end)

function MessageBox:ctor()
  self:init()
end

function MessageBox:init()
  --面板
  local bg = display.newSprite("succeed.png")
  bg:setPosition(cc.p(display.cx, display.cy))
  bg:addTo(self)
  --设置提示标签
  local label = cc.ui.UILabel.new({
                  text = "你确定要退出游戏吗？",
                  size = 30,
                  color = cc.c3b(100, 100, 200),
                  align = cc.TEXT_ALIGNMENT_LEFT,
                  valign = cc.VERTICAL_TEXT_ALIGNMENT_TOP 
            }) 
  label:setPosition(cc.p(display.cx-135, display.cy+60))
  label:addTo(self)
  
  local function click(event) 
    local tag=event.target:getTag()
    --结束退出提示框
    if tag == 1 then
      cc.Director:getInstance():endToLua()
    --退出lua程序
    elseif tag == 2 then 
       self:removeFromParent()
       StartScene.isTime = 1
      end
  end
    --声明一个节点类，添加加载上的图片按钮
    local anode=display.newNode()
    anode:pos(display.cx,display.cy-50)
    anode:addTo(self)

    local item1=cc.ui.UIPushButton.new({normal="sure.png"},{scale9=true})
                :pos(-80, 0)
                :addTo(anode)
                :onButtonClicked(click)
                :setTag(1)

    local item2=cc.ui.UIPushButton.new({normal="cancle.png"},{scale9=true})
                :pos(80, 0)
                :addTo(anode)
                :onButtonClicked(click)
                :setTag(2)
end

return MessageBox
