{**************************************************************************}
{                                                                          }
{    Calmira shell for Microsoft� Windows(TM) 3.1                          }
{    Source Release 1.0                                                    }
{    Copyright (C) 1997  Li-Hsin Huang                                     }
{                                                                          }
{    This program is free software; you can redistribute it and/or modify  }
{    it under the terms of the GNU General Public License as published by  }
{    the Free Software Foundation; either version 2 of the License, or     }
{    (at your option) any later version.                                   }
{                                                                          }
{    This program is distributed in the hope that it will be useful,       }
{    but WITHOUT ANY WARRANTY; without even the implied warranty of        }
{    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         }
{    GNU General Public License for more details.                          }
{                                                                          }
{    You should have received a copy of the GNU General Public License     }
{    along with this program; if not, write to the Free Software           }
{    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.             }
{                                                                          }
{**************************************************************************}

unit Debug;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Menus;

type
  TConsole = class(TForm)
    Listbox: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Print(const s: string);
  end;

var
  Console: TConsole;

implementation

{$R *.DFM}

procedure TConsole.Print(const s: string);
begin
  with Listbox do begin
    Items.Add(s);
    ItemIndex := Items.Count-1;
  end;
end;

end.
