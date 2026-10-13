--[[
    Project Zero - Redz GUI preview (step 2: modern look + placeholder controls)

    What is in this build
      * Modern look: deep-navy glass theme, neon gradient outline, accent line.
      * Placeholder controls (toggles, sliders, dropdowns, buttons, text boxes) on
        every tab, laid out like the original hub. They do nothing yet.
      * Visible resize grip in the window's bottom-right corner (drag it), plus
        Settings > Window sliders for width, height and UI scale.
      * Logo in the title bar, optional floating logo button (shows / hides the window).
      * Tab icons.
    Problems print to the console (F9) as "[Project Zero GUI]".

    IMAGES - three ways to give the GUI a picture (use whichever you like):
      1) Roblox asset id : "rbxassetid://123456789" or just 123456789
      2) A file          : "logo.png" -> workspace/ProjectZero/logo.png
      3) A direct link   : "https://.../logo.png" (downloaded once, then cached)
    Or skip the settings below: files named logo.png / icons/<Tab name>.png inside
    workspace/ProjectZero are picked up automatically.
]]

local CONFIG = {
    Title = "Project Zero",
    SubTitle = "Blox Fruit",
    Folder = "ProjectZero", -- executor workspace folder for settings and images

    Logo = "https://raw.githubusercontent.com/lguy8068-lang/Redz-Hub-Reimagined/main/Project%20Zero_%20Neon%20Crown%20Emblem.png",
                            -- title-bar logo (also used on the floating button)
    FloatingButton = true,  -- small draggable logo button that shows / hides the window
    AnimatedBorder = true,  -- slowly turning neon outline around the window
    AutoImageFiles = true,  -- also look for ProjectZero/logo.png and ProjectZero/icons/<Tab>.png

    TabIcons = {            -- same three formats as Logo; leave "" for no icon
        ["Home"] = "",
        ["Sub Farm"] = "",
        ["Sea Event"] = "",
        ["Player"] = "",
        ["Dragon Update"] = "",
        ["Dungeon"] = "",
        ["Trials"] = "",
        ["Travel"] = "",
        ["Shop"] = "",
        ["Misc"] = "",
        ["Webhook"] = "",
        ["Settings"] = "",
    },
}

local TABS = {
    "Home",
    "Sub Farm",
    "Sea Event",
    "Player",
    "Dragon Update",
    "Dungeon",
    "Trials",
    "Travel",
    "Shop",
    "Misc",
    "Webhook",
    "Settings",
}

local DEFAULT_WIDTH, DEFAULT_HEIGHT = 550, 380 -- Redz default window size

local env = (getgenv and getgenv()) or _G

