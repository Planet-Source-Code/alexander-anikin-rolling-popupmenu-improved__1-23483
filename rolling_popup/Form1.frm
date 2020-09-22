VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "CollPopupMenu"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "Command2"
      Height          =   495
      Left            =   2880
      TabIndex        =   0
      Top             =   20040
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************************
'© 2001 by Alexander Anikin
'for more my code samples visit:
'http://www.i.com.ua/~aka
'*******************************
Private Sub Form_Load()
Print "Click on form"
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Form2.Visible = 0 Then
Form2.Left = X + Left + 60
Form2.Top = Y + Top + 345
Form2.Show
a = 1
Else
Unload Form2
a = 0
Exit Sub
End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Form2
End Sub
