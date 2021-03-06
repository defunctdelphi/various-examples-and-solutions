unit Main;

{ Thanks to Jeff Cottingham }

interface

uses
  Windows, Messages, SysUtils,
  Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Effect1: TMenuItem;
    SlideFromLeft1: TMenuItem;
    SlideFromRight1: TMenuItem;
    ShutterHorizontal1: TMenuItem;
    ShutterVertical1: TMenuItem;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SlideFromLeft1Click(Sender: TObject);
    procedure SlideFromRight1Click(Sender: TObject);
    procedure ShutterHorizontal1Click(Sender: TObject);
    procedure ShutterVertical1Click(Sender: TObject);
    procedure Unroll1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Bitmap1, Bitmap2, Bitmap3: TBitmap;
    Image1Loaded, Image2Loaded: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
   bitmap1 := Graphics.TBitmap.Create;
   bitmap2 := Graphics.TBitmap.Create;
   bitmap3 := Graphics.TBitmap.Create;
   bitmap1.PixelFormat := pf8bit;
   bitmap2.PixelFormat := pf8bit;
   bitmap3.PixelFormat := pf8bit;

   try
      bitmap1.LoadFromFile('factory.bmp');
      bitmap2.LoadFromFile('handshak.bmp');
      Image1Loaded := true;
      Image2Loaded := true;
      bitmap3.Palette := bitmap1.Palette;
      bitmap3.Height := bitmap1.Height;
      bitmap3.Width := bitmap1.Width;
   except
      Image1Loaded := false;
      Image2Loaded := false;
   end;
end;

procedure TForm1.SlideFromLeft1Click(Sender: TObject);
var
  Current: PByteArray;
  Next: PByteArray;
  ToDisplay: PByteArray;
  i, y, j, z: Integer;
begin
   if not (Image1Loaded) then
     ShowMessage('Bitmap1 not loaded');
   if not (Image2Loaded) then
     ShowMessage('Bitmap2 not loaded');
   if((Image1Loaded) and (Image2Loaded)) then begin
      for i := 0 to bitmap1.Width - 1 do begin
         for y := 0 to bitmap1.Height -1 do begin
            Current := bitmap1.ScanLine[y];
            Next := bitmap2.ScanLine[y];
            ToDisplay := bitmap3.ScanLine[y];
            for z := 0 to i - 1 do
               ToDisplay[z] := Next[z];
            for j := i to bitmap1.Width - 1 do
               ToDisplay[j] := Current[j];
         end;;
         Image1.Canvas.Draw(0,0,bitmap3);
         Application.ProcessMessages();
      end;;
   end;;

end;

procedure TForm1.SlideFromRight1Click(Sender: TObject);
var
  Current: PByteArray;
  Next: PByteArray;
  ToDisplay: PByteArray;
  i, y, j, z: Integer;
begin
   if not (Image1Loaded) then
     ShowMessage('Bitmap1 not loaded');
   if not (Image2Loaded) then
     ShowMessage('Bitmap2 not loaded');
   if ((Image1Loaded) and (Image2Loaded)) then begin
      for i := 0 to bitmap1.Width - 1 do begin
         for y := 0 to bitmap1.Height - 1 do begin
            Current := bitmap1.ScanLine[y];
            Next := bitmap2.ScanLine[y];
            ToDisplay := bitmap3.ScanLine[y];
            for z := 0 to bitmap1.Width - i do
              ToDisplay[z] := Current[z];
            for j := bitmap1.Width - i to bitmap1.Width -1 do
              ToDisplay[j] := Next[j];
         end;;
         Image1.Canvas.Draw(0,0,bitmap3);
         Application.ProcessMessages();
      end;;
   end;;
end;

procedure TForm1.ShutterHorizontal1Click(Sender: TObject);
var
 Next: PByteArray;
 ToDisplay: PByteArray;
 i, x, FY: Integer;
begin
 FY := 0;
 if not (Image1Loaded) then
   ShowMessage('Bitmap1 not loaded');
 if not (Image2Loaded) then
   ShowMessage('Bitmap2 not loaded');
   if((Image1Loaded) and (Image2Loaded)) then begin
      bitmap3.Canvas.CopyRect(Rect(0,0,bitmap3.Width,bitmap3.Height),
        bitmap1.Canvas,Rect(0,0,bitmap1.Width, bitmap1.Height));
      for i := 0 to 29 do begin
         while FY < bitmap1.Height do begin
            Next := bitmap2.ScanLine[FY + i];
            ToDisplay := bitmap3.ScanLine[Fy + i];
            for x := 0 to bitmap3.Width - 1 do
               ToDisplay[x] := Next[x];
            FY := FY + 30;
         end;
         Image1.Canvas.Draw(0,0,bitmap3);
         Application.ProcessMessages();
         Sleep(40);
         FY := 0;
      end;
    end;
end;

procedure TForm1.ShutterVertical1Click(Sender: TObject);
var
 Next: PByteArray;
 ToDisplay: PByteArray;
 i, y, FX: Integer;
begin
 if not (Image1Loaded) then
   ShowMessage('Bitmap1 not loaded');
 if not (Image2Loaded) then
   ShowMessage('Bitmap2 not loaded');

   if((Image1Loaded) and (Image2Loaded)) then begin
      bitmap3.Canvas.CopyRect(Rect(0,0,bitmap3.Width,bitmap3.Height),
                                bitmap1.Canvas,Rect(0,0,bitmap1.Width,
                                bitmap1.Height));
      FX := 0;
      for i := 0 to 29 do begin
        for y := 0 to bitmap1.Height -1 do begin
          ToDisplay := bitmap3.ScanLine[y];
          while FX < bitmap3.Width - 1 do begin
            Next := bitmap2.ScanLine[y];
            ToDisplay[FX + i] := Next[FX + i];
            FX := FX + 30;
          end;
          FX := 0;
        end;
        Image1.Canvas.Draw(0,0,bitmap3);
        Application.ProcessMessages();
        Sleep(40);
      end;
   end;
end;


procedure TForm1.Unroll1Click(Sender: TObject);
var
 Next: PByteArray;
 ToDisplay: PByteArray;
 i, j,  y: Integer;
begin
 if not (Image1Loaded) then
   ShowMessage('Bitmap1 not loaded');
 if not (Image2Loaded) then
   ShowMessage('Bitmap2 not loaded');

   if((Image1Loaded) and (Image2Loaded)) then begin
      bitmap3.Canvas.CopyRect(Rect(0,0,bitmap3.Width,bitmap3.Height),
                                bitmap1.Canvas,Rect(0,0,bitmap1.Width,
                                bitmap1.Height));
      for i := 0 to bitmap1.Width do begin
         for y := 0 to bitmap1.Height - 1 do begin
            Next := bitmap2.ScanLine[y];
            ToDisplay := bitmap3.ScanLine[y];
            if(i < bitmap1.Width - 15) then begin
               for j := 1 to 14 do 
                  if((y = 0) or (y = bitmap1.Height - 1)) then
                     ToDisplay[i+j] := clBlack
                  else
                     ToDisplay[i+j] := Next[i+10-j];
            end;
            ToDisplay[i] := Next[i];

         end;
         Sleep(10);
         Image1.Canvas.Draw(0,0,bitmap3);
         Application.ProcessMessages();
      end;;
   end;;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   bitmap1.Free;
   bitmap2.Free;
   bitmap3.Free;
end;

end.
