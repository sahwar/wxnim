


const 
  wxHL_CONTEXTMENU* = 0x00000001
  wxHL_ALIGN_LEFT* = 0x00000002
  wxHL_ALIGN_RIGHT* = 0x00000004
  wxHL_ALIGN_CENTER* = 0x00000008
  wxHL_DEFAULT_STYLE* = (
    wxHL_CONTEXTMENU or int(wxNO_BORDER) or wxHL_ALIGN_CENTER)


type 
  WxHyperlinkCtrlBase* {.importcpp: "wxHyperlinkCtrlBase", header: "wx.h".} = object of WxControl
  

proc getHoverColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetHoverColour", header: "wx.h".}
proc setHoverColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetHoverColour", header: "wx.h".}
proc getNormalColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetNormalColour", header: "wx.h".}
proc setNormalColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetNormalColour", header: "wx.h".}
proc getVisitedColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetVisitedColour", header: "wx.h".}
proc setVisitedColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetVisitedColour", header: "wx.h".}
proc getURL*(this: WxHyperlinkCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: "wx.h".}
proc setURL*(this: var WxHyperlinkCtrlBase; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: "wx.h".}
proc setVisited*(this: var WxHyperlinkCtrlBase; visited: bool = true) {.cdecl, 
    importcpp: "SetVisited", header: "wx.h".}
proc getVisited*(this: WxHyperlinkCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetVisited", header: "wx.h".}
proc hasTransparentBackground*(this: var WxHyperlinkCtrlBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: "wx.h".}
proc sendEvent*(this: var WxHyperlinkCtrlBase) {.cdecl, importcpp: "SendEvent", 
    header: "wx.h".}

discard "forward decl of wxHyperlinkEvent"
var wxEVT_HYPERLINK* {.importcpp: "wxEVT_HYPERLINK", header: "wx.h".}: WxEventTypeTag[
    WxHyperlinkEvent]


type 
  WxHyperlinkEvent* {.importcpp: "wxHyperlinkEvent", header: "wx.h".} = object of WxCommandEvent
    mUrl* {.importc: "m_url".}: WxString


proc constructwxHyperlinkEvent*(): WxHyperlinkEvent {.cdecl, constructor, 
    importcpp: "wxHyperlinkEvent(@)", header: "wx.h".}
proc constructwxHyperlinkEvent*(generator: ptr WxObject; id: WxWindowID; 
                                url: WxString): WxHyperlinkEvent {.cdecl, 
    constructor, importcpp: "wxHyperlinkEvent(@)", header: "wx.h".}
proc getURL*(this: WxHyperlinkEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: "wx.h".}
proc setURL*(this: var WxHyperlinkEvent; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: "wx.h".}
proc clone*(this: WxHyperlinkEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}

type 
  WxHyperlinkCtrl* {.importcpp: "wxHyperlinkCtrl", header: "wx.h".} = object of WxHyperlinkCtrlBase
  

proc constructwxHyperlinkCtrl*(): WxHyperlinkCtrl {.cdecl, constructor, 
    importcpp: "wxHyperlinkCtrl(@)", header: "wx.h".}
proc constructwxHyperlinkCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                               label: WxString; url: WxString; 
                               pos: WxPoint = wxDefaultPosition; 
                               size: WxSize = wxDefaultSize; 
                               style: clong = wxHL_DEFAULT_STYLE; 
                               name: WxString = constructWxString("hyperlink")): WxHyperlinkCtrl {.
    cdecl, constructor, importcpp: "wxHyperlinkCtrl(@)", header: "wx.h".}