local REDZ_SOURCE = [===[

























local a=cloneref or(function(...)return...end)

local b=delfolder or deletefolder
local c=delfile or deletefile
local d=makefolder
local e=writefile
local f=readfile

local g=setmetatable({},{
__index=function(g,h)
rawset(g,h,a(game:GetService(h)))
return rawget(g,h)
end
})

local h=g.MarketplaceService
local i=g.UserInputService
local j=g.TweenService
local k=g.HttpService
local l=g.RunService
local m=g.Players

local n=l.Heartbeat

local o=m.LocalPlayer
local p=o:GetMouse()

local q=(gethui or function()return g.CoreGui end)()

local r={
Darker={
Colors={
Background=ColorSequence.new{
ColorSequenceKeypoint.new(0.00,Color3.fromRGB(25,25,25)),
ColorSequenceKeypoint.new(0.50,Color3.fromRGB(32.5,32.5,32.5)),
ColorSequenceKeypoint.new(1.00,Color3.fromRGB(25,25,25))
},
Primary=Color3.fromRGB(88,101,242),
OnPrimary=Color3.fromRGB(61,67,135),
ScrollBar=Color3.fromRGB(1,76,105),
Stroke=Color3.fromRGB(45,45,45),

Error=Color3.fromRGB(255,102,102),
Icons=Color3.fromRGB(232,233,235),

JoinButton=Color3.fromRGB(37,128,69),
Link=Color3.fromRGB(40,150,255),

Dialog={
Background=Color3.fromRGB(28,28,28)
},
Buttons={
Holding=Color3.fromRGB(34,34,34),
Default=Color3.fromRGB(28,28,30)
},
Border={
Holding=Color3.fromRGB(60,60,60),
Default=Color3.fromRGB(38,38,38),
},
Text={
Default=Color3.fromRGB(255,255,255),
Dark=Color3.fromRGB(200,200,200),
Darker=Color3.fromRGB(175,175,175),
},
Slider={
SliderBar=Color3.fromRGB(1,76,105),
SliderNumber=Color3.fromRGB(232,233,235),
},
Dropdown={
Holder=Color3.fromRGB(30,30,30),
}
},
Icons={
Error="rbxassetid://10709752996",
Button="rbxassetid://10709791437",
Close="rbxassetid://10747384394",
TextBox="rbxassetid://15637081879",
Search="rbxassetid://10734943674",
Keybind="rbxassetid://10734982144",
Dropdown={
Open="rbxassetid://10709791523",
Close="rbxassetid://10709790948"
}
},
Font={
Normal=Enum.Font.BuilderSans,
Medium=Enum.Font.BuilderSansMedium,
Bold=Enum.Font.BuilderSansBold,
ExtraBold=Enum.Font.BuilderSansExtraBold,
SliderValue=Enum.Font.FredokaOne
},
BackgroundTransparency=0.03
}
}

for s,t in r do
t.Name=s
table.freeze(t)
end

local s={
Information={
Version="v2.0.1",
GitHubOwner="tlredz"
},
Default={
Theme="Darker",
UISize=UDim2.fromOffset(550,380),
TabSize=160
},

Themes=r,

Connections={},
Options={},
Icons={},
Tabs={}
}

s.Info=s.Information
s.Save=s.Default

local t=workspace.CurrentCamera.ViewportSize local u=function(

u, v, w)
table.insert(s.Connections,u[w or"Connect"](u,v))end


local v={}
v.__index=v local w=function(

w, x)
for y in x:gmatch"[^%.]+"do
w=w[y]
end

return w end local x=function(


x, y, z, A)
if not A then
A=s.CurrentTheme
end

x[y]=w(A,if type(z)=="function"then z()else z)end local y=function(


y, z, A)
for B,C in A do
x(z,B,C,y)
end end local z=function(


z, A)
if d then
local B=z:split"/"
B[#B]=nil

local C=table.concat(B,"/")

if C~=""and(isfolder==nil or not isfolder(C))then
d(C)
end
end

e(z,A)end


local A=false

local B={
MAX_SCALE=1.6,
MIN_SCALE=0.6,

TEXTBOX={
PLACEHOLDER_TEXT="Input"
}
}

function v:add(C,D)
self.Descendants[D]=C

if self.IS_RENDERING then
y(s.CurrentTheme,C,D)
end
end

function v:update()
if self.IS_RENDERING and not self.UPDATED_OBJECTS then
local C=s.CurrentTheme
self.UPDATED_OBJECTS=true

for D,E in self.Descendants do
local F=typeof(E)
if F=="table"then E:update()continue end

y(C,E,D)
end
end
end

function v:destroy()
local C=self.Parent and table.find(self.Parent.Descendants)

if C then
table.remove(self.Parent.Descendants,C)
end

table.clear(self.Descendants)
setmetatable(self,nil)
end

function v:changeRendering(C)
if self.IS_RENDERING~=C then
self.IS_RENDERING=C
self.UPDATED_OBJECTS=false
end
end

function v:new()
local C=setmetatable({
IS_RENDERING=true,
UPDATED_OBJECTS=false,
Descendants={},
Parent=self.Descendants~=nil and self or nil
},v)

if self.Descendants then
table.insert(self.Descendants,C)
end

return C
end

local C=v:new()

local D,E={}do
local F={}

local G={}do
G.ElementsTable={
Corner=function(H)
return E("UICorner",{
CornerRadius=H or UDim.new(0,8)
})
end,
Stroke=function(H,I)
return E("UIStroke",{
Color=H or Color3.fromRGB(60,60,60),
Thickness=I or 1
})
end,
Image=function(H)
return E("ImageLabel",{
Image=H or"",
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1)
})
end,
Button=function()
return E("TextButton",{
Text="",
Size=UDim2.fromScale(1,1),
AutoButtonColor=false
})
end,
Padding=function(H,I,J,K)
return E("UIPadding",{
PaddingLeft=H or UDim.new(0,10),
PaddingRight=I or UDim.new(0,10),
PaddingTop=J or UDim.new(0,10),
PaddingBottom=K or UDim.new(0,10)
})
end,
ListLayout=function(H)
return E("UIListLayout",{
Padding=H or UDim.new(0,5)
})
end,
Text=function(H)
return E("TextLabel",{
BackgroundTransparency=1,
Text=H or""
})
end,
Gradient=function(H)
return E("UIGradient",{
Color=H
})
end
}

function G:Create(H,I,...)
local J=self.ElementsTable[I]

if J then
local K=J(...)
K.Parent=H
return K
end
end
end

local H={}

function H:Childs(I)
for J=1,#I do
I[J].Parent=self
end
end

function H:Elements(I)
for J,K in pairs(I)do
if type(K)=="table"then
D.SetProperties(G:Create(self,J),K)
else
G:Create(self,J,K)
end
end
end

function H:ThemeTag(I)
local J=I.OBJECTS
I.OBJECTS=nil
return(J or C):add(self,I)
end

function D:SetProperties(I)
for J,K in pairs(I)do
if H[J]then
H[J](self,K)
else
self[J]=K
end
end
end

function D:SetValues(...)
local I=self

for J,K in{...}do
local L=typeof(K)

if L=="table"then
D.SetProperties(I,K)
else
I[if L=="string"then"Name"else"Parent"]=K
end
end

return I
end

local I

function D:Draggable(J,K,L)
local M,N,O,P
local Q=K or 0.28
local R=0
local S local T=function(

T)
local U=T.Position-N
local V
R=tick()

if L then
V=L(
O.X.Scale,O.X.Offset+U.X/J.Scale,
O.Y.Scale,O.Y.Offset+U.Y/J.Scale
)
else
V=UDim2.new(
O.X.Scale,O.X.Offset+U.X/J.Scale,
O.Y.Scale,O.Y.Offset+U.Y/J.Scale
)
end
self.Position=self.Position:Lerp(V,Q)end local U=function()



while I==self do
if(tick()-R)>=1 then
S()
break
end
task.wait()
end end


local V={
[Enum.UserInputType.MouseButton1]=true,
[Enum.UserInputType.Touch]=true
}

local W={
[Enum.UserInputType.MouseMovement]=true,
[Enum.UserInputType.Touch]=true
}

u(self.InputBegan,function(X)
if A==false and I==nil and V[X.UserInputType]then
N=X.Position
O=self.Position
I=self
R=tick()
A=true

local Y;

function S()
A=false
I=nil
Y:Disconnect()
end

task.spawn(U)

Y=X.Changed:Connect(function()
if X.UserInputState==Enum.UserInputState.End then
S()
end
end)
end
end)

u(i.InputChanged,function(X)
if I==self and W[X.UserInputType]then
T(X)
end
end)
end

function D:CreateNewTemplate(J)
return D.CloneObject(F[self],J)
end

function D.new(J,...)
return D.SetValues(Instance.new(J),...)
end

E=D.new
end local F=function(

F)
if F==nil then
return{}
end

if type(F)~="function"and type(F)~="table"then
error(`Failed to get Callback: 'function', or 'table' expected, got {typeof(F)}`,2)
end

if type(F)~="function"then
local G=F[1]
local H=F[2]

F=function(I)
G[H]=I
end
end

return table.pack(F)end local G=function(


G, ...)
for H=1,#G do
task.spawn(G[H],...)
end end


local H="redz-library-v5"
local I=q:FindFirstChild(H)

if not I then
I=E("ScreenGui",H,q,{
IgnoreGuiInset=true
})
end local J=function(

J, K, L, M, ...)
local N=TweenInfo.new(M,EasingStyle or Enum.EasingStyle.Quint,...)

return j:Create(J,N,{
[K]=L
})end local K=function(


K)
local L={}
for M=1,#K do
rawset(L,K[M],true)
end
return L end


local L=K(string.split"\n\t,_:;()[]#&=!. \"'*^<>$")local M=function(

M)
return string.gsub(M:lower(),".",function(N)
return L[N]and""or N
end)end local N=function(


N)
local O,P,Q=tostring(N),"",0

for R=#O,1,-1 do
P=O:sub(R,R)..P
Q+=1

if R>1 and Q%3==0 then
P=","..P
end
end

return P end local O=function(


O)
local P="rbxassetid://"
return O:sub(1,#P)==P end local P=function(


P)
return(t.Y/450)*P end local Q=function(


Q)
local R=math.floor(Q/60)
local S=math.floor(Q/60/60)
Q=math.floor((Q-(R*60))*10)/10
R=R-(S*60)

if S>0 then
return`{S}h {R}m {math.floor(Q)}s`
elseif R>0 then
return`{R}m {math.floor(Q)}s`
else
return tostring(Q)
end end


local R={}do
local S={}
local T={}
local U={}
local V={}

local W
local X
local Y
local Z
local _
local aa
local ab
local ac
local ad
local ae

local af=""

local ag={SelectedTab=1,Minimized=false}
ag.__index=ag

local ah={}
ah.__index=ah

local ai={}
ai.__index=ai

local aj={}
aj.__index=aj

local ak={}do local al=function()

local al={}
al.__index=function(am,an)
return al[an]or rawget(ai,an)
end

return al end


local am=al()
ak.TextBox=am

local an=al()
ak.Toggle=an

local ao=al()
ak.Slider=ao

local ap=al()
ak.Dropdown=ap

local aq=al()
ak.Keybind=aq

local ar=al()
ak.Dialog=ar local as=function()


Z.Closed=true
Z.Closing=false
setmetatable(Z,nil)

Z=nil
aa.Parent=nil end local at=function()



if Z~=nil then
Z:Close()
end end


function ar:NewOption(au)
local av=au[1]or au.Name or au.Title
local aw=F(au[2]or au.Callback)

table.insert(aw,at)

assert(type(av)=="string",`"Dialog.NewOption.Name". 'string' expected, got {typeof(av)}`)

local ax=E("TextButton",{
AutoButtonColor=false,
Size=UDim2.fromScale(0.2,1),
BackgroundTransparency=1,
TextSize=10,
Text=av,
Elements={
Corner=UDim.new(1,0)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default",
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local ay=J(ax,"BackgroundTransparency",0,0.3)
local az=J(ax,"BackgroundTransparency",1,0.3)

u(ax.MouseLeave,function()az:Play()end)
u(ax.MouseEnter,function()ay:Play()end)
u(ax.Activated,function()G(aw)end)

ax.Parent=aa.Template.Options
end

function ar:Close(au)
if self.Closed or self.Closing or Z~=self then
return nil
end

self.Closing=true

local av=J(self.TEMPLATE,"Size",self.NEW_SIZE,0.1)
av:Play()

if au then
av.Completed:Wait()
as()
else
u(av.Completed,as)
end
end

function ar.new(au,av)
return setmetatable({
TITLE_LABEL=au,
DESCRIPTION_LABEL=au,
Content=au.Text,
Title=av.Text,

Closed=false,
Closing=false,
Kind="Dialog"
},ar)
end

function ap:SetEnabled(au)
assert(type(au)=="table",`"Dropdown.SetEnabled[param 1]". 'table' expected, got {typeof(au)}`)

self.SET_ENABLED_OPTIONS(au)
end

function ap:Clear()
self.CLEAR_DROPDOWN()
end

function ap:NewOptions(...)
self:Clear()
self:Add(...)
end

function ap:GetOptionsCount()
return#self.DROPDOWN_OPTIONS
end

function ap:Remove(...)
local au={...}
assert(#au>0,"'Dropdown.Remove' requires one or more options.")

for av,aw in au do
self.REMOVE_DROPDOWN_OPTION(aw)
end
end

function ap:Add(...)
local au={...}
assert(#au>0,"'Dropdown.Add' requires one or more options.")

for av,aw in au do
self.ADD_DROPDOWN_OPTION(aw)
end
end

function ap.new(au,av,aw,ax,ay)
return setmetatable({
CALLBACKS=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Dropdown"
},ap)
end

function ao:SetValue(au)
assert(type(au)=="number",`"Slider.SetValue". 'number' expected, got {typeof(au)}`)

if self.Value~=au then
self.WHEN_VALUE_CHANGED(au)
end
end

function ao.new(au,av,aw,ax,ay)
return setmetatable({
CALLBACKS=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Slider"
},ao)
end

function an:SetValue(au)
assert(type(au)=="boolean",`"Toggle.SetValue". 'boolean' expected, got {typeof(au)}`)

if self.Value~=au then
self.Value=au
self.WHEN_VALUE_CHANGED(au)
end
end

function an.new(au,av,aw,ax,ay,az)
return setmetatable({
CALLBACKS=az,
WHEN_VALUE_CHANGED=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Toggle"
},an)
end

function am:SetText(au)
assert(type(au)=="string",`"TextBox.SetText". 'string' expected, got {typeof(au)}`)

self.TEXTBOX.Text=au
return self
end

function am:SetPlaceholder(au)
assert(type(au)=="string",`"TextBox.SetPlaceholder". 'string' expected, got {typeof(au)}`)

self.TEXTBOX.PlaceholderText=au
return self
end

function am:CaptureFocus()
self.TEXTBOX:CaptureFocus()
return self
end

function am:Clear()
self.TEXTBOX.Text=""
return self
end

function am:SetTextFilter(au)
if au~=nil then
assert(type(au)=="function",`"TextBox.SetTextFilter[param 1]". 'function', or 'nil' expected, got {typeof(au)}`)
end

self.TEXTBOX_TEXT_FILTER=au
return self
end

function am.new(au,av,aw,ax,ay,az)
return setmetatable({
Title=av.Text,
Description=aw.Text,
DESCRIPTION_LABEL=aw,
TITLE_LABEL=av,

CALLBACKS=az,
DESTROY_ELEMENT=ax,
VISIBLE_ELEMENT=ax,

TEXTBOX=ay,
BUTTON=ax,

Parent=au,
Kind="TextBox"
},am)
end

am.Set=am.SetText
an.Set=an.SetValue
ao.Set=ao.SetValue
end local al=function(

al, am, an)
local ao=E("TextButton","Button",an,{
Size=UDim2.new(1,0,0,24),
AutoButtonColor=false,
Text="",
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
E("TextLabel","Title",{
BackgroundTransparency=1,
Font=Enum.Font.GothamMedium,
Text=am.Title,
TextSize=10,
TextXAlignment=Enum.TextXAlignment.Left,
TextTransparency=(FirstTab and 0.3)or 0,
TextTruncate=Enum.TextTruncate.AtEnd,
ThemeTag={
TextColor3="Colors.Text.Default"
}
})
}
})

local ap=E("Frame",ao,{
Position=UDim2.new(0,1,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
Size=UDim2.fromOffset(4,4),
BackgroundTransparency=1,
ThemeTag={
BackgroundColor3="Colors.Primary"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aq=E("ScrollingFrame","Container",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,1),
AnchorPoint=Vector2.new(0,1),
ScrollBarThickness=1.5,
BackgroundTransparency=1,
ScrollBarImageTransparency=0.2,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y,
BorderSizePixel=0,
CanvasSize=UDim2.new(),
ThemeTag={
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingTop=UDim.new(0,10),
PaddingBottom=UDim.new(0,10)
},
ListLayout={
Padding=UDim.new(0,5)
}
}
})

local ar=E("ImageLabel",ao,{
Position=UDim2.new(0,8,0.5),
Size=UDim2.new(0,13,0,13),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
ImageTransparency=0.3,
Image=am.Icon or""
})local as=function()


local as=string.sub(ar.Image,1,13)=="rbxassetid://"
local at=ao.Title
ar.Visible=as
at.Size=UDim2.new(1,as and-25 or-15,1)
at.Position=UDim2.fromOffset(as and 25 or 15)end


u(ar:GetPropertyChangedSignal"Image",as)
as()

return ao,aq,ap,ar end local am=function(


am, an, ao, ap)
local aq=E("TextLabel",{
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,-20),
Position=UDim2.fromScale(0,0.5),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
TextSize=11,
ThemeTag={
OBJECTS=C,
TextColor3="Colors.Text.Default",
Font="Font.Medium"
}
})

local ar=V[am]
local as=T[am].Container

local at=E("TextLabel",{
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,-20),
Position=UDim2.new(0,12,0,15),
BackgroundTransparency=1,
TextWrapped=true,
TextSize=8,
RichText=true,
ThemeTag={
OBJECTS=ar,
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local au={
OBJECTS=ar,
BackgroundColor3="Colors.Buttons.Default"
}

local av=E("TextButton","Option",{
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,0,0,25),
AutoButtonColor=false,
Text="",
ThemeTag=au,
Elements={
Corner=UDim.new(0,6)
},
Childs={
E("Frame","Holder",{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=ap,
Elements={
ListLayout={
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,2)
},
Padding={
PaddingBottom=UDim.new(0,5),
PaddingTop=UDim.new(0,5)
}
},
Childs={aq,at}
})
}
})

local aw=av.Holder local ax=function(

ax, ay)
if ay then
if _ then
local az=w(s.CurrentTheme,"Colors.Buttons.Default")
_.Theme.BackgroundColor3="Colors.Buttons.Default"
J(_.Button,"BackgroundColor3",az,0.2):Play()
end

_={
Button=av,
Theme=au
}
end

au.BackgroundColor3=ax
J(av,"BackgroundColor3",w(s.CurrentTheme,ax),0.2):Play()end


u(av.MouseLeave,function()ax("Colors.Buttons.Default",false)end)
u(av.MouseEnter,function()ax("Colors.Buttons.Holding",true)end)

u(at:GetPropertyChangedSignal"Text",function()
local ay=#at.Text>0

if at.Visible~=ay then
local az=ay and 0 or 0.5
at.Visible=ay
aw.Position=UDim2.fromScale(0,az)
aw.AnchorPoint=Vector2.new(0,az)
end
end)

aq.Text=an
at.Text=ao or""

av.Parent=as

return av,aq,at end local an=function(


an, ao)
if type(ao)~="table"then
error(`"Tab.Add{an}[Configs]". 'table' expected, got {typeof(ao)}`,2)
end

local ap=ao[1]or ao.Name or ao.Title
local aq=ao.Desc or ao.Description

assert(type(ap)=="string",`"Tab.Add{an}.Title". 'string' expected, got {typeof(ap)}`)

if aq~=nil and type(aq)~="string"then
error(`"Tab.Add{an}.Description". 'string', or 'nil' expected, got {typeof(aq)}`,2)
end

return ap,aq or""end local ao=function(


ao, ap)
if ap~=nil and type(ap)~="string"then
error(`"Tab.Add{ao}.Flag". 'nil', or 'string' expected, got {typeof(ap)}`)
end

return ap end local ap=function()



local ap=160

local aq={
Corner=UDim.new(0,6),
Stroke={
ThemeTag={
Color="Colors.Stroke"
}
},
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}

local ar=E("TextButton",OutBox,{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Active=true,
Text=""
})

local as=E("Frame","Dropdown",ar,{
Size=UDim2.fromOffset(ap,100),
Position=UDim2.fromOffset(50,50),
Elements=aq,
Active=true,
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
}
})

local at=E("TextButton","Search",as,{
Position=UDim2.new(1,5,0,5),
Size=UDim2.new(0,25,0,25),
AutomaticSize=Enum.AutomaticSize.X,
Active=true,
Elements=aq,
Text="",
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Childs={
E("UIPadding",{
PaddingLeft=UDim.new(0,5),
PaddingRight=UDim.new(0,5),
PaddingBottom=UDim.new(0,5),
PaddingTop=UDim.new(0,5)
}),
E("UIListLayout",{
Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal
}),
E("TextBox","SearchBox",{
Size=UDim2.fromScale(0,1),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
Visible=false,
PlaceholderText="Search...",
ClearTextOnFocus=false,
Text="",
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.Stroke",
TextColor3="Colors.Text.Default",
Font="Font.ExtraBold"
}
}),
E("ImageLabel","SearchIcon",{
Size=UDim2.fromScale(1,1),
SizeConstraint=Enum.SizeConstraint.RelativeYY,
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ThemeTag={
BackgroundColor3="Colors.Stroke",
ImageColor3="Colors.Icons",
Image="Icons.Search"
}
})
}
})

local au=E("ScrollingFrame",as,{
Size=UDim2.new(1,-6,1,-6),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
ScrollBarThickness=3,
BackgroundTransparency=1,
BorderSizePixel=0,
CanvasSize=UDim2.new(),
ScrollingDirection=Enum.ScrollingDirection.Y,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
Active=true,
ThemeTag={
OBJECTS=C,
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,8),
PaddingTop=UDim.new(0,5),
PaddingBottom=UDim.new(0,5)
},
ListLayout={
Padding=UDim.new(0,4)
}
}
})

local av=at.SearchIcon
local aw=at.SearchBox

local ax=130

local ay=J(as,"Size",UDim2.fromOffset(ap,0),0.2)
local az=J(aw,"Size",UDim2.new(0,ax-30,1,0),0.3)
local aA=J(aw,"Size",UDim2.new(0,0,1,0),0.2)

local aB={}
local aC=false
local aD=false
local aE
local aF
local aG
local aH
local aI

local aJ=0

local aK=25
local aL=(aK*12)+10
local aM=5 local aN=function(

aN)
local aO=I.AbsoluteSize.Y/ad.Scale
return math.min((aK*math.max(aN,0.5))+10,aL,aO/1.75)end local aO=function()



local aO=as.AbsolutePosition
local aP=as.AbsoluteSize

local aQ=Vector2.new(p.X,p.Y)

local aR=aQ.X>=aO.X and aQ.X<=(aO.X+aP.X)
local aS=aQ.Y>=aO.Y and aQ.Y<=(aO.Y+aP.Y)

return aR and aS end local aP=function(


aP, aQ)
local aR=aI.AbsolutePosition
local aS=aI.AbsoluteSize
local aT=I.AbsoluteSize
local aU=ad.Scale
local aV=aN(aP)

local aW=aT.X/aU
local aX=aT.Y/aU
local aY=aR.X/aU
local aZ=aR.Y/aU
local a_=aS.X/aU
local a0=aS.Y/aU

local a1=aZ+(a0/2)
local a2=a1-(aV/2)

local a3=aM
local a4=aX-aV-aM

local a5=math.clamp(a2,a3,a4)

local a6=Vector2.new(0,0)

if a5>(aX*0.7)then
a6=Vector2.new(0,1)
a5=math.min(a1+(aV/2),aX-aM)
end

local a7=math.clamp(
aY,
aM,
aW-as.Size.X.Offset-(aM*2)-(at.AbsoluteSize.X/aU)
)

return Vector2.new(a7,a5),a6 end local aQ=function(...)



local aQ,aR=aP(...)

as.AnchorPoint=aR
as.Position=UDim2.fromOffset(aQ.X,aQ.Y)end local aR=function()



if not aD then return end

aD=false

aw.Text=""
aA:Play()
aA.Completed:Wait()
aw.Visible=false end local aS=function()



if aD then return end

aD=true

aw.Visible=true
az:Play()

aw:CaptureFocus()

local aS=as.AbsoluteSize
local aT=I.AbsoluteSize
local aU=ad.Scale
local aV=as.AnchorPoint

local aW=ax*aU

local aX=as.AbsolutePosition.X

local aY=aX+aS.X+5+aW

if aY>aT.X-(aM*aU)then
local aZ=(aT.X-aS.X-aW-5-(aM*aU))/aU

aZ=math.max(aZ,aM)

J(as,"Position",UDim2.fromOffset(aZ,as.Position.Y.Offset),0.3):Play()
end end local aT=function(


aT)
if not aC then
aE=aT
ar.Parent=Y
return true
end end local aU=function()



if aC then return end

if aE then
aE()
aE=nil
end

task.spawn(aR)
aC=true
ay:Play()
ay.Completed:Wait()
ar.Parent=nil
aC=false end local aV=function()



if aw:IsFocused()then
aJ=tick()
return nil
end

if(tick()-aJ)>=0.3 and not aO()then
aU()
end end local aW=function()



for aW,aX in aB do
aW.Parent=nil
aB[aW]=nil
end end local aX=function(


aX, aY)
aX.Selected=aY

if aX.Instance then
local aZ=aX.Instance
local a_=aZ.TextLabel
local a0=aZ.Frame

local a1=aY and 0 or(aH and 0.8 or 1)
local a2=aY and 0 or 0.4
local a3=UDim2.fromOffset(4,aY and 14 or 4)

if aZ.Parent then
J(a0,"BackgroundTransparency",a1,0.35):Play()
J(a_,"TextTransparency",a2,0.35):Play()
J(a0,"Size",a3,0.35):Play()
else
a_.TextTransparency=a2
a0.BackgroundTransparency=a1
a0.Size=a3
end
end end local aY=function(


aY)
if aw.Visible==false or not aY then
local aZ=aG and#aG or 0
as.Size=UDim2.fromOffset(ap,aN(aZ))
return nil
end

if aY then
local aZ=aY.Instance
local a_=M(aw.Text)
aZ.Visible=#a_==0 or aY.SearchText:find(a_)~=nil

if aZ.Visible~=false then
SEARCH_RESULT_COUNT+=1
as.Size=UDim2.fromOffset(ap,aN(SEARCH_RESULT_COUNT))
end
end end local aZ=function(


aZ, a_, a0, a1)
local a2=true

if a_=="+"or a_=="-"then
a2=aZ.Selected==(a_=="+")
a0=a0:sub(2,-1)
end

return a2 and a1:find(a0,1,true)~=nil end local a_=function(


a_, a0)
local a1=E("TextButton",{
Size=UDim2.new(1,0,0,21),
AutoButtonColor=false,
Text="",
Elements={
Corner=UDim.new(0,4)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
E("Frame",{
Position=UDim2.new(0,1,0.5),
Size=UDim2.new(0,4,0,4),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag={
BackgroundColor3="Colors.Primary"
}
}),
E("TextLabel",{
Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextTransparency=0.4,
Text=a_.DisplayName,
TextSize=9,
ThemeTag={
Font="Font.Bold",
TextColor3="Colors.Text.Default"
}
})
}
})

local a2=0

u(a1.Activated,function()
if(tick()-a2)<0 then return end

if ar.Parent and not aC then
a2=tick()+0.2
aF(a_)
end
end)

a_.SearchText=M(a_.DisplayName)
a_.Instance=a1

if a0 then
local a3=aw.Text

if#a3>0 then
local a4=string.sub(a3,1,1)
local a5=M(aw.Text)
a1.Visible=aZ(a_,a4,a5,a_.SearchText)
end

a1.Parent=au
aY(a_)
end

aX(a_,a_.Selected)end local a0=function(


a0)
aW()
aG=a0

for a1=1,#a0 do
local a2=a0[a1]
local a3=a2.Instance

if a3==nil then
a_(a2)
a3=a2.Instance
end

a3.Parent=au
aB[a3]=true
end

aQ(#a0)
J(as,"Size",UDim2.fromOffset(ap,aN(#a0)),0.3):Play()end local a1=function()



local a1=aw.Text
local a2=string.sub(a1,1,1)
local a3=M(a1)
local a4=#a3==0
local a5=0

for a6=1,#aG do
local a7=aG[a6]
local a8=a4 or aZ(a7,a2,a3,a7.SearchText)
a7.Instance.Visible=a8

if a8 then
a5+=1
end
end

SEARCH_RESULT_COUNT=a5
as.Size=UDim2.fromOffset(ap,aN(a5))end


u(ab:GetPropertyChangedSignal"Visible",aV)
u(ab:GetPropertyChangedSignal"Size",aV)
u(ar.MouseButton1Down,aV)
u(ar.Activated,aV)

u(at.Activated,aS)
u(aw:GetPropertyChangedSignal"Text",a1)

return table.freeze{
CreateOptionTemplate=a_,
SetOptionValue=aX,
CloseDropdown=aU,
OpenDropdown=aT,
SetOptions=a0,
Clear=aW,
SetOnClicked=function(...)
aF=...
end,
SetMultiSelect=function(...)
aH=...
end,
SetHolder=function(...)
aI=...
end
}end


local aq

local ar={"W","A","S","D","Tab","Slash","Backspace","Escape","Unknown"}
local as={"MouseButton1","MouseButton2","MouseButton3"}

local at=K({"number","string","nil","boolean","table"},true)local au=function(

au)
if aq==nil then
aq=K(Enum.KeyCode:GetEnumItems())
end

return typeof(au)=="EnumItem"and aq[au]end


function ah:GetNoSelfCall(av)
assert(type(av)=="string",`"Tab.GetNoSelfCall". 'string' expected, got {typeof(av)}`)
local aw=self[av]
assert(type(aw)=="function",`"Tab.GetNoSelfCall". '{aw}' is not a 'function'-{av}`)

return function(...)
return aw(self,...)
end
end

function ah:AddSection(av)
assert(av==nil or type(av)=="string",`"Tab.AddSection[param 1]". 'string', or 'nil' expected, got {typeof(av)}`)
av=av or""

local aw=V[self]

local ax=E("Frame","Option",T[self].Container,{
Size=UDim2.new(1,0,0,20),
BackgroundTransparency=1
})

local ay=E("TextLabel",ax,{
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
Size=UDim2.new(1,-25,1,0),
Position=UDim2.new(0,5),
BackgroundTransparency=1,
TextSize=17,
Text=av,
ThemeTag={
OBJECTS=aw,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

return setmetatable({
Title=av,

DESTROY_ELEMENT=ax,
VISIBLE_ELEMENT=ax,
TITLE_LABEL=ay,

Kind="Section",
Parent=self
},ai)
end

function ah:AddToggle(av)
local aw,ax=an("Toggle",av)
local ay=ao("Toggle",av[4]or av.Flag)

local az=av[2]or av.Default or false
local aA=F(av[3]or av.Callback)

if type(az)~="boolean"then
error(`"Tab.AddToggle.Default". 'boolean' expected, got {typeof(az)}`,2)
end

if ay~=nil and type(ae[ay])=="number"then
az=ae[ay]==0
end

local aB=V[self]
local aC,aD,aE=am(self,aw,ax,UDim2.new(1,-38,0,0))

local aF=E("Frame",aC,{
Size=UDim2.new(0,35,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag={
OBJECTS=aB,
BackgroundColor3="Colors.Stroke"
}
})

local aG=E("Frame",aF,{
BackgroundTransparency=1,
Size=UDim2.new(0.8,0,0.8,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5)
})

local aH={
OBJECTS=aB,
BackgroundColor3="Colors.OnPrimary"
}

local aI=E("Frame",aG,{
Size=UDim2.new(0,12,0,12),
Position=UDim2.new(0,0,0.5),
AnchorPoint=Vector2.new(0,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag=aH
})

local aJ=tick()
local aK=0.2
local aL={}local aM=function(

aM)
aL={}
for aN=1,#aM do
aM[aN]:Play()
aL[aN]=aM[aN]
end end local aN=function()



for aN=#aL,1,-1 do
local aO=aL[aN]
if aO.PlaybackState==Enum.PlaybackState.Playing then
aO:Cancel()
end
aL[aN]=nil
end end local aO=function(


aO)
if ay~=nil then ae[ay]=aO and 0 or 1 end
G(aA,aO)

local aP=UDim2.new(aO and 1 or 0,0,0.5,0)
local aQ=Vector2.new(aO and 1 or 0,0.5)
local aR=aO and"Colors.Primary"or"Colors.OnPrimary"
local aS=w(s.CurrentTheme,aR)

aH.BackgroundColor3=aR

if self.Selected and(tick()-aJ)>=aK then
aM{
J(aI,"Position",aP,0.25),
J(aI,"AnchorPoint",aQ,0.25),
J(aI,"BackgroundColor3",aS,0.25)
}
else
aN()
aI.Position=aP
aI.AnchorPoint=aQ
aI.BackgroundColor3=aS
end

aJ=tick()end


local aP=ak.Toggle.new(self,aC,aD,aE,aO,aA)
aP:SetValue(az)

local aQ=0

u(aC.Activated,function()
if(tick()-aQ)>=aK then
aQ=tick()
aP:SetValue(not aP.Value)
end
end)

return aP
end

function ah:AddButton(av)
local aw,ax=an("Button",av)
local ay=F(av[2]or av.Callback)
local az=av.Debounce or av.Cooldown

local aA=V[self]
local aB,aC,aD=am(self,aw,ax,UDim2.new(1,-20,0,0))

local aE=E("ImageLabel",aB,{
Size=UDim2.new(0,14,0,14),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag={
OBJECTS=aA,
Image="Icons.Button"
}
})

local aF=0

u(aB.Activated,function()
if az~=nil and(tick()-aF)<0 then return end

if az~=nil then
aF=tick()+az
end

G(ay)
end)

return setmetatable({
CALLBACKS=ay,
DESTROY_ELEMENT=aB,
VISIBLE_ELEMENT=aB,
TITLE_LABEL=aC,
DESCRIPTION_LABEL=aD,

Title=aw,
Description=ax,

Parent=self,
Kind="Button"
},ai)
end

function ah:AddTextBox(av)
local aw,ax=an("TextBox",av)
local ay=ao("TextBox",av[4]or av.Flag)

local az=av[2]or av.Default
local aA=F(av[3]or av.Callback)

local aB=av.Placeholder or av.PlaceholderText
local aC=av.ClearOnFocus or av.ClearTextOnFocus

if az~=nil and type(az)~="string"then
error(`"Tab.AddTextBox.Default". 'string', or 'nil' expected, got {typeof(az)}`,2)
end

if ay and type(ae[ay])=="string"then
az=ae[ay]
end

local aD=V[self]
local aE,aF,aG=am(self,aw,ax,UDim2.new(1,-150,0,0))

local aH=E("Frame",aE,{
Size=UDim2.new(0,150,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Stroke"
},
Elements={
Corner=UDim.new(0,4)
}
})

local aI=E("TextBox",aH,{
Size=UDim2.new(0.85,0,0.85,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
BackgroundTransparency=1,
TextScaled=true,
Active=true,
Text="",
PlaceholderText=B.TEXTBOX.PLACEHOLDER_TEXT,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aJ={
OBJECTS=aD,
Image="Icons.TextBox",
ImageColor3="Colors.Icons"
}

local aK=E("ImageLabel",aH,{
Size=UDim2.new(0,12,0,12),
Position=UDim2.new(0,-5,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag=aJ
})

if az~=nil then
aI.Text=az
end

if aC~=nil then
aI.ClearTextOnFocus=aC
end

if aB~=nil then
aI.PlaceholderText=aB
end

local aL=ak.TextBox.new(self,aF,aG,aE,aI,aA)local aM=function(

aM)
aJ.ImageColor3=aM
J(aK,"ImageColor3",w(s.CurrentTheme,aM),0.5):Play()end


if ay~=nil then
u(aI:GetPropertyChangedSignal"Text",function()
ae[ay]=aI.Text
end)
end

u(aI.Focused,function()
aM"Colors.Primary"
end)

u(aI.FocusLost,function()
aM"Colors.Icons"
local aN=aL.TEXTBOX_TEXT_FILTER

if aN then
local aO=aN(aI.Text)
if type(aO)=="string"then
aI.Text=aO
end
end

G(aA,aI.Text)
end)

u(aE.Activated,function()
aI:CaptureFocus()
end)

return aL
end

function ah:AddSlider(av)
local aw,ax=an("Slider",av)
local ay=ao("Slider",av[7]or av.Flag)

local az=av[2]or av.Min
local aA=av[3]or av.Max
local aB=av[4]or av.Increment
local aC=av[5]or av.Default
local aD=F(av[6]or av.Callback)

if aB~=nil and type(aB)~="number"then
error(`"Tab.AddSlider.Increment". 'number', or 'nil' expected, got {typeof(aB)}`,2)
end

if aC~=nil and type(aC)~="number"then
error(`"Tab.AddSlider.Default". 'number', or 'nil' expected, got {typeof(aC)}`,2)
end

assert(type(az)=="number",`"Tab.AddSlider.Min", 'number' expected, got {typeof(az)}`)
assert(type(aA)=="number",`"Tab.AddSlider.Max", 'number' expected, got {typeof(aA)}`)

local aE=V[self]
local aF=T[self].Container

local aG,aH,aI=am(self,aw,ax,UDim2.new(0.55,0,0,0))

if aC==nil then
aC=az
end

if aB==nil then
aB=1
end

if ay~=nil and type(ae[ay])=="number"then
aC=ae[ay]
end

local aJ=E("TextButton",aG,{
Size=UDim2.new(0.45,0,1,0),
Position=UDim2.new(1,0,0,0),
AnchorPoint=Vector2.new(1,0),
AutoButtonColor=false,
BackgroundTransparency=1,
Text=""
})

local aK=E("Frame",aJ,{
Size=UDim2.new(1,-20,0,6),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
OBJECTS=aE,
BackgroundColor3="Colors.Stroke"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aL=E("Frame",aK,{
Size=UDim2.fromScale(0,1),
BorderSizePixel=0,
ThemeTag={
OBJECTS=aE,
BackgroundColor3="Colors.Primary"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aM=E("Frame",aK,{
Size=UDim2.new(0,6,0,12),
BackgroundColor3=Color3.fromRGB(220,220,220),
Position=UDim2.fromScale(0,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=0.2,
Elements={
Corner=UDim.new(0,6)
}
})

local aN=E("TextLabel",aJ,{
Size=UDim2.new(0,50,0,14),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(0,-1,0.5,0),
BackgroundTransparency=1,
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Right,
ThemeTag={
OBJECTS=aE,
TextColor3="Colors.Text.Default",
Font="Font.SliderValue"
}
})

local aO=E("UIScale",aN)

local aP=ak.Slider.new(self,aG,aH,aI,aD)

aP.Min=az
aP.Max=aA
aP.Increment=aB local aQ=function(

aQ)
return(aQ-az)/(aA-az)end local aR=function(


aR)
return(aR*(aA-az))+az end local aS=function(


aS)
return math.round(aS/aB)*aB end local aT=function(


aT, aU)
if aT==aP.Value then return end

if ay~=nil then
ae[ay]=aT
end

task.defer(G,aD,aT)
aP.Value=aT

local aV=UDim2.fromScale(aU,0.5)
local aW=UDim2.fromScale(aU,1)

aN.Text=tostring(math.floor(aT*1000)/1000)

if self.Selected then
J(aM,"Position",aV,0.3):Play()
J(aL,"Size",aW,0.3):Play()
else
aM.Position=aV
aL.Size=aW
end end local aU=function(


aU)
local aV=math.clamp(aS(aU),az,aA)
aT(aV,aQ(aV))end


aP.WHEN_VALUE_CHANGED=aU local aV=function(

aV, aW)
local aX=(p.X-aV.X)/aW.X
local aY=math.clamp(aX,0,1)
local aZ=aR(aY)
local a_=aS(aZ)
local a0=math.clamp(a_,az,aA)
aT(a0,aQ(a0))end


local aW=Random.new()
aU(aC)

u(aJ.MouseButton1Down,function()
if A~=false then return end

J(aM,"BackgroundTransparency",0,0.3):Play()
aF.ScrollingEnabled=false
A=true

local aX=aK.AbsolutePosition
local aY=aK.AbsoluteSize

while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
aV(aX,aY)
task.wait()
end

A=false
J(aM,"BackgroundTransparency",0.2,0.3):Play()
aF.ScrollingEnabled=true
end)

u(aN:GetPropertyChangedSignal"Text",function()
if not self.Selected then return end

aO.Scale=0.3
J(aO,"Scale",1.2,0.1):Play()

local aX=J(aN,"Rotation",aW:NextNumber(-7.5,7.5),0.15)
aX:Play()
aX.Completed:Wait()

J(aO,"Scale",1,0.2):Play()
J(aN,"Rotation",0,0.1):Play()
end)

return aP
end

function ah:AddDiscordInvite(av)
local aw,ax=an("DiscordInvite",av)
local ay=av.Icon or av.Image or av.Logo
local az=av.Banner or av.BannerColor
local aA=av.Online or av.MembersOnline
local aB=av.Members or av.TotalMembers
local aC=av.Invite or av.Link

assert(type(aC)=="string",`"Tab.AddDiscordInvite.Invite". 'string' expected, got {typeof(aC)}`)

if az~=nil and typeof(az)~="Color3"and type(az)~="string"then
error(`"Tab.AddDiscordInvite.Banner". 'nil', 'Color3', or 'string' expected, got {typeof(az)}`,2)
end

if aA~=nil and type(aA)~="number"then
error(`"Tab.AddDiscordInvite.Online". 'number' expected, got {typeof(aA)}`,2)
end

if aB~=nil and type(aB)~="number"then
error(`"Tab.AddDiscordInvite.Members". 'nil', or 'number' expected, got {typeof(aB)}`,2)
end

if I.ZIndexBehavior~=Enum.ZIndexBehavior.Sibling then
I.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
end

local aD=V[self]
local aE=T[self].Container

local aF=E("Frame","Option",aE,{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,148)
})

local aG=E("CanvasGroup",aF,{
Size=UDim2.new(0,178,1,-15),
Position=UDim2.new(0,5,1,0),
AnchorPoint=Vector2.new(0,1),
ClipsDescendants=true,
Elements={
Corner=UDim.new(0,9),
Stroke={
ThemeTag={
Color="Colors.Border.Default"
}
}
},
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Buttons.Default"
}
})

local aH=E("ImageLabel",aG,{
BackgroundColor3=Color3.new(1,1,1),
Size=UDim2.fromScale(1,0.28),
BackgroundTransparency=1
})

local aI=E("TextLabel",aF,{
Position=UDim2.fromOffset(5,0),
Size=UDim2.new(1,0,0,15),
TextColor3=Color3.fromRGB(40,150,255),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextSize=9,
Text=aC,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Link",
Font="Font.Medium"
}
})

local aJ=E("ImageLabel",aG,{
Size=UDim2.fromOffset(33,33),
Position=UDim2.new(0,10,0.28,0),
AnchorPoint=Vector2.new(0,0.5),
Image=ay,
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Buttons.Default"
},
Elements={
Corner=UDim.new(0,8),
Stroke={
Thickness=2.2,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
ThemeTag={
OBJECTS=aD,
Color="Colors.Buttons.Default"
}
}
}
})

local aK=E("TextLabel",aG,{
Size=UDim2.new(1,-10,0,10),
Position=UDim2.new(0,10,0.44,0),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextSize=11,
Text=aw,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aL

if aA or aB then
aL=E("Frame",aG,{
Size=UDim2.new(1,-10,0,9),
Position=UDim2.new(0,0,0.52,0),
BackgroundTransparency=1,
Elements={
Padding={
PaddingLeft=UDim.new(0,7),
PaddingRight=UDim.new(0,10)
},
ListLayout={
HorizontalAlignment=Enum.HorizontalAlignment.Left,
VerticalAlignment=Enum.VerticalAlignment.Center,
FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,4),
}
}
})local aM=function(

aM, aN)
return E("Frame",aL,{
Size=UDim2.fromScale(0,1),
AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,
Childs={
E("Frame",{
Size=UDim2.fromOffset(3,3),
Position=UDim2.new(0,5,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=aM,
Elements={
Corner=UDim.new(1,0)
}
}),
E("TextLabel",{
Size=UDim2.new(0,0,1,0),
Position=UDim2.new(0,12,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,
TextSize=7,
Text=aN,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Darker",
Font="Font.Normal"
}
})
}
})end


if aA~=nil then
aM(Color3.fromRGB(67,181,129),N(aA).." Online")
end
if aB~=nil then
aM(Color3.fromRGB(86,101,105),N(aB).." Members")
end
end

local aM=E("TextLabel",aG,{
Size=UDim2.new(1,-50,0,8),
Position=UDim2.new(0,10,aL and 0.6 or 0.56,0),
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
TextSize=8,
Text=ax or"",
TextWrapped=true,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Darker",
Font="Font.Medium"
}
})

local aN=E("Frame",aG,{
Size=UDim2.new(1,0,0.28,0),
Position=UDim2.fromScale(0,1),
AnchorPoint=Vector2.new(0,1),
BorderSizePixel=0,
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Buttons.Default"
}
})

if#aM.Text>0 then
aN.Size=UDim2.new(1,0,0.42,0)

E("UIGradient",aN,{
Rotation=-90,
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0.00,0.00),
NumberSequenceKeypoint.new(0.60,0.00),
NumberSequenceKeypoint.new(1.00,1.00)
}
})
end

local aO=E("TextButton",aN,{
Position=UDim2.new(0.5,0,1,-9),
Size=UDim2.new(1,-18,0,18),
AnchorPoint=Vector2.new(0.5,1),
Text="Go to Server",
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.JoinButton",
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aP=0

u(aO.Activated,function()
if(tick()-aP)<0 then return end

aP=tick()+5
local aQ=aO.Text
aO.Text="Copied to Clipboard!"
setclipboard(aC)
task.wait(4)
aO.Text=aQ
end)

if type(az)=="string"then
aH.ScaleType=Enum.ScaleType.Crop
aH.Image=az
elseif typeof(az)=="Color3"then
aH.BackgroundTransparency=0
E("UIGradient",aH,{
Rotation=-15,
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,az),
ColorSequenceKeypoint.new(1,az:Lerp(Color3.new(1,1,1),0.2))
}
})
end

return setmetatable({
DESTROY_ELEMENT=aF,
VISIBLE_ELEMENT=aF,

Title=aw,
Description=ax,
DESCRIPTION_LABEL=aM,
TITLE_LABEL=aK,

Kind="DiscordInvite",
Parent=self
},ai)
end

function ah:AddParagraph(av,aw)
assert(type(av)=="string",`"Tab.AddParagraph[param 1]". 'string' expected, got {typeof(av)}`)

if aw~=nil and type(aw)~="string"then
error(`"Tab.AddParagraph[param 2]". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

local ax=V[self]
local ay,az,aA=am(self,av,aw,UDim2.new(1,0,0,0))

return setmetatable({
DESTROY_ELEMENT=ay,
VISIBLE_ELEMENT=ay,
TITLE_LABEL=az,
DESCRIPTION_LABEL=aA,

Title=av,
Description=aw,

Parent=self,
Kind="Paragraph"
},ai)
end

function ah:AddDropdown(av)
local aw,ax=an("Dropdown",av)
local ay=ao("Dropdown",av[5]or av.Flag)

local az=av[2]or av.Options
local aA=av[3]or av.Default
local aB=F(av[4]or av.Callback)
local aC=av.MultiSelect

if aA~=nil and type(aA)~="table"and type(aA)~="string"then
error(`"Tab.AddDropdown.Default". 'string', 'table', or 'nil' expected, got {typeof(aA)}`,2)
end

if az~=nil and type(az)~="table"then
error(`"Tab.AddDropdown.Options". 'table', or 'nil' expected, got {typeof(az)}`,2)
end

if aC~=nil and type(aC)~="boolean"then
error(`"Tab.AddDropdown.MultiSelect". 'boolean', or 'nil' expected, got {typeof(aC)}`,2)
end

if ay and type(ae[ay])==(aC and"table"or"string")then
aA=ae[ay]
end

local aD=V[self]
local aE,aF,aG=am(self,aw,ax,UDim2.new(1,-150,0,0))

local aH=E("Frame",aE,{
Size=UDim2.new(0,150,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
Elements={
Corner=UDim.new(0,4)
},
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Stroke"
}
})

local aI=E("TextLabel",aH,{
Size=UDim2.new(0.85,0,0.85,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
BackgroundTransparency=1,
TextScaled=true,
Text="...",
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aJ={
OBJECTS=aD,
Image="Icons.Dropdown.Open",
ImageColor3="Colors.Icons"
}

local aK=E("ImageLabel",aH,{
Size=UDim2.new(0,15,0,15),
Position=UDim2.new(0,-5,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag=aJ
})

local aL=ak.Dropdown.new(self,aE,aF,aG,aB)

local aM
local aN=false
local aO=false

local aP={}
local aQ={}
local aR={}
local aS={}

aL.DROPDOWN_OPTIONS=aR
aL.Opened=aO local aT=function(

aT, aU)
aJ.ImageColor3=aT
aJ.Image=aU

J(aK,"ImageColor3",w(s.CurrentTheme,aT),0.35):Play()
aK.Image=w(s.CurrentTheme,aU)end local aU=function(


aU)
aO=aU
aL.Opened=aU

local aV=aU and"Colors.Primary"or"Colors.Icons"
local aW=aU and"Icons.Dropdown.Close"or"Icons.Dropdown.Open"
aT(aV,aW)end local aV=function()



aU(false)end local aW=function()



local aW={}
for aX,aY in aQ do
if not aY then continue end
aW[#aW+1]=aX
end
return aW end local aX=function(


aX)
local aY=type(aX)=="table"and table.concat(aX,", ")or(aX or"")

if#aY>=100 then
aY=aY:sub(1,97).."..."
end

aI.Text=#aY~=0 and aY or"..."end local aY=function()



aN=false

local aY=aC and aW()or aM and aM.Name
G(aB,aC and aQ or aY)
aX(aY)

if ay~=nil then
ae[ay]=aY
end end local aZ=function()



if not aN then
aN=true
task.delay(0.1,aY)
end end local a_=function(


a_)
if aC then
local a0=not a_.Selected
X.SetOptionValue(a_,a0)
aQ[a_.Name]=a0
else
if aM==a_ then
return nil
elseif aM~=nil then
X.SetOptionValue(aM,false)
end

aM=a_
X.SetOptionValue(a_,true)
end

aZ()end local a0=function(


a0)
a0=tostring(a0)
if aS[a0]then return end

local a1={
Name=a0,
DisplayName=a0,
Selected=false
}

if aC and aQ[a0]==nil then
aQ[a0]=false
end

aS[a0]=a1
aR[#aR+1]=a1
return a1 end local a1=function(


a1)
if aO==a1 then return end

if not X then
X=ap()
end

if a1 then
if not X.OpenDropdown(aV)then return end

X.SetHolder(aH)
X.SetMultiSelect(aC)
X.SetOnClicked(a_)
X.SetOptions(aR)
else
X.CloseDropdown()
end

aU(a1)end local a2=function(


a2, a3)
if a3 and type(a2)=="boolean"then
return a2==true and aR[a3]
end

return if type(a2)=="number"then aR[a2]else aS[tostring(a2)]end local a3=function(


a3)
a3.Selected=true

if aC then
aQ[a3.Name]=true
else
aM=a3
end end local a4=function(...)



local a4=a2(...)

if a4 then
a3(a4)
elseif aC and type(...)=="string"then
aP[select(1,...)]=true
end end local a5=function()



if not aA then return end

for a5=1,(aC and#aA or 1)do
a4(aA[a5],a5)
end end local a6=function(


a6)
local a7=table.find(aR,a6)

if a7 then
table.remove(aR,a7)
end

if a6.Instance then
a6.Instance:Destroy()
end

aS[a6.Name]=nil end local a7=function(


a7)
if aC then
local a8=a7.Name
return(aQ[a8]or aP[a8])==true
else
return aM and aM.Name==a7.Name
end end


aL.ADD_DROPDOWN_OPTION=function(a8)
if type(a8)=="table"then
for a9=1,#a8 do
aL:Add(a8[a9])
end

return nil
end

local a9=a0(a8)

if a9 then
if aL.Opened then
X.CreateOptionTemplate(a9,true)
end

if a7(a9)then
a3(a9)

if a9.Instance then
X.SetOptionValue(a9,a9.Selected)
end
end

aZ()
end
end

aL.REMOVE_DROPDOWN_OPTION=function(a8)
local a9=aS[tostring(a8)]
if a9 then
a6(a9)
end
end

aL.CLEAR_DROPDOWN=function()
for a8=#aR,1,-1 do
local a9=aR[a8]
if a9.Instance then
a9.Instance:Destroy()
end

aS[a9.Name]=nil
aR[a8]=nil
end

if aL.Opened then
X.Clear()
end
end

do
if az then
for a8=1,#az do
a0(az[a8])
end
end

if type(aA)=="table"then
a5()
elseif type(aA)=="string"or type(aA)=="number"then
local a8=a2(aA)

if a8 then
a3(a8)
end
end

if aC then
local a8=aW()
task.defer(G,aB,aQ)
aX(a8)
else
local a8=aM
local a9=a8 and a8.Name or""
task.defer(G,aB,a9)
aX(a9)
end
end

u(aE.Activated,function()
a1(not aO)
end)

return aL
end

function ah:Destroy()
assert(type(self)=="table"and self.IS_A_TAB,`"Tab.Destroy". {tostring(self)} is not a tab`)
if self.IS_DESTROYED then return end
local av=table.find(S,self)
assert(av,`"Tab.Destroy". failed to destroy '{self.Title}'`)

table.remove(S,av)

for aw,ax in T[self]do
ax:Destroy()
end

V[self]:destroy()

T[self]=nil
V[self]=nil

setmetatable(self,nil)
end

function ah:SetVisible(av)
assert(type(av)=="boolean",`"Tab.SetVisible[param 1]". 'boolean' extected, got {typeof(av)}`)

for aw,ax in T[self]do
ax.Visible=av
end
end

function ah:Select()
if ac==self then
return nil
end

if ac then
U[ac].Unselect()
end

ac=self
U[ac].Select()
end

function ai:SetTitle(av)
assert(type(av)=="string",`"Option.SetTitle". 'string' expected, got {typeof(av)}`)
assert(self.TITLE_LABEL,`"Option.SetTitle". cannot change this option name {self.KIND}:{self.Title}`)

self.TITLE_LABEL.Text=av
self.Title=av
return self
end

function ai:SetDescription(av)
assert(av==nil or type(av)=="string",`"Option.SetDescription". 'string', or 'nil' expected, got {typeof(av)}`)
assert(self.DESCRIPTION_LABEL,`"Option.SetDescription". cannot change this option description {self.KIND}:{self.Title}`)

self.DESCRIPTION_LABEL.Text=av
self.Description=av
return self
end

function ai:SetVisible(av)
assert(typeof(self.VISIBLE_ELEMENT)=="Instance",`"Option.SetVisible". cannot change this option visibility {self.KIND}:{self.Title}`)
assert(type(av)=="boolean",`"Option.SetVisible". 'boolean' expected, got {typeof(av)}`)

self.VISIBLE_ELEMENT.Visible=av
end

function ai:Destroy()
assert(typeof(self.DESTROY_ELEMENT)=="Instance",`"Option.Destroy". cannot destroy this option {self.KIND}:{self.Title}`)

self.DESTROY_ELEMENT:Destroy()
setmetatable(self,nil)

self.Destroyed=true
end

function ai:AddCallback(av)
assert(self.CALLBACKS,"\"Option.AddCallback\". cannot add callback to this option.")
assert(type(av)=="function",`"Option.AddCallback[param 1]". 'function' expected, got {typeof(av)}`)

table.insert(self.CALLBACKS,av)
return self
end

ai.NewCallback=ai.AddCallback
ai.SetContent=ai.SetDescription
ai.SetDesc=ai.SetDescription

function aj:CreateMobileMinimizer(av)
local aw=E("ImageButton",I,{
Size=UDim2.fromOffset(35,35),
Position=UDim2.fromScale(0.17,0.28),
AnchorPoint=Vector2.new(0.5,0.5),
AutoButtonColor=false,
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
}
})

u(aw.Activated,function()
ag:Minimize()
end)

av.Elements={}

if av.Corner then
av.Elements.Corner=av.Corner
av.Corner=nil
end

if av.Stroke then
av.Elements.Stroke=av.Stroke
av.Stroke=nil
end

D.Draggable(aw,ad,0.5)
D.SetProperties(aw,av)

return aw
end

function aj:SetKeyCode(av)
assert(au(av),`"Minimizer.SetKeyCode[param 1]". 'KeyCode' expected, got {typeof(av)}`)

self.KeyCode=av
end

function ag:SelectTab(av)
local aw=type(av)=="number"and S[av]

if type(av)=="table"and av.IS_A_TAB then
aw=av
end

if aw then
aw:Select()
elseif not aw then
assert(type(av)=="number",`"Window.SelectTab" number or tab expected, got {typeof(av)}`)
assert(av>0,`"Window.SelectTab" the number must be greater than 0, value: {av}`)
assert(av==math.floor(av),`"Winow.SelectTab" floor number expected, got {av}`)

self.SelectedTab=av
end
end

function ag:Minimize()
ab.Visible=not ab.Visible
end

function ag:MakeTab(av)
local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Icon or av.Image

assert(type(aw)=="string",`"Tab.Title" 'string' expected, got {typeof(aw)}`)
assert(ax==nil or type(ax)=="string",`"Tab.Icon" 'string' expected, got {typeof(ax)}`)

local ay=setmetatable({
Selected=self.SelectedTab==#S+1,
Icon=s:GetIconByName(ax),
Title=aw,

Parent=self,
IS_A_TAB=true
},ah)

local az=self:GetElements()
local aA=az.TabsContainer
local aB=az.ContainerHolder

local aC,aD,aE=al(self,ay,aA)

local aF=J(aD,"Size",UDim2.new(1,0,1,0),0.3)
local aG=UDim2.new(1,0,1,150)

local aH=0.45

local aI={
J(aE,"BackgroundTransparency",0,aH),
J(aE,"Size",UDim2.fromOffset(4,13),aH)
}

local aJ={
J(aE,"BackgroundTransparency",1,aH),
J(aE,"Size",UDim2.fromOffset(4,4),aH)
}

local aK=C:new()
V[ay]=aK local aL=function(

aL)
for aM=1,#aL do
aL[aM]:Play()
end end local aM=function()



aL(aI)
ay.Selected=true
aK:changeRendering(true)
aK:update()
aD.Parent=aB
aD.Size=aG
aF:Play()end local aN=function()



aL(aJ)
ay.Selected=false
aD.Parent=nil
aK:changeRendering(false)end


U[ay]=table.freeze{
Unselect=aN,
Select=aM
}

T[ay]=table.freeze{
SelectTabButton=aC,
Container=aD
}

table.insert(S,ay)

u(aC.Activated,function()
ay:Select()
end)

if ay.Selected then
ay:Select()
end

return ay
end

function ag:StartWindow(av)
local aw=av.MinimizeButton
local ax=av.MainFrame
local ay=av.Resizers
local az=av.TopBar

local aA=av.SubTitle
local aB=av.Title

Y=av.Dropdowns
ab=av.MainFrame
ad=av.UIScale
ae=av.Flags

local aC=ax.Size
local aD=0

function ag:MinimizeButton()
if(tick()-aD)<0 then
return false
end

if self.Minimized then
aw.Image="rbxassetid://10734896206"
J(ax,"Size",aC,0.25):Play()
else
aC=ax.Size
aw.Image="rbxassetid://10734924532"
J(ax,"Size",UDim2.fromOffset(ax.Size.X.Offset,az.Size.Y.Offset),0.25):Play()
end

for aE,aF in ay do
aF.Visible=self.Minimized
end

self.Minimized=not self.Minimized
aD=tick()+0.5

return true
end

function ag:GetTitle()
return aB.Text
end

function ag:GetSubTitle()
return aA.Text
end

function ag:SetTitle(aE)
assert(type(aE)=="string",`"Window.SetTitle". 'string' expected, got {typeof(aE)}`)
assert(#aE>0,"\"Window.SetTitle\". the new 'Title' is too short.")

aB.Text=aE
end

function ag:SetSubTitle(aE)
assert(type(aE)=="string",`"Window.SetSubTitle". 'string' expected, got {typeof(aE)}`)
assert(#aE>0,"\"Window.SetSubTitle\". the new 'SubTitle' is too short.")

aA.Text=aE
end

W=E("Frame",I,{
Size=UDim2.new(0,280,1,0),
Position=UDim2.fromScale(1,0),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
Elements={
Padding={
PaddingBottom=UDim.new(0,20)
},
ListLayout={
HorizontalAlignment=Enum.HorizontalAlignment.Center,
VerticalAlignment=Enum.VerticalAlignment.Bottom,
SortOrder=Enum.SortOrder.LayoutOrder,
Padding=UDim.new(0,20)
}
}
})

aa=E("TextButton","OutBox",{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=0.3,
AutoButtonColor=false,
Text="",
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
ax:FindFirstChildOfClass"UICorner":Clone(),
E("Frame","Template",{
Size=UDim2.new(0.35,60,0.20,80),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,
Elements={
Corner=UDim.new(0,6),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
},
Childs={
E("TextLabel","Title",{
Size=UDim2.new(1,-20,0,20),
TextTruncate=Enum.TextTruncate.AtEnd,
TextSize=15,
Position=UDim2.new(0.5,0,0,28),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,
ThemeTag={
Font="Font.ExtraBold",
TextColor3="Colors.Text.Default"
}
}),
E("TextLabel","Description",{
Position=UDim2.new(0.5,0,0,46),
Size=UDim2.new(1,-20,0,0),
AnchorPoint=Vector2.new(0.5,0),
TextWrapped=true,
TextSize=11,
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
ThemeTag={
TextColor3="Colors.Text.Darker",
Font="Font.Medium"
}
}),
E("Frame","Options",{
Size=UDim2.new(1,-20,0.15,18),
Position=UDim2.new(0.5,0,1,-10),
AnchorPoint=Vector2.new(0.5,1),
BackgroundTransparency=1,
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingBottom=UDim.new(0,30),
PaddingTop=UDim.new(0,30)
},
ListLayout={
HorizontalAlignment=Enum.HorizontalAlignment.Right,
VerticalAlignment=Enum.VerticalAlignment.Center,
FillDirection=Enum.FillDirection.Horizontal
}
}
})
}
})
}
})

aa.Template:SetAttribute("OriginalSize",aa.Template.Size)

u(aa.Activated,function()
if Z~=nil and not Z.Closing and not Z.Closed then
Z:Close()
end
end)

ag.StartWindow=nil
end

function ag:DeleteFlags()
return ae()
end

function ag:SetFlag(av,aw)
assert(type(av)=="string",`"Window.SetFlag[param 1]". 'string' expected, got {typeof(av)}`)

if at[typeof(aw)]~=true then
local ax={}

for ay,az in at do
table.insert(ax,ay)
end

return error(`"Window.SetFlag[param 2]". '{table.concat(ax,"', '")}' expected, got {typeof(aw)}`,2)
end

ae[av]=aw
end

function ag:GetFlag(av)
return ae[av]
end

function ag:ReadFile(av)
assert(type(av)=="string",`"Window.ReadFile[param 1]". 'string' expected, got {typeof(av)}`)
av=`{self.ScriptFolder}/{av}`

if f~=nil and(isfile==nil or not isfile(av))then
return f(av)
end
end

function ag:WriteFile(av,aw)
assert(type(av)=="string",`"Window.WriteFile[param 1]". 'string' expected, got {typeof(av)}`)
av=`{self.ScriptFolder}/{av}`

if aw~=nil and type(aw)~="string"then
error(`"Window.WriteFile[param 2]". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

if aw==nil then
if c~=nil then
c(`{self.ScriptFolder}/{av}`)
return true
end
else
if e~=nil then
z(`{self.ScriptFolder}/{av}`)
return true
end
end

return false
end

function ag:NewMinimizer(av)
local aw=type(av)=="table"and(av[1]or av.KeyCode)or av

if not au(aw)then
error(`"Window.NewMinimizer.KeyCode". 'KeyCode' expected, got {typeof(aw)}`,2)
end

local ax=setmetatable({
KeyCode=aw
},aj)

u(i.InputBegan,function(ay)
if ay.KeyCode==ax.KeyCode then
ag:Minimize()
end
end)

return ax
end

function ag:Dialog(av)
if self.Minimized then
while not self:MinimizeButton()do task.wait()end
end

if Z then
Z:Close(true)
end

local aw=av.Title or av.Name
local ax=av.Content or av.Description
local ay=av.Options

assert(type(aw)=="string",`"Window.Dialog.Title". 'string' expected, got {typeof(aw)}`)
assert(type(ax)=="string",`"Window.Dialog.Content". 'string' expected, got {typeof(ax)}`)
assert(type(ay)=="table",`"Window.Dialog.Options". 'table' expected, got {typeof(ay)}`)
assert(#ay>0,"\"Window.Dialog.Options\". requires one or more options.")local az=function()


local az=aa.Template
local aA=az.Description
local aB=az.Title

local aC=az:GetAttribute"OriginalSize"
local aD=UDim2.new(aC.X.Scale*1.2,aC.X.Offset,aC.Y.Scale*1.2,aC.Y.Offset)

az.Size=aD
aa.Parent=ab
aA.Text=ax
aB.Text=aw

J(az,"Size",aC,0.3):Play()

local aE=ak.Dialog.new(aA,aB)
aE.NEW_SIZE=aD
aE.TEMPLATE=az

for aF,aG in az.Options:GetChildren()do
if aG:IsA"GuiObject"then
aG:Destroy()
end
end

for aF=#ay,1,-1 do
aE:NewOption(ay[aF])
end

return aE end


Z=az()
return Z
end

function ag:SetNotifyDefaultIcon(av)
assert(type(av)=="string",`"Window.SetNotifyDefaultIcon[param 1]". 'string' expected, got {typeof(av)}`)

af=av
end

function ag:Notify(av)
if type(av)~="table"then
av={}
end

local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Content
local ay=av[3]or av.Icon or av.Image
local az=av[4]or av.Duration or av.Countdown or av.Time

if self.NOTIFICATION_GROUP then
if az==nil then az=self.Duration end
if ax==nil then ax=self.Content end
if aw==nil then aw=self.Title end
if ay==nil then ay=self.Icon end
end

assert(type(aw)=="string",`"Window.Notify.Title". 'string' expected, got {typeof(aw)}`)
assert(type(ax)=="string",`"Window.Notify.Content". 'string' expected, got {typeof(aw)}`)
assert(ay==nil or type(ay)=="string",`"Window.Notify.Icon". 'nil' or 'string' expected, got {typeof(ay)}`)

if az~=nil and type(az)~="number"then
error(`"Window.Notify.Time". 'number', or 'nil' expected, got {typeof(az)}`,2)
elseif az==nil then
az=5
end

local aA=E("Frame","Notification",W,{
Size=UDim2.new(0.85,0,0,60),
BackgroundTransparency=1,
AutomaticSize=Enum.AutomaticSize.Y
})

local aB=E("TextButton",aA,{
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.fromScale(1,1),
AutoButtonColor=false,
Text="",
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Elements={
Corner=UDim.new(0,9),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}
})

local aC=E("UIScale",aA)

local aD=E("Frame","Holder",aB,{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Elements={
ListLayout={
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,4)
},
Padding={
PaddingBottom=UDim.new(0,8),
PaddingTop=UDim.new(0,8),
PaddingLeft=UDim.new(0,40)
}
}
})

local aE=E("TextLabel",aD,{
Size=UDim2.new(1,0,0,20),
TextTruncate=Enum.TextTruncate.AtEnd,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Bottom,
BackgroundTransparency=1,
TextSize=14,
ThemeTag={
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aF=E("TextLabel",aD,{
Size=UDim2.new(1,0,0,20),
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
TextWrapped=true,
TextSize=12,
ThemeTag={
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local aG=E("ImageLabel",aB,{
Size=UDim2.fromOffset(24,24),
Position=UDim2.new(0,8,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Colors.Icons"
}
})

local aH=E("TextLabel",aB,{
Size=UDim2.new(0,40,0,16),
Position=UDim2.new(1,-10,0,8),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
TextSize=10,
ThemeTag={
TextColor3="Colors.Text.Darker",
Font="Font.Normal"
}
})

local aI=false

local aJ=J(aC,"Scale",1.22,0.35)
local aK=J(aC,"Scale",1.00,0.35)

local aL=setmetatable({
TITLE_LABEL=aE,
DESCRIPTION_LABEL=aF,
VISIBLE_ELEMENT=aA,
DESTROY_ELEMENT=aA,
NOTIFICATION=aB,

Kind="Notification",
Closed=false,
Parent=self
},ai)

function aL:Close()
if self.Closed==true then return end

self:Destroy()
self.Closed=true

local aM=J(aB,"Position",UDim2.fromScale(3,0),0.8)
aM:Play()
aM.Completed:Wait()
aA:Destroy()
end local aM=function()


ay=s:GetIconByName(ay or af)
aG.Image=ay

if not O(ay)then
aG.Visible=false
aD.UIPadding.PaddingLeft=UDim.new(0,15)
end

aB.Position=UDim2.fromScale(3,0)
J(aB,"Position",UDim2.fromScale(0,0),0.35):Play()

aE.Text=aw
aF.Text=ax

local aM=aB.MouseLeave

while az>0 do
aH.Text=Q(az)
if aI==true then aM:Wait()end
az-=task.wait()
end

aL:Close()end


u(aB.MouseButton1Down,function()aJ:Play()aI=true end)
u(aB.MouseLeave,function()aK:Play()aI=false end)

task.defer(aM)

return aL
end

function ag:NewNotifyGroup(av)
local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Content
local ay=av[3]or av.Icon or av.Image
local az=av[4]or av.Duration or av.Countdown or av.Time

if aw~=nil and type(aw)~="string"then
error(`"Window.NewNotifyGroup.Title". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

if ax~=nil and type(ax)~="string"then
error(`"Window.NewNotifyGroup.Content". 'string', or 'nil' expected, got {typeof(ax)}`,2)
end

if ay~=nil and type(ay)~="string"then
error(`"Window.NewNotifyGroup.Icon". 'string', or 'nil' expected, got {typeof(ay)}`,2)
end

if az~=nil and type(az)~="number"then
error(`"Window.NewNotifyGroup.Time". 'number', or 'nil' expected, got {typeof(az)}`,2)
end

return{
NOTIFICATION_GROUP=true,
Notify=ag.Notify,

Duration=az,
Content=ax,
Title=aw,
Icon=ay,
}
end

function ag:GetTabByTitle(av)
assert(type(av)=="string",`"Window.GetTabByTitle[param 1]". 'string' expected, got {typeof(av)}`)

for aw=1,#S do
if S[aw].Title==av then
return S[aw]
end
end
end

ag.NewNotificationGroup=ag.NewNotifyGroup
ag.SetDefaultNotifyIcon=SetNotifyDefaultIcon
ag.GetTabByName=ag.GetTabByTitle
ag.Notificafion=ag.Notify

R.Window=ag
end local aa=function(

aa, ab)
local ac=ab.Size.Y.Offset
local ad=UDim2.new(0,aa.TabSize or s.Default.TabSize,1,-ac)
local ae=UDim2.new(1,-ad.X.Offset,1,-ac)

local af=E("ScrollingFrame","TabsScroll",{
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y,
Position=UDim2.new(0,0,1,0),
AnchorPoint=Vector2.new(0,1),
ScrollBarThickness=2.2,
BackgroundTransparency=1,
ScrollBarImageTransparency=0.2,
CanvasSize=UDim2.new(),
BorderSizePixel=0,
Size=ad,
ThemeTag={
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingTop=UDim.new(0,10),
PaddingBottom=UDim.new(0,10)
},
ListLayout={
Padding=UDim.new(0,5)
}
}
})

local ag=E("Frame","Containers",{
Size=ae,
AnchorPoint=Vector2.new(1,1),
Position=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ClipsDescendants=true
})

return af,ag end


function s:GetIconByName(ab)
if ab==nil then return end
assert(ab,`"Library.GetIconByName". 'string' expected, got {typeof(ab)}`)

if O(ab)or#ab==0 then
return ab
end

local ac=M(ab)

if self.Icons[ac]then
return"rbxassetid://"..self.Icons[ac]
end

for ad,ae in self.Icons do
if ad:find(ac,1,true)then
return"rbxassetid://"..ae
end
end
end

function s:IsValidTheme(ab)
assert(type(ab)=="string",`"Library.IsValidTheme". string extected, got {typeof(ab)}`)

return self.Themes[ab]~=nil
end

function s:GetThemes()
local ab={}
for ac,ad in self.Themes do
table.insert(ab,ac)
end
return ab
end

function s:GetTheme(ab)
assert(ab==nil or type(ab)=="string",`"Library.GetTheme". 'string' expected, got {typeof(ab)}`)

if ab==nil then
return self.CurrentTheme
end

local ac=self.Themes[ab]
assert(ac~=nil,`"Library.GetTheme". theme not found: {ab}`)
return ac
end

function s:SetTheme(ab)
assert(type(ab)=="string",`"Library.SetTheme". string extected, got {typeof(ab)}`)
local ac=self.Themes[ab]
assert(ac,`"Library.SetTheme". theme not found: {ab}`)

self.CurrentTheme=ac
self.WindowSettings.SelectedTheme=ac.Name

C:update()
end

function s:SetUIScale(ab)
local ac=B.MIN_SCALE
local ad=B.MAX_SCALE

assert(type(ab)=="number",`"Library.SetUIScale". 'number' expected, got {typeof(ab)}`)
assert(ab>=ac and ab<=ad,`"Library.SetUIScale". Min Scale: {ac}, Max Scale: {ad}`)

I.Scale.Scale=P(ab)
end

function s:GetMaxScale()
return B.MAX_SCALE
end

function s:GetMinScale()
return B.MIN_SCALE
end

function s:GetCurrentTheme()
if not self.LOADED_UI_LIBRARY then
return error("failed to get current theme: UI is not loaded",2)
end
return self.CurrentTheme
end

function s:Destroy()
for ab,ac in self.Connections do
ac:Disconnect()
end

if I and I:GetAttribute"UID"==self.SCREENGUI_UID then
pcall(I.Destroy,I)
end
end

function s:MakeWindow(ab)
if self.LOADED_UI_LIBRARY then
return error("you can create only 1 Window",2)
end

local ac=math.random()
I:SetAttribute("UID",ac)
self.SCREENGUI_UID=ac
I:ClearAllChildren()

local ad=E("UIScale","Scale",I,{
Scale=P(1)
})

local ae={
Title=ab[1]or ab.Name or ab.Title,
SubTitle=ab[2]or ab.SubName or ab.SubTitle,
ScriptFolder=ab[3]or ab.ScriptFolder or ab.FolderName
}

assert(type(ae.Title)=="string",`"Window.Title". 'string' expected, got {typeof(ae.Title)}`)
assert(type(ae.SubTitle)=="string",`"Window.SubTitle". 'string' expected, got {typeof(ae.SubTitle)}`)

if ae.ScriptFolder~=nil and type(ae.ScriptFolder)~="string"then
return error(`"Window.ScriptFolder". 'string', or nil expected, got {typeof(ae.ScriptFolder)}`,2)
end

local af=(function()
local af=ae.ScriptFolder
local ag=false

local ah,ai=pcall(function()
return af and k:JSONDecode(f(`{af}/LibrarySettings.json`))
end)

if type(ai)~="table"then
ai={}
end local aj=function()


ag=false

return pcall(function()
return z(`{af}/LibrarySettings.json`,k:JSONEncode(ai))
end)end local ak=function(


ak, al, am)
rawset(ai,al,am)

if af and not ag then
ag=true
task.delay(0.5,aj)
end end


return setmetatable({},{
__newindex=ak,
__index=ai
})
end)()

local ag=(function()
local ag=ae.ScriptFolder
local ah=false

local ai,aj=pcall(function()
return ag and k:JSONDecode(f(`{ag}/ScriptFlags.json`))
end)

if type(aj)~="table"then
aj={}
end local ak=function()


ah=false

return pcall(function()
z(`{ag}/ScriptFlags.json`,k:JSONEncode(aj))
end)end local al=function(


al, am, an)
rawset(aj,am,an)

if ag and not ah then
ah=true
task.delay(0.5,ak)
end end local am=function()



table.clear(aj)
return pcall(function()
return ag and c(`{ag}/ScriptFlags.json`)
end)end


return setmetatable({},{
__newindex=al,
__call=am,
__index=aj
})
end)()

self.ThemesObjects=C
self.WindowSettings=af
self.Flags=ag

if type(af.SelectedTheme)=="string"and self:IsValidTheme(af.SelectedTheme)then
self:SetTheme(af.SelectedTheme)
else
self:SetTheme(self.Default.Theme)
end

self.LOADED_UI_LIBRARY=true

local ah=self.Default.UISize

if af and type(af.UISize)=="table"then
local ak,al=unpack(af.UISize)

if type(ak)=="number"and type(al)=="number"then
local am=I.AbsoluteSize
ak=math.clamp(ak,430,1000)
al=math.clamp(al,200,500)
ah=UDim2.fromOffset(ak,al)
end
end

local ak=E("Frame","Window",I,{
Position=UDim2.new(0.5,-ah.X.Offset/2,0.5,-ah.Y.Offset/2),
Active=true,
Size=ah,
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Elements={
Corner=UDim.new(0,8),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}
})

u(ak.Destroying,function()
self:Destroy()
end)

u(I:GetAttributeChangedSignal"UID",function()
self:Destroy()
ak:Destroy()
end)

D.Draggable(ak,ad,0.5)

local al=E("Folder","Components",ak)
local am=E("Folder","Dropdowns",I)

local an=E("Frame","TopBar",al,{
Size=UDim2.new(1,0,0,28),
BackgroundTransparency=1
})

local ao=E("TextLabel","Title",an,{
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.XY,
Position=UDim2.new(0,15,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
Text=ae.Title,
TextSize=12,
BackgroundTransparency=1,
ThemeTag={
TextColor3="Colors.Text.Default",
Font="Font.Bold"
},
Childs={
E("TextLabel","SubTitle",{
Size=UDim2.fromScale(0,1),
AutomaticSize="X",
AnchorPoint=Vector2.new(0,1),
Position=UDim2.new(1,5,0.9),
Text=ae.SubTitle,
BackgroundTransparency=1,
TextXAlignment="Left",
TextYAlignment="Bottom",
TextSize=8,
ThemeTag={
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})
}
})

local ap=E("Folder","Buttons",an,{
Childs={
E("ImageButton","Close",{
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
BackgroundColor3=Color3.fromRGB(255,35,35),
AutoButtonColor=false,
ThemeTag={
Image="Icons.Close"
},
Elements={
Corner=UDim.new(0.2,0)
}
}),
E("ImageButton","Minimize",{
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,-35,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
Image="rbxassetid://10734896206",
AutoButtonColor=false,
Elements={
Corner=UDim.new(0.2,0)
}
})
}
})

local aq=ap.Minimize
local ar=ap.Close

local as=setmetatable(ae,{
__index=R.Window
})

local at,au=aa(af,an)

at.Parent=al
au.Parent=al

local av=table.freeze{
ContainerHolder=au,
TabsContainer=at,
Components=al,
MainFrame=ak
}

function as:GetElements()
return av
end

local aw=E("Frame","ControlWindowSize",ak,{
Size=UDim2.new(0,35,0,35),
Position=ak.Size,
AnchorPoint=Vector2.new(0.8,0.8),
BackgroundTransparency=1,
Active=true,
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.OnPrimary"
}
})

local ax=E("Frame","ControlTabsSize",ak,{
Size=UDim2.new(0,16,0.75,-30),
Position=UDim2.new(0,at.Size.X.Offset,0.5,15),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Active=true,
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.OnPrimary"
}
})local ay=function(

ay)
local az=ay:GetAttribute"Resizing"
ay:SetAttribute("Resizing",tick())

if az and(tick()-az)<=0.1 then
return nil
end

J(ay,"BackgroundTransparency",0.5,0.3):Play()
while tick()-ay:GetAttribute"Resizing"<=0.1 do task.wait()end
J(ay,"BackgroundTransparency",1,0.4):Play()end


u(aw:GetPropertyChangedSignal"Position",function()
ay(aw)
local az=aw.Position
ak.Size=az
af.UISize={az.X.Offset,az.Y.Offset}
end)

u(ax:GetPropertyChangedSignal"Position",function()
ay(ax)
local az=ax.Position
at.Size=UDim2.new(0,az.X.Offset,1,-an.Size.Y.Offset)
au.Size=UDim2.new(1,-at.Size.X.Offset,1,-an.Size.Y.Offset)
af.TabSize=az.X.Offset
end)

D.Draggable(aw,ad,0.68,function(az,aA,aB,aC)
return UDim2.fromOffset(math.clamp(aA,430,1000),math.clamp(aC,200,500))
end)

D.Draggable(ax,ad,0.68,function(aA,aB)
return UDim2.new(0,math.clamp(aB,135,210),0.5,15)
end)

local aA={
Title="Close Window?",
Content="You Want Close UI?",
Options={
{
Title="Yes",
Callback=function()self:Destroy()end
},
{
Title="No"
}
}
}

u(aq.MouseEnter,function()aq.BackgroundTransparency=0.65 end)
u(aq.MouseLeave,function()aq.BackgroundTransparency=1.00 end)

u(ar.MouseEnter,function()ar.BackgroundTransparency=0.65 end)
u(ar.MouseLeave,function()ar.BackgroundTransparency=1.00 end)

as.SetUIScale=self.SetUIScale
as.SUBTITLE_LABEL=ao.SubTitle
as.TITLE_LABEL=ao

local aB=as:StartWindow{
Resizers={aw,ax},
MinimizeButton=aq,
Dropdowns=am,
MainFrame=ak,
TopBar=an,

SubTitle=ao.SubTitle,
Title=ao,

UIScale=ad,
Flags=ag
}

u(aq.Activated,function()
as:MinimizeButton()
end)

u(ar.Activated,function()
as:Dialog(aA)
end)

return as
end

return s
]===]

------------------------------------------------------------------------
-- helpers
------------------------------------------------------------------------
local HttpService = game:GetService("HttpService")

local function log(message)
    warn("[Project Zero GUI] " .. tostring(message))
end

local FOLDER = CONFIG.Folder
local canFS = type(isfile) == "function" and type(readfile) == "function" and type(writefile) == "function"
local canFolders = type(isfolder) == "function" and type(makefolder) == "function"
local getAsset = getcustomasset or getsynasset

local function ensureFolder(path)
    if canFolders then
        pcall(function()
            if not isfolder(path) then
                makefolder(path)
            end
        end)
    end
end

local function hashString(text)
    local h = 5381
    for i = 1, #text do
        h = (h * 33 + text:byte(i)) % 4294967296
    end
    return string.format("%08x", h)
end

-- PNG and JPEG are the only formats Roblox image labels accept from files.
local function sniffImage(bytes)
    if type(bytes) ~= "string" or #bytes < 8 then
        return nil
    end
    if bytes:sub(1, 8) == "\137PNG\r\n\26\n" then
        return ".png"
    end
    if bytes:sub(1, 3) == "\255\216\255" then
        return ".jpg"
    end
    return nil
end

------------------------------------------------------------------------
-- images: asset id / file in workspace / direct link
------------------------------------------------------------------------
local function fileToAsset(path)
    if not (getAsset and canFS) then
        return nil, "this executor has no getcustomasset, so file images cannot be shown (use a Roblox asset id instead)"
    end
    local okFile, exists = pcall(isfile, path)
    if not okFile or not exists then
        return nil, "file not found: " .. path
    end
    local ok, url = pcall(getAsset, path)
    if ok and type(url) == "string" and url ~= "" then
        return url
    end
    return nil, "getcustomasset failed for " .. path
end

-- Returns image, isNativeAssetId  -or-  nil, reason
local function resolveImage(spec)
    spec = tostring(spec or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if spec == "" then
        return nil
    end

    local id = spec:match("^rbxassetid://(%d+)$") or spec:match("^(%d+)$")
    if id then
        return "rbxassetid://" .. id, true
    end

    if spec:match("^https?://") then
        if not (getAsset and canFS) then
            return nil, "links need getcustomasset and file functions; this executor lacks them"
        end
        ensureFolder(FOLDER)
        ensureFolder(FOLDER .. "/cache")
        local base = FOLDER .. "/cache/" .. hashString(spec)
        for _, ext in ipairs({ ".png", ".jpg" }) do
            local okFile, exists = pcall(isfile, base .. ext)
            if okFile and exists then
                return fileToAsset(base .. ext)
            end
        end
        local okGet, body = pcall(game.HttpGet, game, spec)
        if not okGet then
            return nil, "download failed: " .. tostring(body)
        end
        local ext = sniffImage(body)
        if not ext then
            return nil, "that link is not a direct PNG/JPG image (a normal web page was returned)"
        end
        local okWrite, writeError = pcall(writefile, base .. ext, body)
        if not okWrite then
            return nil, "could not save the image: " .. tostring(writeError)
        end
        return fileToAsset(base .. ext)
    end

    if spec:match("^rbxasset://") then
        return spec
    end

    local path = spec
    local okFile, exists = pcall(function()
        return canFS and isfile(path)
    end)
    if not (okFile and exists) then
        path = FOLDER .. "/" .. spec
    end
    return fileToAsset(path)
end

local function findFile(base)
    if not canFS then
        return nil
    end
    for _, ext in ipairs({ ".png", ".jpg", ".jpeg" }) do
        local ok, exists = pcall(isfile, base .. ext)
        if ok and exists then
            return base .. ext
        end
    end
    return nil
end

local imageNotes = {} -- shown in Settings > Images

local function note(text)
    imageNotes[#imageNotes + 1] = text
end

local function resolveLogo()
    if CONFIG.Logo ~= "" then
        local image, native = resolveImage(CONFIG.Logo)
        if not image then
            note("Logo: " .. tostring(native))
        end
        return image
    end
    if CONFIG.AutoImageFiles then
        local path = findFile(FOLDER .. "/logo")
        if path then
            local image, reason = fileToAsset(path)
            if not image then
                note("Logo: " .. tostring(reason))
            end
            return image
        end
    end
    return nil
end

local function resolveTabIcon(name)
    local spec = CONFIG.TabIcons[name] or ""
    if spec ~= "" then
        local image, native = resolveImage(spec)
        if not image then
            note(name .. " icon: " .. tostring(native))
            return nil
        end
        return image, native
    end
    if CONFIG.AutoImageFiles then
        local path = findFile(FOLDER .. "/icons/" .. name)
        if path then
            local image, reason = fileToAsset(path)
            if not image then
                note(name .. " icon: " .. tostring(reason))
            end
            return image, false
        end
    end
    return nil
end

------------------------------------------------------------------------
-- small persisted settings (UI scale)
------------------------------------------------------------------------
local settingsPath = FOLDER .. "/gui.json"
local settings = { scale = 1 }

local function loadSettings()
    if not canFS then
        return
    end
    pcall(function()
        if isfile(settingsPath) then
            local decoded = HttpService:JSONDecode(readfile(settingsPath))
            if type(decoded) == "table" and type(decoded.scale) == "number" then
                settings.scale = math.clamp(decoded.scale, 0.6, 1.6)
            end
        end
    end)
end

local function saveSettings()
    if not canFS then
        return
    end
    pcall(function()
        writefile(settingsPath, HttpService:JSONEncode(settings))
    end)
end


------------------------------------------------------------------------
-- look & feel
------------------------------------------------------------------------
local THEME_NAME = "ProjectZero"
local ACCENT = {
    Color3.fromRGB(56, 160, 255),
    Color3.fromRGB(0, 229, 255),
    Color3.fromRGB(150, 100, 255),
    Color3.fromRGB(56, 160, 255),
}

local function accentSequence()
    return ColorSequence.new({
        ColorSequenceKeypoint.new(0, ACCENT[1]),
        ColorSequenceKeypoint.new(0.33, ACCENT[2]),
        ColorSequenceKeypoint.new(0.66, ACCENT[3]),
        ColorSequenceKeypoint.new(1, ACCENT[4]),
    })
end

-- Copies Redz's built-in "Darker" theme and recolours it (deep navy glass + electric blue).
local function registerTheme(lib)
    local base = lib.Themes and lib.Themes.Darker
    if not base then
        return false
    end
    local function copy(value)
        local result = {}
        for k, v in pairs(value) do
            result[k] = type(v) == "table" and copy(v) or v
        end
        return result
    end
    local theme = copy(base)
    theme.Name = THEME_NAME
    local c = theme.Colors
    c.Background = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 10, 20)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 20, 39)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 10, 20)),
    })
    c.Primary = Color3.fromRGB(56, 160, 255)
    c.OnPrimary = Color3.fromRGB(22, 70, 128)
    c.ScrollBar = Color3.fromRGB(40, 120, 200)
    c.Stroke = Color3.fromRGB(28, 44, 74)
    c.Icons = Color3.fromRGB(225, 236, 250)
    c.Link = Color3.fromRGB(90, 190, 255)
    c.Dialog.Background = Color3.fromRGB(12, 20, 38)
    c.Buttons.Default = Color3.fromRGB(16, 25, 45)
    c.Buttons.Holding = Color3.fromRGB(24, 38, 66)
    c.Border.Default = Color3.fromRGB(30, 46, 78)
    c.Border.Holding = Color3.fromRGB(58, 98, 160)
    c.Text.Default = Color3.fromRGB(240, 246, 255)
    c.Text.Dark = Color3.fromRGB(190, 205, 226)
    c.Text.Darker = Color3.fromRGB(148, 166, 196)
    c.Slider.SliderBar = Color3.fromRGB(56, 160, 255)
    c.Slider.SliderNumber = Color3.fromRGB(235, 245, 255)
    c.Dropdown.Holder = Color3.fromRGB(12, 20, 38)
    theme.Font.Bold = Enum.Font.GothamBold
    theme.Font.ExtraBold = Enum.Font.GothamBlack
    theme.Font.SliderValue = Enum.Font.GothamBold
    theme.BackgroundTransparency = 0.04
    lib.Themes[THEME_NAME] = theme
    return true
end

-- Rounded neon outline (slowly turning gradient) + accent line under the title bar.
local function addChrome(mainFrame, title)
    if mainFrame then
        local stroke = Instance.new("UIStroke")
        stroke.Name = "PZBorder"
        stroke.Thickness = 1.6
        stroke.Color = Color3.fromRGB(255, 255, 255)
        stroke.Transparency = 0.1
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = mainFrame

        local gradient = Instance.new("UIGradient")
        gradient.Color = accentSequence()
        gradient.Parent = stroke

        if CONFIG.AnimatedBorder then
            local connection
            connection = game:GetService("RunService").Heartbeat:Connect(function(dt)
                gradient.Rotation = (gradient.Rotation + dt * 45) % 360
            end)
            mainFrame.Destroying:Connect(function()
                if connection then
                    connection:Disconnect()
                    connection = nil
                end
            end)
        end
    end

    local bar = title and title.Parent
    if bar then
        title.TextSize = 14
        local line = Instance.new("Frame")
        line.Name = "PZAccentLine"
        line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        line.BorderSizePixel = 0
        line.Position = UDim2.new(0, 10, 1, -1)
        line.Size = UDim2.new(1, -20, 0, 1)
        line.Parent = bar

        local gradient = Instance.new("UIGradient")
        gradient.Color = accentSequence()
        gradient.Parent = line
    end
end

------------------------------------------------------------------------
-- placeholder layout (every control is inert: no scripts attached yet)
------------------------------------------------------------------------
local function T(name, default) return { k = "t", name = name, default = default == true } end
local function S(name, min, max, default, step) return { k = "s", name = name, min = min, max = max, default = default, step = step or 1 } end
local function D(name, options, default, multi) return { k = "d", name = name, options = options, default = default, multi = multi == true } end
local function B(name) return { k = "b", name = name } end
local function I(name, placeholder) return { k = "i", name = name, placeholder = placeholder } end
local function L(title, text) return { k = "l", title = title, text = text } end

-- sample choices (the real lists will be filled in by the game later)
local MATERIALS = { "Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail", "Radioactive Material", "Ectoplasm", "Mystic Droplet", "Vampire Fang", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Mini Tusk", "Nightmare Catcher" }
local BOSSES = { "The Gorilla King", "Chief", "Yeti", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Saw", "Diamond", "Jeremy", "Orbitus", "Smoke Admiral", "Awakened Ice Admiral", "Tide Keeper", "Don Swan", "Stone", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate", "Cake Queen" }
local BOATS = { "Dinghy", "PirateSloop", "PirateBrigade", "PirateGrandBrigade", "MarineSloop", "MarineBrigade", "MarineGrandBrigade", "Beast Hunter", "Lantern", "Guardian", "Grand Brigade", "Sloop", "The Sentinel" }
local ZONES = { "Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Infinite" }
local SEA_TARGETS = { "Terror Shark", "Sea Beast", "Shark", "Piranha", "Fish Crew Member", "Pirate Brigade", "Pirate Grand Brigade", "Ghost Ship" }
local RODS = { "Fishing Rod", "Gold Rod", "Shark Rod", "Shell Rod", "Treasure Rod", "Shark (Corrupted)", "Shell (Celestial)" }
local BAITS = { "Basic Bait", "Kelp Bait", "Good Bait", "Abyssal Bait", "Frozen Bait", "Epic Bait", "Carnivore Bait" }
local CARDS = { "Hyper", "Overflow", "Fortress", "Shadow", "Sniper", "Lifesteal", "Unbreakable", "Health", "Defense", "Armor", "Melee", "Sword", "Fruit", "Gun" }
local RAID_CHIPS = { "Flame", "Ice", "Quake", "Light", "Dark", "Spider", "Rumble", "Magma", "Buddha", "Sand", "Phoenix", "Dough" }
local FRUITS = { "Rocket-Rocket", "Spin-Spin", "Blade-Blade", "Spring-Spring", "Bomb-Bomb", "Smoke-Smoke", "Spike-Spike", "Flame-Flame", "Ice-Ice", "Sand-Sand", "Dark-Dark", "Eagle-Eagle", "Diamond-Diamond", "Light-Light", "Rubber-Rubber", "Ghost-Ghost", "Magma-Magma", "Quake-Quake", "Buddha-Buddha", "Love-Love", "Creation-Creation", "Spider-Spider", "Sound-Sound", "Phoenix-Phoenix", "Portal-Portal", "Lightning-Lightning", "Pain-Pain", "Blizzard-Blizzard", "Gravity-Gravity", "Mammoth-Mammoth", "T-Rex-T-Rex", "Dough-Dough", "Shadow-Shadow", "Venom-Venom", "Gas-Gas", "Spirit-Spirit", "Tiger-Tiger", "Yeti-Yeti", "Kitsune-Kitsune", "Control-Control", "Dragon-Dragon" }
local ISLANDS = { "Starter Island", "Jungle", "Pirate Village", "Desert", "Frozen Village", "Marine Fortress", "Skylands", "Prison", "Colosseum", "Magma Village", "Underwater City", "Fountain City" }
local NPCS = { "Blox Fruit Dealer", "Sword Dealer", "Ability Teacher", "Haki Advisor", "Barista", "Boat Dealer" }
local MELEES = { "Combat", "Dark Step", "Electric", "Water Kung Fu", "Dragon Breath", "Superhuman", "Death Step", "Sharkman Karate", "Electric Claw", "Dragon Talon", "Godhuman", "Sanguine Art" }
local GUNS = { "Slingshot", "Musket", "Flintlock", "Refined Slingshot", "Dual Flintlock", "Cannon", "Bizarre Rifle", "Acidum Rifle", "Kabucha", "Skull Guitar", "Bazooka" }
local ACCESSORIES = { "Black Cape", "Swordsman Hat", "Tomoe Ring", "Pink Coat", "Blue Coat", "Cool Shades" }
local KEYS5 = { "Z", "X", "C", "V", "F" }

local LAYOUT = {
    ["Home"] = {
        { "Main Farm",
            D("Weapon", { "Melee", "Sword", "Blox Fruit", "Gun" }, "Melee"),
            D("Farm Method", { "Quest", "Quest + Nearest", "No Quest", "Nearest" }, "Quest"),
            D("Quest Farm Mode", { "Single Quest", "Double Quest", "Triple Quest" }, "Double Quest"),
            S("Nearest (Distance)", 1000, 5000, 1500, 50),
            T("Auto Farm"), T("Take Quest"), T("Auto Bones"), T("Enable Mastery"),
            S("Health Mob %", 15, 100, 25),
            T("Auto Random Surprise"), T("Auto Pray"), T("Auto Try Luck"),
            T("Auto Katakuri"), T("Ignore Katakuri"),
            T("Auto Dough King"), T("Ignore Farm Dough King Item"),
            D("Select Material", MATERIALS, MATERIALS[1]),
            T("Auto Farm Material"),
        },
        { "Boss Farm",
            D("Select Boss", BOSSES, BOSSES[1]),
            T("Auto Farm Boss"), T("Auto Kill All Bosses"), T("Get Boss Quest"),
        },
        { "Tyrant Farm",
            T("Auto Summon + Kill Tyrant Of The Skies"), T("Use Skull Guitar for Vases", true),
        },
        { "Chest Farm",
            T("Start Farming Chest"), T("Stop If Items"), T("Auto Hop Server On Chests"),
            S("Chest Hop Target Count", 1, 50, 10),
            D("Chest Type", { "All", "Silver", "Gold", "Diamond" }, "All"),
            T("Stop Hop If Chalice / Fist", true),
        },
        { "Farm Settings",
            S("Travel Speed", 10, 250, 250, 5),
            D("Tween Method", { "Lerp", "TweenService" }, "Lerp"),
            T("Bypass TP"),
            S("Farm Distance", 0, 30, 18),
            S("Bring Radius", 150, 400, 350, 10),
            D("Pos Method", { "Above", "Orbit" }, "Above"),
            T("Start Bring", true),
            D("Attack Method", { "Fast Attack", "Legit Attack" }, "Fast Attack"),
            S("Fast Attack Delay", 0, 1, 0, 0.01),
            T("Fast Attack", true), T("Project Zero Attack"), T("Auto Attack Gun", true),
            D("Dragonstorm Mode", { "Spread Damage", "Single Damage" }, "Spread Damage"),
            S("Gun Shoot Amount", 1, 10, 1),
            T("Remove Fast Attack Animation", true),
            T("Attack Mobs", true), T("Attack Players", true),
            T("Auto Activate Observation Haki"), T("Auto Set Spawn Point"),
            T("Debounce Quests"), T("Bypass Get Quest"),
            D("Select Team", { "Pirates", "Marines" }, "Pirates"),
            T("Auto Load Script on Load"),
            T("Disable Damage Counter"), T("Disable Notifications"),
            T("Walk in Water", true),
            T("Auto Hop when 30 mins"), T("Auto Hop When Admin Joined", true),
            T("Anti AFK", true),
            B("Remove Effects"),
        },
        { "Skills",
            D("Select Skills", { "Blox Fruit", "Melee", "Sword", "Gun" }, nil, true),
            D("Blox Fruit Skills", KEYS5, nil, true),
            D("Melee Skills", { "Z", "X", "C" }, nil, true),
            D("Sword Skills", { "Z", "X" }, nil, true),
            D("Gun Skills", { "Z", "X" }, nil, true),
            T("Auto Use Skills"),
        },
        { "Skill Timing",
            S("Z Hold Time (ms)", 0, 5, 0, 0.1), S("X Hold Time (ms)", 0, 5, 0, 0.1), S("C Hold Time (ms)", 0, 5, 0, 0.1),
            S("V Hold Time (ms)", 0, 5, 0, 0.1), S("F Hold Time (ms)", 0, 5, 0, 0.1),
            S("Blox Fruit Skill Delay (ms)", 0, 5, 0, 0.1), S("Melee Skill Delay (ms)", 0, 5, 0, 0.1),
            S("Sword Skill Delay (ms)", 0, 5, 0, 0.1), S("Gun Skill Delay (ms)", 0, 5, 0, 0.1),
        },
    },

    ["Sub Farm"] = {
        { "World Farm", T("Auto Second Sea Quest"), T("Auto Third Sea Quest") },
        { "Quest Farm",
            T("Complete Saber Quest"), T("Complete Bartilo Quest"), T("Complete Citizen Quest"), T("Complete Rainbow Haki Quest"),
        },
        { "Items Farm",
            T("Auto Get Yama (Fully)"), T("Auto Get Tushita (Fully)"), T("Auto Get CDK (Fully)"),
            T("Auto Get Rengoku (Fully)"), T("Auto Get TTK (Fully)"), T("Auto Evolve DarkBlade (V2)"),
            T("Auto Shark Anchor (Fully)"), T("Auto Get Skull Guitar (Fully)"), T("Ignore Material Farm for Skull Guitar"),
        },
        { "Sword Mastery", S("Select Sword Mastery", 100, 600, 600, 10), T("Auto Mastery Swords (Fully)") },
        { "Fight Style Obtainment",
            T("Auto Death Step"), T("Auto Sharkman Karate"), T("Auto Electric Claw"), T("Auto Dragon Talon"),
        },
        { "Timely Farm",
            T("Auto Elite Hunter"), T("Auto Factory Raid"), T("Auto Pirate Raid"), T("Auto Soul Reaper"),
            T("Auto Darkbeard"), T("Auto Greybeard"), T("Auto Cursed Captain"), T("Auto Open Colors Plate"),
            T("Auto True Form Rip Indra"),
        },
        { "Other Farm",
            T("Start Farm Observation"), T("Auto Get Observation V2"), T("Farm Observation Hopping"), T("Auto Dummy Training"),
        },
    },

    ["Sea Event"] = {
        { "Mirage Event", T("Auto Find Mirage Island"), T("Teleport to Mirage") },
        { "Kitsune Event",
            T("Auto Find Kitsune Island"), T("Teleport to Shrine"), T("Auto Collect Azure Embers"),
            T("Auto Kitsune Farm"), S("Set Azure Ember", 1, 25, 1), T("Auto Trade Azure Ember"),
        },
        { "Leviathan Hunt",
            B("Bribe"), T("Auto Find Leviathan"), T("Ignore Sea Events While Finding"),
            T("Auto Kill Leviathan"), T("Auto Sail back to Tiki"),
        },
        { "Sea Farm",
            D("Select Boat", BOATS, "PirateBrigade"),
            D("Select Zone", ZONES, "Level 6"),
            S("Boat Height", 0, 150, 31), S("Boat Speed", 10, 250, 230, 5),
            D("Sea Event Targets", SEA_TARGETS, nil, true),
            D("Select Owned Boat", { "My Boat" }, "My Boat"),
            B("Refresh Boats"),
            T("ESP My Boat"), T("Auto Drive"), B("Buy New Boat"),
            T("Auto Farm Sea Events"), T("Protect Boat (Float in Combat)", true),
            T("Auto Buy New Boat When It Dies"), T("Auto Reset Character if Boat Destroyed"),
            T("Auto Dodge Terror Shark", true), T("Auto Dodge Seabeast", true),
            T("Use M1 Dragonstorm for Seabeast / Ships"),
            S("Manual Speed", 20, 250, 150, 5), T("Manual Increase Boat Speed"),
        },
        { "Fishing",
            D("Fishing Rod", RODS, RODS[1]), D("Bait", BAITS, BAITS[1]),
            B("Open Fish Index"),
            T("Auto Fishing"), T("Auto Catch Chest"), T("Auto Craft Bait"),
            T("Auto Get / Complete Angler Quest"), T("Auto Sell Fish"), T("Auto Use Rod Skill"),
        },
        { "Fish Slap Minigame", T("Auto Fish Slap") },
    },

    ["Player"] = {
        { "Player Stats",
            L("Player Status", "Scanning for information..."),
            S("Select Points", 0, 1000, 10, 5),
            T("Melee"), T("Defense"), T("Sword"), T("Gun"), T("Devil Fruit"),
            T("Start Adding Stats"),
        },
        { "ESP Menu",
            T("Players ESP"), T("Islands ESP"), T("Fruits ESP"), T("Chests ESP"), T("Berries ESP"),
            T("Natural Fruits ESP (Pineapple, etc.)"),
        },
        { "PVP Menu",
            D("Select Player", { "Nearest" }, "Nearest"),
            B("Refresh Player List"),
            T("Cam Lock"), T("Spectate Player"), T("Teleport to Player"), T("Enable Aimbot"),
            B("Get Player Quest"),
        },
        { "Server Menu",
            L("Server Status", "Loading..."), B("Refresh Server Info"),
            L("Player Status", "Loading..."), B("Refresh Player Info"),
            L("Fruit Stock", "Loading fruit stock..."), B("Refresh Fruit Stock"),
        },
    },

    ["Dragon Update"] = {
        { "Berry Farm", T("Auto Collect Berries"), T("Hop If No Berries") },
        { "Belt Obtainment", B("Teleport to Dojo Trainer"), T("Auto White Belt"), T("Auto Purple Belt") },
        { "Prehistoric Event",
            T("Auto Find Prehistoric Island"), T("Teleport to Prehistoric Island"),
            T("Auto Complete Volcanic Event"), T("Use Skull Guitar for Volcano", true),
            T("Auto Collect Bones"), T("Auto Collect Dragon Eggs"), T("Auto Farm Blaze Ember"),
            D("Select Gun", { "Skull Guitar", "Bazooka" }, "Skull Guitar"),
            T("Use Shoot Gun for Tree Quest"),
            B("Teleport to Dragon Hunter"), B("Teleport to Dragon Wizard"),
            T("Auto Upgrade Dragon Talon"),
            B("Craft Volcanic Magnet"), B("Craft Dragonheart"), B("Craft Dragonstorm"),
            B("Craft Dino Hood"), B("Craft T-Rex Skull"),
        },
        { "Draco Race",
            T("Teleport to Draco Trial"), B("Change to Draco Race"),
            T("Auto Draco Race V2"), T("Auto Complete Draco Trial"),
        },
    },

    ["Dungeon"] = {
        { "Raid Menu",
            D("Raid Chip", RAID_CHIPS, RAID_CHIPS[1]),
            T("Auto Buy Chip"), T("Auto Complete Raid"), T("Instant Kill Islands 4-5"),
            T("Auto Unstore Below 1m Fruit"), T("Auto Awaken"),
            S("Frags Cap", 1000, 1000000, 1000, 1000),
            T("Auto Stop Raid When Fragments Reach Cap"),
        },
        { "Dungeon Menu",
            T("Auto Unlock Difficulties"), T("Auto Complete Dungeon"), T("Auto Destroy Shrines and Vents"),
            D("Select Cards", CARDS, nil, true), T("Auto Select Cards"),
            B("Unlock Next Difficulty"), B("Teleport to Dungeon Map"), B("Return to Previous Sea"),
        },
        { "Law Menu", T("Start Law Raid Farm") },
        { "Fruit Menu",
            B("Open Normal Shop"), B("Open Advanced Shop"),
            T("Auto Roll Fruit"), T("Auto Store Fruit"),
            L("Fruit Spawn Status", "Scanning for fruit..."),
            T("Teleport to Fruit"), T("Hop If No Fruit In Server"), T("Fruit Notification"),
            B("Teleport to Advanced Fruit Dealer"),
        },
        { "Trinkets & Refiner",
            B("Buy Trinket"), T("Auto Buy Trinkets"),
            B("Fuse / Merge 3 Trinkets"), T("Auto Fuse / Merge Trinkets"),
            B("Reforge / Refine Trinket"), T("Auto Refine Trinket"),
            B("Open Trinket Merge GUI"), B("Open Trinket Refiner GUI"), B("Open Trinket Scrap GUI"),
            T("Auto Scrap Junk Trinkets"),
        },
    },

    ["Trials"] = {
        { "Trials",
            B("Go to Race Door"), T("Auto Activate Race"), T("Auto Complete Trials"),
            T("Kill Players After Trial"), B("Reset Character"), T("Auto Choose Gear"),
            D("Train Method", { "Bones", "Cakes" }, "Bones"),
            T("Start Auto Train"), T("Auto Pull Lever (Fully)"), T("Teleport To Blue Gear"),
        },
        { "Area",
            B("Teleport to Top of Great Tree"), B("Teleport to Temple of Time"), B("Teleport to Ancient One"),
            B("Teleport to Lever Pull"), B("Teleport to Safe Zone"), B("Teleport back to PvP Zone"), B("Teleport to Clock"),
        },
        { "Misc Trial",
            T("Auto Upgrade Gear"), T("Auto Activate V3", false), T("Auto Activate V4"), T("Auto Look Moon"),
        },
        { "Upgrades", T("Auto Race Evolve V2"), T("Auto Race Evolve V3") },
        { "Race Obtainment", T("Auto Get Ghoul Race (Fully)"), T("Auto Get Cyborg Race (Fully)") },
    },

    ["Travel"] = {
        { "World Travel", B("Teleport to World 1"), B("Teleport to World 2"), B("Teleport to World 3") },
        { "Island Travel", D("Select Island", ISLANDS, ISLANDS[1]), T("Start Traveling") },
        { "NPC Travel", D("Select NPC", NPCS, NPCS[1]), T("Start Traveling") },
        { "Server Travel",
            I("Job ID", "Paste a Job ID"), I("Project Zero Premium Code", "Paste a code"), B("Copy Current Job ID"),
        },
        { "Quick Travel", B("Rejoin Server"), B("Server Hop (Random Server)") },
        { "Server Joiner",
            B("Join Full Moon Server"), B("Join Near Full Moon Server"), B("Join Mirage Island Server"),
            B("Join Elite Hunter Server"), B("Join Kitsune Island Server"), B("Join Prehistoric Island Server"),
            B("Join Factory Raid Server"), B("Join 4 Hours Server"), B("Join Castle Raid Server"),
            D("Select Legendary Sword", { "Shizu", "Oroshi", "Saishi" }, "Shizu"),
            B("Join Legendary Sword Server"), B("Join Fruit Server"),
            D("Select Boss to Hop", BOSSES, BOSSES[1]), B("Join Raid Boss Server"),
        },
        { "AFK Joiner",
            S("Hop Delay (s)", 1, 60, 10),
            T("Auto AFK Join Castle Raid"), T("Auto AFK Join Factory Raid"), T("Auto AFK Join Boss Raid"),
            T("Auto AFK Join Elite Hunter"), T("Auto AFK Join Fruit"),
            T("Stop Hop If Chalice / Fist", true),
        },
    },

    ["Shop"] = {
        { "Selection Shop",
            D("Select Melee", MELEES, MELEES[1]), T("Auto Buy Melee"),
            D("Abilities", { "Geppo", "Buso Haki", "Soru", "Ken Haki" }, "Geppo"), B("Buy Ability"),
            D("Guns", GUNS, GUNS[1]), B("Buy Gun"),
            D("Accessories", ACCESSORIES, ACCESSORIES[1]), B("Buy Accessory"),
        },
        { "Item Shop", T("Buy Haki Color"), T("Buy Legendary Sword"), T("Buy True Triple Katana") },
        { "Fruit Dealer",
            D("Select Fruit to Buy", FRUITS, "Buddha-Buddha"),
            T("Auto Buy Fruit (Normal Dealer)"), B("Buy Selected Fruit"),
        },
        { "Race Shop", B("Cyborg Race"), B("Ghoul Race") },
        { "Fragment Shop", B("Reroll Race"), B("Reset Player Stats") },
        { "Scroll Crafting",
            D("Select Scroll", { "Common Scroll", "Rare Scroll", "Legendary Scroll", "Mythical Scroll" }, "Common Scroll"),
            S("Craft Amount", 1, 10, 1), B("Craft Selected Scroll"), T("Auto Craft Selected Scroll"),
        },
    },

    ["Misc"] = {
        { "Team Selection", B("Join Marines Team"), B("Join Pirates Team") },
        { "Menu Openings", B("Open Title Names"), B("Open Awakenings") },
        { "Fake Admin Panel",
            B("Teleport Tool"), B("Summon Heaven Dimension"), B("Summon Red Legion Hideout"),
            B("Summon Rip Family Arena"), B("Summon Pocket Dimension"), B("Summon Rip Family Hideout"),
            B("Give Triple DarkBlade"), B("Give Celestial Art"), B("Give Divine Art"), B("Give Tensei"),
            B("Give All Kamui Tools"), B("Rain Fruit"), B("Give Black Blast"), B("Give Black Nuke"), B("Give Rogue Fruit"),
        },
        { "Player Client",
            T("Remove Observation Effect"),
            S("Walk Speed", 50, 500, 50, 5), S("Jump Power", 50, 500, 50, 5),
            T("X-ray Vision"), T("Infinite Zoom"), T("White Screen"), T("Black Screen"),
            B("Redeem All Codes"), T("Remove Fog"),
            B("Force FPS Boost"), B("Developer Console"), B("Clean Memory / Free RAM"),
            T("Auto Memory Cleaner (60s)", true), T("Auto Turn On Fast Mode"),
        },
    },

    ["Webhook"] = {
        { "General Webhook",
            I("Main Webhook URL", "https://discord.com/api/webhooks/..."),
            T("Enable Send Webhook"), B("Send Test Webhook"),
        },
        { "World & Fruit Events",
            T("Send Webhook: Prehistoric"), T("Send Webhook: Kitsune"), T("Send Webhook: Mirage"),
            T("Send Webhook: Rolled Fruit"), T("Send Webhook: Stored Fruit"),
        },
        { "Data Log & Farm Tracker",
            T("Enable Data Log Webhook"), I("Data Log Webhook URL (optional)", "https://discord.com/api/webhooks/..."),
            S("Data Log Interval (minutes)", 1, 60, 5),
            T("Send on Level Up"), T("Include Inventory in Data Log", true), T("Include Farms Summary", true),
            B("Send Data Log Now"),
        },
        { "Ping Settings",
            I("Discord User ID (for ping)", "123456789012345678"),
            T("Ping on Mirage / Kitsune"), T("Ping on Mythical Fruit"),
        },
    },

    ["Settings"] = {
        { "Appearance",
            T("Farm HUD"), T("Startup Animation", true),
            D("Logo Style", { "Default", "Project Zero" }, "Project Zero"),
        },
    },
}

------------------------------------------------------------------------
-- 1. clean up an earlier run, load the embedded Redz library
------------------------------------------------------------------------
pcall(function()
    if env.ProjectZeroRedzLib then
        env.ProjectZeroRedzLib:Destroy()
    end
end)
env.ProjectZeroRedzLib, env.ProjectZeroWindow, env.ProjectZeroTabs = nil, nil, nil

if type(loadstring) ~= "function" then
    log("This executor has no loadstring, so the GUI cannot load.")
    return
end

local chunk, compileError = loadstring(REDZ_SOURCE)
if not chunk then
    log("Redz library failed to compile: " .. tostring(compileError))
    return
end

local okLib, Library = pcall(chunk)
if not okLib or type(Library) ~= "table" or type(Library.MakeWindow) ~= "function" then
    log("Redz library failed to start: " .. tostring(Library))
    return
end
env.ProjectZeroRedzLib = Library

local themeReady = false
do
    local okTheme, errTheme = pcall(registerTheme, Library)
    themeReady = okTheme and errTheme == true
    if not okTheme then
        log("Custom theme could not be built (using the default one): " .. tostring(errTheme))
    end
end

ensureFolder(FOLDER)
ensureFolder(FOLDER .. "/icons")
loadSettings()

------------------------------------------------------------------------
-- 2. window
------------------------------------------------------------------------
local okWindow, Window = pcall(function()
    return Library:MakeWindow({
        Title = CONFIG.Title,
        SubTitle = CONFIG.SubTitle,
        ScriptFolder = canFolders and FOLDER or nil,
    })
end)
if not okWindow or not Window then
    log("Could not create the window: " .. tostring(Window))
    return
end
env.ProjectZeroWindow = Window

if themeReady then
    local okSet, errSet = pcall(function()
        Library:SetTheme(THEME_NAME)
    end)
    if not okSet then
        log("Could not apply the Project Zero theme: " .. tostring(errSet))
    end
end

local elements = {}
pcall(function()
    elements = Window:GetElements()
end)
local mainFrame = elements.MainFrame
local tabsContainer = elements.TabsContainer
local resizeHandle = mainFrame and mainFrame:FindFirstChild("ControlWindowSize")

do
    local okChrome, errChrome = pcall(addChrome, mainFrame, Window.TITLE_LABEL)
    if not okChrome then
        log("Window styling could not be applied: " .. tostring(errChrome))
    end
end

------------------------------------------------------------------------
-- 3. visible resize grip (Redz already has a drag handle, but it is invisible)
------------------------------------------------------------------------
local function addGrip(handle)
    local grip = Instance.new("Frame")
    grip.Name = "PZGrip"
    grip.BackgroundTransparency = 1
    grip.AnchorPoint = Vector2.new(1, 1)
    grip.Size = UDim2.fromOffset(16, 16)
    grip.Position = UDim2.new(0.8, -3, 0.8, -3)
    grip.Active = false
    grip.Parent = handle

    -- three diagonal bars, longest furthest from the corner
    for _, bar in ipairs({ { 13.5, 4 }, { 10.5, 8 }, { 7.5, 12 } }) do
        local line = Instance.new("Frame")
        line.Name = "Bar"
        line.BackgroundColor3 = Color3.fromRGB(235, 235, 245)
        line.BackgroundTransparency = 0.25
        line.BorderSizePixel = 0
        line.AnchorPoint = Vector2.new(0.5, 0.5)
        line.Position = UDim2.fromOffset(bar[1], bar[1])
        line.Size = UDim2.fromOffset(bar[2], 2)
        line.Rotation = -45
        line.Parent = grip

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(1, 0)
        corner.Parent = line
    end
end

if resizeHandle then
    local ok, err = pcall(addGrip, resizeHandle)
    if not ok then
        log("Resize grip could not be drawn: " .. tostring(err))
    end
else
    log("Resize handle not found; use the Settings > Window sliders instead.")
end

local function setWindowSize(width, height)
    if not resizeHandle then
        return
    end
    -- Redz resizes the window when this handle moves (and saves the size).
    resizeHandle.Position = UDim2.fromOffset(width, height)
end

------------------------------------------------------------------------
-- 4. logo (title bar + optional floating button)
------------------------------------------------------------------------
local logoImage = resolveLogo()

if logoImage then
    local ok, err = pcall(function()
        local title = Window.TITLE_LABEL
        local bar = title and title.Parent
        if not bar then
            error("title bar not found")
        end
        local logo = Instance.new("ImageLabel")
        logo.Name = "PZLogo"
        logo.BackgroundTransparency = 1
        logo.AnchorPoint = Vector2.new(0, 0.5)
        logo.Position = UDim2.new(0, 10, 0.5, 0)
        logo.Size = UDim2.fromOffset(22, 22)
        logo.ScaleType = Enum.ScaleType.Fit
        logo.Image = logoImage
        logo.Parent = bar
        title.Position = UDim2.new(0, 38, 0.5, 0)
    end)
    if not ok then
        log("Logo could not be added to the title bar: " .. tostring(err))
    end

    if CONFIG.FloatingButton then
        local okButton, errButton = pcall(function()
            Window:CreateMobileMinimizer({ Image = logoImage, Corner = UDim.new(0.2, 0) })
        end)
        if not okButton then
            log("Floating logo button could not be created: " .. tostring(errButton))
        end
    end
end

------------------------------------------------------------------------
-- 5. tabs (+ icons)
------------------------------------------------------------------------
-- Redz only draws icons that are Roblox asset ids. For file / link images we add our own
-- image next to the tab name instead.
local function addFileIcon(tabName, image)
    if not tabsContainer then
        error("tab list not found")
    end
    for _, d in ipairs(tabsContainer:GetDescendants()) do
        if d:IsA("TextLabel") and d.Text == tabName and d.Parent then
            local icon = Instance.new("ImageLabel")
            icon.Name = "PZIcon"
            icon.BackgroundTransparency = 1
            icon.AnchorPoint = Vector2.new(0, 0.5)
            icon.Position = UDim2.new(0, 8, 0.5, 0)
            icon.Size = UDim2.fromOffset(16, 16)
            icon.ScaleType = Enum.ScaleType.Fit
            icon.Image = image
            icon.Parent = d.Parent
            d.Size = UDim2.new(1, -32, 1, 0)
            d.Position = UDim2.new(0, 30, 0, 0)
            return
        end
    end
    error("tab button not found")
end

local tabs, created = {}, 0
for _, name in ipairs(TABS) do
    local image, native = resolveTabIcon(name)
    local okTab, tab = pcall(function()
        return Window:MakeTab({ Name = name, Icon = (image and native) and image or nil })
    end)
    if okTab and tab then
        tabs[name] = tab
        created = created + 1
        if image and not native then
            local okIcon, errIcon = pcall(addFileIcon, name, image)
            if not okIcon then
                note(name .. " icon: " .. tostring(errIcon))
            end
        end
    else
        log("Tab '" .. name .. "' failed: " .. tostring(tab))
    end
end
env.ProjectZeroTabs = tabs


------------------------------------------------------------------------
-- 5b. placeholder controls (no functions attached)
------------------------------------------------------------------------
local function inert() end
local placeholderCount, placeholderFailed = 0, {}

local function addItem(tab, item)
    local ok, err = pcall(function()
        if item.k == "t" then
            tab:AddToggle({ Name = item.name, Default = item.default, Callback = inert })
        elseif item.k == "s" then
            tab:AddSlider({
                Name = item.name,
                Min = item.min,
                Max = item.max,
                Increment = item.step,
                Default = math.clamp(item.default, item.min, item.max),
                Callback = inert,
            })
        elseif item.k == "d" then
            local cfg = { Name = item.name, Options = item.options, Callback = inert }
            if item.multi then
                cfg.MultiSelect = true
            elseif item.default ~= nil then
                cfg.Default = item.default
            end
            tab:AddDropdown(cfg)
        elseif item.k == "b" then
            tab:AddButton({ Name = item.name, Callback = inert })
        elseif item.k == "i" then
            tab:AddTextBox({ Name = item.name, Placeholder = item.placeholder, Callback = inert })
        elseif item.k == "l" then
            tab:AddParagraph(item.title, item.text)
        end
    end)
    if ok then
        placeholderCount = placeholderCount + 1
    else
        placeholderFailed[#placeholderFailed + 1] = tostring(item.name or item.title) .. " (" .. tostring(err) .. ")"
    end
end

local function buildSections(tab, sections)
    for _, section in ipairs(sections or {}) do
        pcall(function()
            tab:AddSection(section[1])
        end)
        for i = 2, #section do
            addItem(tab, section[i])
        end
    end
end

for _, name in ipairs(TABS) do
    local tab = tabs[name]
    if tab then
        if name == "Home" then
            pcall(function()
                tab:AddParagraph(
                    "Project Zero",
                    "Preview build. Every control in this window is a placeholder and does nothing yet."
                )
            end)
        end
        if name ~= "Settings" then -- Settings gets its own section below
            buildSections(tab, LAYOUT[name])
            task.wait() -- keep the game responsive while ~300 controls are created
        end
    end
end

------------------------------------------------------------------------
-- 6. Settings tab: window size + image help
------------------------------------------------------------------------
local settingsTab = tabs["Settings"]
if settingsTab then
    local ok, err = pcall(function()
        settingsTab:AddSection("Window")

        local widthSlider, heightSlider, scaleSlider
        local startW = (mainFrame and mainFrame.Size.X.Offset) or DEFAULT_WIDTH
        local startH = (mainFrame and mainFrame.Size.Y.Offset) or DEFAULT_HEIGHT

        widthSlider = settingsTab:AddSlider({
            Name = "Window width",
            Min = 430,
            Max = 1000,
            Increment = 10,
            Default = math.clamp(startW, 430, 1000),
            Callback = function(v)
                local h = (mainFrame and mainFrame.Size.Y.Offset) or DEFAULT_HEIGHT
                setWindowSize(v, h)
            end,
        })
        heightSlider = settingsTab:AddSlider({
            Name = "Window height",
            Min = 200,
            Max = 500,
            Increment = 10,
            Default = math.clamp(startH, 200, 500),
            Callback = function(v)
                local w = (mainFrame and mainFrame.Size.X.Offset) or DEFAULT_WIDTH
                setWindowSize(w, v)
            end,
        })
        scaleSlider = settingsTab:AddSlider({
            Name = "UI scale (%)",
            Min = 60,
            Max = 160,
            Increment = 5,
            Default = math.floor(settings.scale * 100 + 0.5),
            Callback = function(v)
                local newScale = v / 100
                local changed = math.abs(newScale - settings.scale) > 0.0001
                settings.scale = newScale
                pcall(function()
                    Window:SetUIScale(settings.scale)
                end)
                if changed then
                    saveSettings()
                end
            end,
        })
        settingsTab:AddButton({
            Name = "Reset window size and scale",
            Callback = function()
                setWindowSize(DEFAULT_WIDTH, DEFAULT_HEIGHT)
                pcall(function() widthSlider:SetValue(DEFAULT_WIDTH) end)
                pcall(function() heightSlider:SetValue(DEFAULT_HEIGHT) end)
                pcall(function() scaleSlider:SetValue(100) end)
            end,
        })

        buildSections(settingsTab, LAYOUT["Settings"])

        settingsTab:AddSection("Images")
        settingsTab:AddParagraph(
            "Logo and tab icons",
            "Put logo.png in workspace/ProjectZero and tab icons in workspace/ProjectZero/icons "
                .. "(named like the tab, e.g. Home.png), then run the script again. "
                .. "You can also paste a Roblox asset id or a direct image link into the CONFIG at the top of the script."
        )
        if #imageNotes > 0 then
            settingsTab:AddParagraph("Image problems", table.concat(imageNotes, "\n"))
        end
    end)
    if not ok then
        log("Settings tab could not be built: " .. tostring(err))
    end
end

for _, line in ipairs(imageNotes) do
    log(line)
end
for _, line in ipairs(placeholderFailed) do
    log("Placeholder failed: " .. line)
end

pcall(function()
    Window:Notify({
        Title = CONFIG.Title,
        Content = "GUI loaded: " .. created .. " of " .. #TABS .. " tabs, " .. placeholderCount .. " placeholders.",
        Duration = 5,
    })
end)
