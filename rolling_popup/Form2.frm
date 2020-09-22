VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00808080&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   825
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   120
   ControlBox      =   0   'False
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   55
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   8
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   1800
      TabIndex        =   3
      Top             =   5080
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   5360
      Width           =   1215
   End
   Begin VB.Image Image2 
      Height          =   240
      Left            =   120
      Picture         =   "Form2.frx":000C
      Top             =   480
      Width           =   240
   End
   Begin VB.Image Image1 
      Height          =   240
      Left            =   120
      Picture         =   "Form2.frx":0156
      Top             =   120
      Width           =   240
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00E0E0E0&
      X1              =   0
      X2              =   184
      Y1              =   28
      Y2              =   28
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000007&
      X1              =   0
      X2              =   184
      Y1              =   27
      Y2              =   27
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   " Close menu"
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   480
      Width           =   870
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   " Backcolor"
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   1350
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************************
'© 2001 by Alexander Anikin
'for more my code samples visit:
'http://www.i.com.ua/~aka
'*******************************

Private Sub Form_Activate()
For e = 30 To 2790 Step 45
Width = e
DoEvents
Next e


End Sub

Private Sub Form_Deactivate()
Unload Me
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.ForeColor = 0
Label2.ForeColor = 0

End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.ForeColor = 0
Label2.ForeColor = 0

End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.ForeColor = 0
Label2.ForeColor = 0

End Sub

Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Static mColor
mColor = mColor + 1: If mColor = 16 Then mColor = 0
Form1.BackColor = QBColor(mColor)
Label1.ForeColor = QBColor(0)
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.ForeColor = vbWhite
Label2.ForeColor = 0
End Sub

Private Sub Label2_Click()
Unload Me
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label2.ForeColor = vbWhite
Label1.ForeColor = 0

End Sub
