�
 TFILESYSPROPDLG 0c  TPF0TFileSysPropDlgFileSysPropDlgLeft� TopgHelpContext5ActiveControlOKBtnBorderStylebsDialogCaptionFile System PropertiesClientHeightOClientWidth<
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold PixelsPerInch`PositionpoScreenCenterOnCreate
FormCreate
TextHeight TBitBtnOKBtnLeftLTop0WidthMHeightTabOrderOnClick
OKBtnClickKindbkOKMarginStylebsNewSpacing�	IsControl	  TBitBtn	CancelBtnLeft� Top0WidthMHeightTabOrderKindbkCancelMarginStylebsNewSpacing�	IsControl	  TTabbedNotebookNotebookLeftTop Width9Height-	PageIndex
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
TabsPerRowTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrder  TTabPage LeftTopCaptionGeneral TBevelBevel3Left
TopVWidthHeight� ShapebsFrame  TLabelLabel8LeftTopdWidth� HeightCaption#Search these file &types for icons:FocusControlIconEdit  TLabelLabel1LeftToprWidth� HeightCaption6(Enter a list of file extensions, separated by spaces)  TLabelLabel11LeftTop� Width� HeightCaption&Filter for new &windows (normally *.*)FocusControl
FilterEdit  TLabelLabel12LeftTop� Width� HeightCaption,Folder where &user defined icons are stored:FocusControlIconPathEdit  TRadioGroupSortingLeft
Top
WidthHeightCCaptionDefault sorting:ColumnsItems.StringsSort by &extensionSort by &filename&Largest files first&Newest files first TabOrder   TEditIconEditLeftTop� WidthHeightCursorcrIBeamCharCaseecUpperCase	MaxLengthTabOrder  TEdit
FilterEditLeft� Top� WidthOHeightTabOrder  TEditIconPathEditLeftTop� WidthHeightHintDouble click to select folderParentShowHintShowHint	TabOrder
OnDblClickIconPathEditDblClick   TTabPage LeftTopCaptionDetails TBevelBevel1Left
Top~WidthHeight� ShapebsFrame  TBevelBevel2Left
Top
WidthHeighteParentShowHintShapebsFrameShowHint  TLabelLabel2Left(Top4WidthyHeightCaption&Delay before hints appearFocusControlsbDelay  TLabelLabel3Left(Top\Width:HeightCaption0.5 seconds  TLabelLabel4Left� TopZWidth1HeightCaption	3 seconds  TLabelLabel5LeftTopWidth)HeightCaption
File hints  TLabelLabel6LeftTopxWidth:HeightCaptionDescriptions  TRadioButtonrbDOSFilenamesLeftTop� Width� HeightCaption!Use only normal &MS-DOS filenamesTabOrderOnClickrb4DOSDescClick  TRadioButton
rb4DOSDescLeftTop� Width� HeightCaption&Use &4DOS compatible file descriptionsTabOrderOnClickrb4DOSDescClick  TPanel	DescPanelLeft Top� Width� Height=
BevelOuterbvNoneTabOrder TLabelLabel10LeftTop*Width� HeightCaption/used at the same time to process files (slower)  	TCheckBoxcbDescCaptionsLeftTopWidth� HeightCaption&Display descriptions as icon &captionsTabOrder   	TCheckBoxcbSimul4DOSLeftTopWidth� HeightCaption(&Keep up to date while 4DOS sessions areTabOrder   	TCheckBoxcbFileHintsLeftTopWidthHeightCaption4&Popup file details when cursor is left over an iconTabOrder   
TScrollBarsbDelayLeft(TopFWidth� HeightLargeChangeMax�Min�Position�TabOrder   TTabPage LeftTopCaptionOptions TLabelLabel7Left
TopWidth� HeightCaptionAsk for &confirmation before:FocusControlConfirmList
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel9Left
Top� Width� HeightCaption&Miscellaneous options:FocusControlMiscList
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  
TCheckListConfirmListLeft
TopWidthHeightfColor	clBtnFaceIntegralHeight	
ItemHeightItems.StringsStarting a copy operationStarting a move operationStarting a delete operationCopying a fileMoving a fileDeleting a fileReplacing a file#Deleting or moving a protected fileCopying a folderMoving a folderDeleting a folder$Assigning a filename for a new alias TabOrder   
TCheckListMiscListLeft
Top� WidthHeightfColor	clBtnFaceIntegralHeight	
ItemHeightItems.Strings*Allow files to be copied in the background+Show hidden and system files in new windows+Display items as a list for all new windows,Allow files to be dropped into program icons5Display file version information in Properties dialog.Display icons next to filenames in Find dialog+Refresh windows re-opened by from elsewhere%Display arrow symbols next to aliases/Show descriptions (if available) in popup hintsShow date in popup hintsShow time in popup hints#Show file attributes in popup hints TabOrder   TTabPage LeftTopCaption	Utilities TBevelBevel4Left
TopWidthHeight� ShapebsFrame  TLabelLabel13LeftTop Width� HeightCaption$Choose &Inspect from the object menuFocusControlInspectEdit  TLabelLabel14LeftTopLWidth� HeightCaption2&Double click on a file with no associated programFocusControlDefaultEdit  TLabelLabel15LeftTop|Width� HeightCaption%Choose &Undelete from the window menuFocusControl	UndelEdit  TLabelLabel16LeftTop� Width� HeightCaption0&Click on the icon in the Disk Properties dialogFocusControlDiskEdit  TLabelLabel17LeftTopWidth{HeightCaptionPrograms to run when you  TEditInspectEditLeftTop0WidthHeightCursorcrIBeamHintDouble click to select programParentShowHintShowHint	TabOrder 
OnDblClickInspectEditDblClick  TEditDefaultEditLeftTop\WidthHeightCursorcrIBeamHintDouble click to select programParentShowHintShowHint	TabOrder
OnDblClickInspectEditDblClick  TEdit	UndelEditLeftTop� WidthHeightCursorcrIBeamHintDouble click to select programParentShowHintShowHint	TabOrder
OnDblClickInspectEditDblClick  TEditDiskEditLeftTop� WidthHeightCursorcrIBeamHintDouble click to select programParentShowHintShowHint	TabOrder
OnDblClickInspectEditDblClick    TBitBtnHelpBtnLeft� Top0WidthMHeightTabOrderKindbkHelpMarginStylebsNewSpacing�  TOpenDialog
OpenDialogFilter.Programs|*.com;*.exe;*.bat;*.pif|All files|*.*LeftTop.   