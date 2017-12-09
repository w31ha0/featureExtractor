.class public Lcom/rainbow/FMaj/GameView;
.super Landroid/view/View;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rainbow/FMaj/GameView$Player;,
        Lcom/rainbow/FMaj/GameView$RefreshHandler;,
        Lcom/rainbow/FMaj/GameView$RefreshHandler2;
    }
.end annotation


# instance fields
.field private BackPai:I

.field private BengJu:[I

.field private DeskNum:I

.field private DeskPai:[I

.field public JiaoFang:[I

.field public JiaoMoney:[I

.field private M0x:I

.field private M0y:I

.field private Maj:[Lcom/rainbow/FMaj/GameView$Player;

.field private Pai:[I

.field private PaiIndex:I

.field private TmpFen:[I

.field private aniTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

.field private b3Bit:Landroid/graphics/Bitmap;

.field private bCMo:Z

.field private bCPai:Z

.field private bCurMo:Z

.field private bEnGang:Z

.field private bEnHu:Z

.field private bEnPeng:Z

.field private bFirstLove:Z

.field private bGangOK:Z

.field private bLj:Z

.field private bLoading:Z

.field private bPai:[Z

.field private bShowEnd:Z

.field private bTishi:Z

.field private bTishiCnt:Z

.field private b_bSelPaiHand:Z

.field private bitSelPai:Landroid/graphics/Bitmap;

.field private curPlayer:I

.field private g_bSelPai:Z

.field private g_bShouldLoad:Z

.field public g_bSound:Z

.field private g_nSelPaiIndex:I

.field private g_rstSelPai:Landroid/graphics/Rect;

.field private gang1Bit:Landroid/graphics/Bitmap;

.field private girlBit:Landroid/graphics/Bitmap;

.field private girlPaint:Landroid/graphics/Paint;

.field private hu1Bit:Landroid/graphics/Bitmap;

.field private huBit:Landroid/graphics/Bitmap;

.field private kuang2Bit:Landroid/graphics/Bitmap;

.field private kuangBit:Landroid/graphics/Bitmap;

.field private ljBit:Landroid/graphics/Bitmap;

.field private m_nScreenHeight:I

.field private m_nScreenWidth:I

.field public menuDlg:Landroid/app/AlertDialog;

.field private mj12Bit:Landroid/graphics/Bitmap;

.field private mj1Bit:Landroid/graphics/Bitmap;

.field private mj22Bit:Landroid/graphics/Bitmap;

.field private mj2Bit:Landroid/graphics/Bitmap;

.field private mj32Bit:Landroid/graphics/Bitmap;

.field private mj3Bit:Landroid/graphics/Bitmap;

.field private mj4Bit:Landroid/graphics/Bitmap;

.field private mjd1Bit:Landroid/graphics/Bitmap;

.field private mjd2Bit:Landroid/graphics/Bitmap;

.field private mpStart:Landroid/media/MediaPlayer;

.field private myAct:Lcom/rainbow/FMaj/FMaj3;

.field private myBit:Landroid/graphics/Bitmap;

.field private mySound:Landroid/media/SoundPool;

.field private myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

.field private myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

.field private nDeskx:I

.field private nDesky:I

.field private nEndLjx:I

.field private nEndPaix:I

.field private nEndPaiy:I

.field private nG2x:I

.field private nG2y:I

.field private nG3x:I

.field private nG3y:I

.field private nG4x:I

.field private nG4y:I

.field private nGirlHeight:I

.field private nGirlWidth:I

.field private nHuHeight:I

.field private nHuWidth:I

.field private nHux:I

.field private nHuy:I

.field private nJux:[I

.field private nJuy:[I

.field private nMj12Height:I

.field private nMj12Width:I

.field private nMj12y:I

.field private nMj1Dis:I

.field private nMj1Dis2:I

.field private nMj1Height:I

.field private nMj1Mox:I

.field private nMj1Width:I

.field private nMj1x:I

.field private nMj1y:I

.field private nMj22Height:I

.field private nMj22Width:I

.field private nMj2Dis:I

.field private nMj2Dis2:I

.field private nMj2Height:I

.field private nMj2Width:I

.field private nMj2x:I

.field private nMj2y:I

.field private nMj32Height:I

.field private nMj32Width:I

.field private nMj3Dis:I

.field private nMj3Height:I

.field private nMj3Width:I

.field private nMj3x:I

.field private nMj3y:I

.field private nMj4x:I

.field private nMjDax:[I

.field private nMjDay:[I

.field private nMjd1Dis:I

.field private nMjd1Height:I

.field private nMjd1Width:I

.field private nMjd1x:I

.field private nMjd1y:I

.field private nMjd2Dis:I

.field private nMjd2Height:I

.field private nMjd2Width:I

.field private nMjd2x:I

.field private nMjd2y:I

.field private nMjd3x:I

.field private nMjd3y:I

.field private nMjd4x:I

.field private nMjd4y:I

.field private nPaiMoStart:I

.field private nPaox:[I

.field private nPaoy:[I

.field private nScox:[I

.field private nScoy:[I

.field private nTishiCnt:I

.field private nTishiX:I

.field private nTishiY:I

.field private nTistr:I

.field private nTistrDis:I

.field private nTitou:I

.field private nTouHeight:I

.field private nTouWidth:I

.field private nToux:[I

.field private nTouy:[I

.field private pao1Bit:Landroid/graphics/Bitmap;

.field private peng1Bit:Landroid/graphics/Bitmap;

.field private rstDst:Landroid/graphics/Rect;

.field private rstGang:Landroid/graphics/Rect;

.field private rstHu:Landroid/graphics/Rect;

.field private rstMenu:Landroid/graphics/Rect;

.field private rstNo:Landroid/graphics/Rect;

.field private rstPeng:Landroid/graphics/Rect;

.field private rstSelPaiOK:Landroid/graphics/Rect;

.field private rstSndClick:Landroid/graphics/Rect;

.field private rstSndNo:Landroid/graphics/Rect;

.field private rstSrc:Landroid/graphics/Rect;

.field private scoPaint:Landroid/graphics/Paint;

.field private sndDa:I

.field private startPlayer:I

.field private strTishi:[Ljava/lang/String;

.field private tiBit:Landroid/graphics/Bitmap;

.field private tmpAry:[I

.field private touBit:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0x111

    const/16 v7, 0xf3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v10, p0, Lcom/rainbow/FMaj/GameView;->g_bShouldLoad:Z

    .line 51
    iput-boolean v9, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    iput-boolean v9, p0, Lcom/rainbow/FMaj/GameView;->b_bSelPaiHand:Z

    .line 52
    iput v9, p0, Lcom/rainbow/FMaj/GameView;->g_nSelPaiIndex:I

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    .line 87
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    .line 88
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    .line 89
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    .line 90
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    .line 91
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    .line 92
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    .line 94
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    .line 95
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    .line 97
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    .line 98
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    .line 102
    const/16 v3, 0x6c

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    .line 103
    const/16 v3, 0x38

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->Pai:[I

    .line 104
    const/16 v3, 0x6c

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->DeskPai:[I

    .line 107
    new-array v3, v8, [Lcom/rainbow/FMaj/GameView$Player;

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    .line 115
    const/4 v3, 0x7

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    .line 116
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    .line 117
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    .line 119
    const/16 v3, 0x1b

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    .line 120
    const/16 v3, 0x1b

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    .line 123
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    .line 124
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    .line 126
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1ba

    const/16 v5, 0x1e0

    const/16 v6, 0x26

    invoke-direct {v3, v4, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x9d

    const/16 v5, 0xc2

    invoke-direct {v3, v4, v7, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    .line 128
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xc7

    const/16 v5, 0xec

    invoke-direct {v3, v4, v7, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    .line 129
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xf2

    const/16 v5, 0x117

    invoke-direct {v3, v4, v7, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    .line 130
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x11e

    const/16 v5, 0x143

    invoke-direct {v3, v4, v7, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    .line 131
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x192

    const/16 v5, 0x1ba

    const/16 v6, 0x26

    invoke-direct {v3, v4, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    .line 133
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1a8

    const/16 v5, 0xc

    const/16 v6, 0x1af

    const/16 v7, 0x1a

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xcd

    const/16 v5, 0xdc

    const/16 v6, 0x112

    const/16 v7, 0xfa

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    .line 137
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    .line 152
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    .line 168
    new-instance v3, Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-direct {v3, p0}, Lcom/rainbow/FMaj/GameView$RefreshHandler;-><init>(Lcom/rainbow/FMaj/GameView;)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    .line 184
    new-instance v3, Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-direct {v3, p0}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;-><init>(Lcom/rainbow/FMaj/GameView;)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->aniTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    .line 185
    new-instance v3, Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-direct {v3, p0}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;-><init>(Lcom/rainbow/FMaj/GameView;)V

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 199
    iput-boolean v10, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    .line 200
    iput-boolean v9, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 201
    iput v10, p0, Lcom/rainbow/FMaj/GameView;->nTitou:I

    .line 202
    iput v9, p0, Lcom/rainbow/FMaj/GameView;->nTistr:I

    .line 203
    iput-boolean v10, p0, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    .line 205
    iput-boolean v10, p0, Lcom/rainbow/FMaj/GameView;->bFirstLove:Z

    .line 208
    const/4 v3, -0x1

    iput v3, p0, Lcom/rainbow/FMaj/GameView;->sndDa:I

    .line 213
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const-string v4, "\u4eba\u5bb6\u7b49\u592a\u4e45\u4e86\uff01"

    aput-object v4, v3, v9

    .line 214
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const-string v4, "\u6253\u5feb\u4e00\u70b9\uff0c\u597d\u4e0d\u597d\uff01"

    aput-object v4, v3, v10

    .line 215
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "\u4f60\u9192\u9192\u554a\uff01"

    aput-object v5, v3, v4

    .line 216
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, "\u5c0f\u5f1f\u5f1f\u6253\u724c\u90fd\u6bd4\u4f60\u5feb\uff01"

    aput-object v5, v3, v4

    .line 217
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const-string v4, "\u6253\u4e2a\u724c\u6709\u90a3\u4e48\u96be\u5417\uff01"

    aput-object v4, v3, v8

    .line 218
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, "\u770b\u4ec0\u4e48\u770b\u6ca1\u89c1\u7f8e\u5973\u554a\uff01"

    aput-object v5, v3, v4

    .line 219
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/4 v4, 0x6

    const-string v5, "\u4f60\u60f3\u592a\u4e45\u4e86\uff01"

    aput-object v5, v3, v4

    .line 220
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/4 v4, 0x7

    const-string v5, "\u6211\u7b49\u5230\u82b1\u513f\u4e5f\u8c22\u4e86\uff01"

    aput-object v5, v3, v4

    .line 221
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "\u518d\u4e0d\u6253,\u56de\u53bb\u7761\u89c9\u4e86\uff01"

    aput-object v5, v3, v4

    .line 222
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    const/16 v4, 0x9

    const-string v5, "\u4e0d\u4f1a\u5427,\u6253\u8fd9\u4e48\u6162\uff01"

    aput-object v5, v3, v4

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u4f60\u771f\u7684\u8981\u9000\u51fa\u5417?"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 227
    const-string v4, "\u9000\u51fa"

    new-instance v5, Lcom/rainbow/FMaj/GameView$1;

    invoke-direct {v5, p0}, Lcom/rainbow/FMaj/GameView$1;-><init>(Lcom/rainbow/FMaj/GameView;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 233
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/rainbow/FMaj/GameView$2;

    invoke-direct {v5, p0}, Lcom/rainbow/FMaj/GameView$2;-><init>(Lcom/rainbow/FMaj/GameView;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/rainbow/FMaj/GameView;->menuDlg:Landroid/app/AlertDialog;

    .line 240
    return-void

    .line 194
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v1, Lcom/rainbow/FMaj/GameView$Player;

    invoke-direct {v1, p0}, Lcom/rainbow/FMaj/GameView$Player;-><init>(Lcom/rainbow/FMaj/GameView;)V

    .line 195
    .local v1, "ff":Lcom/rainbow/FMaj/GameView$Player;
    iput v2, v1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    .line 196
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aput-object v1, v3, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z
    .locals 7
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;
    .param p2, "nPai"    # I

    .prologue
    const/4 v6, 0x1

    .line 1997
    const/4 v2, 0x0

    .line 1999
    .local v2, "nTemp":I
    const/4 v0, 0x0

    .line 2001
    .local v0, "bMe":Z
    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v0, 0x1

    .line 2003
    :cond_0
    if-eqz v0, :cond_1

    .line 2005
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v1, v4, :cond_2

    .line 2015
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x1b

    if-lt v1, v4, :cond_4

    .line 2021
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v4, v4, p2

    add-int/lit8 v2, v4, 0x1

    .line 2023
    const/4 v4, 0x3

    if-le v2, v4, :cond_6

    move v4, v6

    .line 2025
    :goto_2
    return v4

    .line 2007
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v4, v1

    .line 2008
    .local v3, "nn":I
    if-ne v3, p2, :cond_3

    .line 2010
    add-int/lit8 v2, v2, 0x1

    .line 2011
    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    move v4, v6

    goto :goto_2

    .line 2005
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2017
    .end local v3    # "nn":I
    :cond_4
    iget-object v4, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v4, v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    move v4, v6

    goto :goto_2

    .line 2015
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2025
    .end local v1    # "i":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z
    .locals 2
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;
    .param p2, "nPai"    # I

    .prologue
    .line 1892
    iget-object v0, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v1, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v0, p2, v1}, Lcom/rainbow/FMaj/GameView;->CanHu2([III)Z

    move-result v0

    return v0
.end method

.method private CanHu2([III)Z
    .locals 10
    .param p1, "Ary"    # [I
    .param p2, "nPai"    # I
    .param p3, "nLen"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0x1b

    const/4 v6, 0x1

    .line 1900
    aget v4, p1, p2

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, p2

    .line 1904
    const/16 v4, 0xd

    if-ne p3, v4, :cond_3

    .line 1906
    const/4 v0, 0x1

    .line 1907
    .local v0, "bTemp":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 1915
    :goto_1
    if-eqz v0, :cond_3

    .line 1917
    aget v4, p1, p2

    sub-int/2addr v4, v6

    aput v4, p1, p2

    move v4, v6

    .line 1954
    :goto_2
    return v4

    .line 1909
    :cond_0
    aget v4, p1, v1

    if-eq v4, v6, :cond_1

    aget v4, p1, v1

    if-ne v4, v9, :cond_2

    .line 1911
    :cond_1
    const/4 v0, 0x0

    .line 1912
    goto :goto_1

    .line 1907
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1923
    .end local v0    # "bTemp":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 1926
    .restart local v0    # "bTemp":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v7, :cond_4

    .line 1952
    :goto_4
    aget v4, p1, p2

    sub-int/2addr v4, v6

    aput v4, p1, p2

    move v4, v0

    .line 1954
    goto :goto_2

    .line 1928
    :cond_4
    aget v4, p1, v1

    if-ge v4, v8, :cond_6

    .line 1926
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1930
    :cond_6
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-lt v2, v7, :cond_7

    .line 1931
    add-int/lit8 v3, p3, 0x1

    .line 1933
    .local v3, "nTemp":I
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    aget v5, v4, v1

    sub-int/2addr v5, v8

    aput v5, v4, v1

    .line 1934
    add-int/lit8 v3, v3, -0x2

    .line 1936
    const/4 v2, 0x0

    :goto_6
    if-lt v2, v7, :cond_8

    .line 1945
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    invoke-direct {p0, v4, v3}, Lcom/rainbow/FMaj/GameView;->MovePai([II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1947
    const/4 v0, 0x1

    .line 1948
    goto :goto_4

    .line 1930
    .end local v3    # "nTemp":I
    :cond_7
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    aget v5, p1, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1938
    .restart local v3    # "nTemp":I
    :cond_8
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    aget v4, v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 1940
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->tmpAry:[I

    aget v5, v4, v2

    sub-int/2addr v5, v9

    aput v5, v4, v2

    .line 1941
    add-int/lit8 v3, v3, -0x3

    .line 1936
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private CanPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z
    .locals 2
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;
    .param p2, "nPai"    # I

    .prologue
    const/4 v1, 0x1

    .line 2031
    iget-object v0, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v0, v0, p2

    if-le v0, v1, :cond_0

    move v0, v1

    .line 2033
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ComDa(Lcom/rainbow/FMaj/GameView$Player;)Z
    .locals 8
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 506
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-ne v2, v5, :cond_3

    .line 509
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v2, v3}, Lcom/rainbow/FMaj/GameView;->XiaJiao([II)I

    move-result v1

    .line 510
    .local v1, "nTemp":I
    if-ne v1, v5, :cond_0

    .line 512
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    invoke-direct {p0, v2}, Lcom/rainbow/FMaj/GameView;->GetPai([I)I

    move-result v1

    .line 515
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v2, :cond_1

    .line 523
    :goto_1
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v2, v6, v3}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 524
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    sub-int/2addr v2, v7

    iput v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 525
    iput v1, p1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 526
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    iput v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 528
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V

    move v2, v7

    .line 575
    .end local v0    # "i":I
    .end local v1    # "nTemp":I
    :goto_2
    return v2

    .line 517
    .restart local v0    # "i":I
    .restart local v1    # "nTemp":I
    :cond_1
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_2

    .line 519
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    const/16 v3, 0x3e8

    aput v3, v2, v0

    goto :goto_1

    .line 515
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "i":I
    .end local v1    # "nTemp":I
    :cond_3
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->HuProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 538
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v2, v6

    .line 539
    goto :goto_2

    .line 543
    :cond_4
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v2}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 545
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->GangProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 546
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v2, v6

    .line 547
    goto :goto_2

    .line 550
    :cond_5
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 551
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/rainbow/FMaj/GameView;->XiaJiao([II)I

    move-result v1

    .line 552
    .restart local v1    # "nTemp":I
    if-ne v1, v5, :cond_6

    .line 554
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    invoke-direct {p0, v2}, Lcom/rainbow/FMaj/GameView;->GetPai([I)I

    move-result v1

    .line 557
    :cond_6
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-eq v1, v2, :cond_7

    .line 559
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v2, :cond_8

    .line 568
    .end local v0    # "i":I
    :cond_7
    :goto_4
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v2, v6, v3}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 569
    iput v1, p1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 570
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    iput v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 571
    iput v5, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 573
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V

    move v2, v7

    .line 575
    goto :goto_2

    .line 561
    .restart local v0    # "i":I
    :cond_8
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_9

    .line 563
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    aput v3, v2, v0

    goto :goto_4

    .line 559
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private ComWant(Lcom/rainbow/FMaj/GameView$Player;)Z
    .locals 2
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/4 v1, 0x1

    .line 460
    iget v0, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v0}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->HuProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 463
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v0, v1

    .line 484
    :goto_0
    return v0

    .line 467
    :cond_0
    iget v0, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v0}, Lcom/rainbow/FMaj/GameView;->CanPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget v0, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v0}, Lcom/rainbow/FMaj/GameView;->ComWantPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->PengProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 472
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v0, v1

    .line 473
    goto :goto_0

    .line 477
    :cond_1
    iget v0, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, p1, v0}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->GangProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 480
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v0, v1

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ComWantPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z
    .locals 4
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;
    .param p2, "nPai"    # I

    .prologue
    const/4 v3, 0x1

    .line 491
    rem-int/lit8 v0, p2, 0x9

    .line 492
    .local v0, "nTemp":I
    if-lez v0, :cond_0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 494
    iget-object v1, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    add-int/lit8 v2, p2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    sub-int v2, p2, v3

    aget v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 498
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private DianJiang(Lcom/rainbow/FMaj/GameView$Player;)I
    .locals 9
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x1b

    .line 2275
    new-array v3, v6, [I

    .line 2277
    .local v3, "tmpAry":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_3

    .line 2278
    const/4 v0, 0x0

    :goto_1
    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v0, v4, :cond_4

    .line 2279
    const/4 v0, 0x0

    :goto_2
    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v4, :cond_5

    .line 2280
    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 2283
    const/4 v1, 0x0

    .line 2286
    .local v1, "nRet":I
    const/4 v2, 0x0

    .line 2287
    .local v2, "nTemp":I
    const/4 v0, 0x0

    :goto_3
    const/16 v4, 0x9

    if-lt v0, v4, :cond_6

    .line 2295
    :goto_4
    const/16 v0, 0x9

    :goto_5
    const/16 v4, 0x12

    if-lt v0, v4, :cond_8

    .line 2303
    :goto_6
    const/16 v0, 0x12

    :goto_7
    if-lt v0, v6, :cond_a

    .line 2311
    :goto_8
    if-ne v2, v7, :cond_0

    add-int/lit8 v1, v1, 0x2

    .line 2314
    :cond_0
    const/4 v2, 0x1

    .line 2315
    const/4 v0, 0x0

    :goto_9
    if-lt v0, v6, :cond_c

    .line 2323
    :goto_a
    if-ne v2, v7, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 2326
    :cond_1
    const/4 v2, 0x0

    .line 2327
    const/4 v0, 0x0

    :goto_b
    if-lt v0, v6, :cond_f

    .line 2339
    :goto_c
    if-ne v2, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2342
    :cond_2
    const/4 v2, 0x0

    .line 2343
    const/4 v0, 0x0

    :goto_d
    if-lt v0, v6, :cond_13

    .line 2347
    add-int/2addr v1, v2

    .line 2349
    return v1

    .line 2277
    .end local v1    # "nRet":I
    .end local v2    # "nTemp":I
    :cond_3
    const/4 v4, 0x0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2278
    :cond_4
    iget-object v4, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v4, v4, v0

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2279
    :cond_5
    iget-object v4, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v4, v4, v0

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2289
    .restart local v1    # "nRet":I
    .restart local v2    # "nTemp":I
    :cond_6
    aget v4, v3, v0

    if-eqz v4, :cond_7

    .line 2291
    add-int/lit8 v2, v2, 0x1

    .line 2292
    goto :goto_4

    .line 2287
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2297
    :cond_8
    aget v4, v3, v0

    if-eqz v4, :cond_9

    .line 2299
    add-int/lit8 v2, v2, 0x1

    .line 2300
    goto :goto_6

    .line 2295
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2305
    :cond_a
    aget v4, v3, v0

    if-eqz v4, :cond_b

    .line 2307
    add-int/lit8 v2, v2, 0x1

    .line 2308
    goto :goto_8

    .line 2303
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2317
    :cond_c
    aget v4, v3, v0

    if-eq v4, v7, :cond_d

    aget v4, v3, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 2319
    :cond_d
    const/4 v2, 0x0

    .line 2320
    goto :goto_a

    .line 2315
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2329
    :cond_f
    aget v4, v3, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 2331
    add-int/lit8 v2, v2, 0x1

    .line 2327
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2333
    :cond_11
    aget v4, v3, v0

    if-eq v4, v7, :cond_12

    aget v4, v3, v0

    if-ne v4, v8, :cond_10

    .line 2335
    :cond_12
    const/4 v2, 0x0

    .line 2336
    goto :goto_c

    .line 2345
    :cond_13
    aget v4, v3, v0

    if-ne v4, v8, :cond_14

    add-int/lit8 v2, v2, 0x1

    .line 2343
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private GangProc(Lcom/rainbow/FMaj/GameView$Player;)V
    .locals 13
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/16 v12, 0x1f4

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2096
    const/4 v5, -0x1

    .line 2097
    .local v5, "nn":I
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 2098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x1b

    if-lt v0, v6, :cond_2

    .line 2106
    :goto_1
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aget v8, v6, v7

    sub-int/2addr v8, v9

    aput v8, v6, v7

    .line 2108
    if-eq v5, v11, :cond_6

    .line 2110
    const/4 v4, 0x0

    .line 2111
    .local v4, "nTemp":I
    const/4 v0, 0x0

    :goto_2
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v6, :cond_4

    .line 2119
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v6, v10, v7}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 2120
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    sub-int/2addr v6, v4

    iput v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 2122
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    aput v5, v6, v7

    .line 2123
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v7, v7, 0x1

    aput v5, v6, v7

    .line 2124
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v7, v7, 0x2

    aput v5, v6, v7

    .line 2125
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v7, v7, 0x3

    aput v5, v6, v7

    .line 2126
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v7, v7, 0x2

    aput-boolean v9, v6, v7

    .line 2127
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 2181
    :cond_0
    :goto_3
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 2183
    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->Pai:[I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    aget v6, v6, v7

    iput v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 2184
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    iput v6, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 2185
    iget v6, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    .line 2186
    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    aput-boolean v10, v6, v7

    .line 2187
    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 2188
    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v6, v6, 0x6c

    iput v6, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 2189
    iput-boolean v9, p1, Lcom/rainbow/FMaj/GameView$Player;->bShowGang:Z

    .line 2190
    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->aniTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-virtual {v6, v12, v10}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 2192
    iput-boolean v9, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 2194
    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v6, v6, v7

    iput v11, v6, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 2195
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    iput v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 2197
    iput-boolean v9, p0, Lcom/rainbow/FMaj/GameView;->bGangOK:Z

    .line 2199
    iget v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eqz v6, :cond_1

    .line 2201
    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v6, v12, v10}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 2206
    :cond_1
    return-void

    .line 2100
    .end local v4    # "nTemp":I
    :cond_2
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v6, v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    .line 2102
    move v5, v0

    .line 2103
    goto/16 :goto_1

    .line 2098
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2113
    .restart local v4    # "nTemp":I
    :cond_4
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v6, v6, v0

    if-ne v6, v5, :cond_5

    .line 2115
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    const/16 v7, 0x3e8

    aput v7, v6, v0

    .line 2116
    add-int/lit8 v4, v4, 0x1

    .line 2111
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2131
    .end local v4    # "nTemp":I
    :cond_6
    const/4 v4, 0x0

    .line 2132
    .restart local v4    # "nTemp":I
    const/4 v2, -0x1

    .line 2133
    .local v2, "jj":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_4
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v1, v6, :cond_8

    .line 2153
    :cond_7
    :goto_5
    if-eq v2, v11, :cond_0

    .line 2157
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .local v3, "k":I
    :goto_6
    if-gt v3, v1, :cond_b

    .line 2162
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aput v2, v6, v3

    .line 2163
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aput-boolean v9, v6, v3

    .line 2164
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 2166
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-eq v2, v6, :cond_0

    .line 2168
    const/4 v0, 0x0

    :goto_7
    iget v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-ge v0, v6, :cond_0

    .line 2170
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v6, v6, v0

    if-ne v6, v2, :cond_c

    .line 2172
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    aput v7, v6, v0

    .line 2173
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v6, v10, v7}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    goto/16 :goto_3

    .line 2135
    .end local v3    # "k":I
    :cond_8
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v6, v6, v1

    if-eq v2, v6, :cond_a

    .line 2137
    const/4 v4, 0x1

    .line 2138
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v2, v6, v1

    .line 2133
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2142
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 2143
    const/4 v6, 0x2

    if-le v4, v6, :cond_9

    .line 2145
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v6, v6, v2

    if-eq v6, v9, :cond_7

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    if-ne v6, v2, :cond_9

    goto :goto_5

    .line 2159
    .restart local v3    # "k":I
    :cond_b
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget-object v7, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    sub-int v8, v3, v9

    aget v7, v7, v8

    aput v7, v6, v3

    .line 2160
    iget-object v6, p1, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    iget-object v7, p1, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    sub-int v8, v3, v9

    aget-boolean v7, v7, v8

    aput-boolean v7, v6, v3

    .line 2157
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 2168
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private GetPai([I)I
    .locals 10
    .param p1, "Ary"    # [I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0x1b

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 628
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v7, :cond_6

    .line 699
    const/4 v2, -0x1

    .line 700
    .local v2, "nTemp":I
    const/4 v1, -0x1

    .line 701
    .local v1, "nPos":I
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v7, :cond_f

    .line 714
    return v1

    .line 606
    .end local v1    # "nPos":I
    .end local v2    # "nTemp":I
    :cond_0
    aget v3, p1, v0

    if-nez v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 604
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_2
    aget v3, p1, v0

    if-ne v3, v5, :cond_3

    .line 612
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aput v9, v3, v0

    goto :goto_3

    .line 614
    :cond_3
    aget v3, p1, v0

    if-ne v3, v6, :cond_4

    .line 616
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aput v8, v3, v0

    goto :goto_3

    .line 618
    :cond_4
    aget v3, p1, v0

    if-ne v3, v8, :cond_5

    .line 620
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aput v6, v3, v0

    goto :goto_3

    .line 622
    :cond_5
    aget v3, p1, v0

    if-ne v3, v9, :cond_1

    .line 624
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aput v5, v3, v0

    goto :goto_3

    .line 630
    :cond_6
    aget v3, p1, v0

    if-nez v3, :cond_8

    .line 628
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_8
    rem-int/lit8 v2, v0, 0x9

    .line 634
    .restart local v2    # "nTemp":I
    if-nez v2, :cond_a

    .line 636
    aget v3, p1, v0

    if-ne v3, v5, :cond_7

    .line 638
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    if-nez v3, :cond_9

    .line 640
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 641
    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto :goto_4

    .line 643
    :cond_9
    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    if-nez v3, :cond_7

    .line 645
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    goto :goto_4

    .line 649
    :cond_a
    if-ne v2, v5, :cond_b

    .line 651
    aget v3, p1, v0

    if-ne v3, v5, :cond_7

    .line 653
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    if-nez v3, :cond_7

    sub-int v3, v0, v5

    aget v3, p1, v3

    if-nez v3, :cond_7

    .line 655
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 656
    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto :goto_4

    .line 660
    :cond_b
    const/4 v3, 0x7

    if-ne v2, v3, :cond_c

    .line 662
    aget v3, p1, v0

    if-ne v3, v5, :cond_7

    .line 664
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    if-nez v3, :cond_7

    sub-int v3, v0, v5

    aget v3, p1, v3

    if-nez v3, :cond_7

    .line 666
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 667
    sub-int v3, v0, v6

    aget v3, p1, v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto/16 :goto_4

    .line 671
    :cond_c
    const/16 v3, 0x8

    if-ne v2, v3, :cond_e

    .line 673
    aget v3, p1, v0

    if-ne v3, v5, :cond_7

    .line 675
    sub-int v3, v0, v5

    aget v3, p1, v3

    if-nez v3, :cond_d

    .line 677
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 678
    sub-int v3, v0, v6

    aget v3, p1, v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto/16 :goto_4

    .line 680
    :cond_d
    sub-int v3, v0, v6

    aget v3, p1, v3

    if-nez v3, :cond_7

    .line 682
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    goto/16 :goto_4

    .line 688
    :cond_e
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    if-nez v3, :cond_7

    sub-int v3, v0, v5

    aget v3, p1, v3

    if-nez v3, :cond_7

    .line 690
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 691
    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    if-nez v3, :cond_7

    sub-int v3, v0, v6

    aget v3, p1, v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto/16 :goto_4

    .line 703
    .restart local v1    # "nPos":I
    :cond_f
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_11

    .line 705
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v2, v3, v0

    .line 706
    move v1, v0

    .line 701
    :cond_10
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 708
    :cond_11
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->TmpFen:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_10

    .line 710
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_10

    move v1, v0

    goto :goto_5
.end method

.method private HuProc(Lcom/rainbow/FMaj/GameView$Player;)V
    .locals 8
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2215
    invoke-direct {p0, p1}, Lcom/rainbow/FMaj/GameView;->DianJiang(Lcom/rainbow/FMaj/GameView$Player;)I

    move-result v2

    .line 2217
    .local v2, "nTemp":I
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bGangOK:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2219
    :cond_0
    const/16 v1, 0xa

    .line 2220
    .local v1, "nFen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 2225
    iput-boolean v5, p1, Lcom/rainbow/FMaj/GameView$Player;->bShowHu:Z

    .line 2227
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-ne v3, v7, :cond_2

    .line 2229
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v3, v3, v4

    iput-boolean v5, v3, Lcom/rainbow/FMaj/GameView$Player;->bShowPao:Z

    .line 2230
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    sub-int v5, v6, v1

    aput v5, v3, v4

    .line 2231
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    aput v1, v3, v4

    .line 2243
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    .line 2248
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myAct:Lcom/rainbow/FMaj/FMaj3;

    invoke-virtual {v3}, Lcom/rainbow/FMaj/FMaj3;->SaveMoney()V

    .line 2250
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v3, v3, v4

    iput v7, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 2251
    iput v7, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 2252
    iget-object v3, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aput v5, v3, v4

    .line 2253
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 2254
    iget-object v3, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v3, v6, v4}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 2255
    const/4 v0, 0x0

    :goto_3
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v3, :cond_5

    .line 2261
    iput v6, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 2263
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    iput v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 2265
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->aniTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v6}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 2269
    return-void

    .line 2220
    :cond_1
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2235
    :cond_2
    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    .line 2241
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    add-int v5, v1, v1

    add-int/2addr v5, v1

    aput v5, v3, v4

    goto :goto_1

    .line 2237
    :cond_3
    iget v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    add-int/2addr v3, v0

    add-int/lit8 v2, v3, 0x1

    .line 2238
    rem-int/lit8 v2, v2, 0x4

    .line 2239
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    sub-int v4, v6, v1

    aput v4, v3, v2

    .line 2235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2245
    :cond_4
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    aget v2, v3, v0

    .line 2246
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    aget v4, v3, v2

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 2243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2257
    :cond_5
    iget-object v3, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v4, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    iget-object v5, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v5, v5, v0

    aput v5, v3, v4

    .line 2258
    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private MovePai([II)Z
    .locals 7
    .param p1, "ary"    # [I
    .param p2, "nNum"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1959
    if-nez p2, :cond_0

    move v2, v6

    .line 1991
    :goto_0
    return v2

    .line 1962
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x1b

    if-lt v0, v2, :cond_1

    .line 1988
    if-nez p2, :cond_7

    move v2, v6

    .line 1989
    goto :goto_0

    .line 1964
    :cond_1
    aget v2, p1, v0

    if-nez v2, :cond_3

    .line 1962
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1966
    :cond_3
    aget v2, p1, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1968
    aput v5, p1, v0

    .line 1969
    add-int/lit8 p2, p2, -0x3

    .line 1970
    goto :goto_2

    .line 1973
    :cond_4
    rem-int/lit8 v1, v0, 0x9

    .line 1974
    .local v1, "nTemp":I
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 1976
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aget v3, p1, v0

    if-lt v2, v3, :cond_5

    add-int/lit8 v2, v0, 0x2

    aget v2, p1, v2

    aget v3, p1, v0

    if-ge v2, v3, :cond_6

    :cond_5
    move v2, v5

    goto :goto_0

    .line 1977
    :cond_6
    add-int/lit8 v2, v0, 0x2

    aget v3, p1, v2

    aget v4, p1, v0

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 1978
    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v2

    aget v4, p1, v0

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 1979
    aget v2, p1, v0

    sub-int v2, p2, v2

    aget v3, p1, v0

    sub-int/2addr v2, v3

    aget v3, p1, v0

    sub-int p2, v2, v3

    .line 1980
    aput v5, p1, v0

    goto :goto_2

    .end local v1    # "nTemp":I
    :cond_7
    move v2, v5

    .line 1991
    goto :goto_0
.end method

.method private NewGame()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/16 v9, 0x6c

    const/4 v8, 0x0

    .line 1675
    new-array v0, v9, [I

    .line 1677
    .local v0, "TmpAry":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    .line 1687
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v9, :cond_1

    .line 1688
    const/16 v1, 0x6b

    :goto_2
    if-gtz v1, :cond_2

    .line 1696
    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-lt v1, v4, :cond_3

    .line 1704
    const/4 v1, 0x0

    :goto_4
    const/16 v4, 0xd

    if-lt v1, v4, :cond_4

    .line 1711
    const/16 v1, 0x34

    iput v8, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    :goto_5
    if-lt v1, v9, :cond_5

    .line 1715
    iput v8, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    .line 1717
    iput v8, p0, Lcom/rainbow/FMaj/GameView;->DeskNum:I

    .line 1718
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1719
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1720
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1721
    iput v10, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 1723
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bGangOK:Z

    .line 1725
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1727
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bShowEnd:Z

    .line 1728
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bLj:Z

    .line 1730
    const/4 v1, 0x0

    :goto_6
    if-lt v1, v9, :cond_6

    .line 1732
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    .line 1734
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 1736
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    const/16 v5, 0x3e8

    const/16 v6, 0x258

    invoke-virtual {v4, v5, v6}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1737
    return-void

    .line 1679
    :cond_0
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v1

    iput v8, v4, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 1680
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v1

    iput v8, v4, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 1681
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v1

    iput v10, v4, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 1682
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v1

    iput v10, v4, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 1683
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aput v8, v4, v1

    .line 1677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    :cond_1
    shr-int/lit8 v4, v1, 0x2

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1690
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-int/lit8 v6, v1, 0x1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1691
    .local v2, "nTemp":I
    aget v3, v0, v1

    .line 1692
    .local v3, "nn":I
    aget v4, v0, v2

    aput v4, v0, v1

    .line 1693
    aput v3, v0, v2

    .line 1688
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1698
    .end local v2    # "nTemp":I
    .end local v3    # "nn":I
    :cond_3
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aput-boolean v8, v4, v1

    .line 1699
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aput-boolean v8, v4, v1

    .line 1700
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aput-boolean v8, v4, v1

    .line 1701
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aput-boolean v8, v4, v1

    .line 1696
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1706
    :cond_4
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v5, v0, v1

    aput v5, v4, v1

    .line 1707
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    add-int/lit8 v5, v1, 0xd

    aget v5, v0, v5

    aput v5, v4, v1

    .line 1708
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    add-int/lit8 v5, v1, 0x1a

    aget v5, v0, v5

    aput v5, v4, v1

    .line 1709
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    add-int/lit8 v5, v1, 0x27

    aget v5, v0, v5

    aput v5, v4, v1

    .line 1704
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1713
    :cond_5
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Pai:[I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    aget v6, v0, v1

    aput v6, v4, v5

    .line 1711
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    goto/16 :goto_5

    .line 1730
    :cond_6
    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    aput-boolean v11, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6
.end method

.method private NewGame2()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 1755
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x405b000000000000L    # 108.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1756
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1757
    :cond_0
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v1, v1, 0x6c

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1758
    const/4 v0, 0x0

    .line 1759
    :goto_1
    const/16 v1, 0x34

    if-lt v0, v1, :cond_4

    .line 1850
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->startPlayer:I

    .line 1851
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->startPlayer:I

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 1854
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Pai:[I

    iget v3, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 1855
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 1856
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    .line 1857
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    aput-boolean v5, v1, v2

    .line 1858
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1859
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v1, v1, 0x6c

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1861
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 1863
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-nez v1, :cond_5

    .line 1865
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1866
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    .line 1868
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1869
    :cond_1
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1871
    :cond_2
    iput v5, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 1872
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1873
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    const/16 v2, 0x3e8

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 1883
    :goto_2
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    .line 1885
    return-void

    .line 1745
    :cond_3
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    iput v5, v1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 1746
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    const/16 v2, 0xd

    iput v2, v1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 1747
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 1748
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 1749
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v1, v5, v2}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 1750
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 1752
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aput v5, v1, v0

    .line 1743
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1761
    :cond_4
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    aput-boolean v5, v1, v2

    .line 1762
    add-int/lit8 v0, v0, 0x1

    .line 1763
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 1764
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v1, v1, 0x6c

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    goto/16 :goto_1

    .line 1878
    :cond_5
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v5}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1879
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1880
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    goto :goto_2
.end method

.method private PengProc(Lcom/rainbow/FMaj/GameView$Player;)V
    .locals 10
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    const/16 v9, 0x1f4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2050
    const/4 v1, 0x0

    .line 2052
    .local v1, "nTemp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v2, :cond_1

    .line 2064
    :goto_1
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v2, v6, v3}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 2065
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    sub-int/2addr v2, v8

    iput v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    .line 2066
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    iget v3, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aget v4, v2, v3

    sub-int/2addr v4, v8

    aput v4, v2, v3

    .line 2068
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aput v4, v2, v3

    .line 2069
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aput v4, v2, v3

    .line 2070
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    iget v3, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    aput v4, v2, v3

    .line 2071
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    .line 2073
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v2, v2, v3

    iput v5, v2, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 2074
    iput v5, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 2075
    iput v5, p1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 2077
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bGangOK:Z

    .line 2079
    iput-boolean v7, p1, Lcom/rainbow/FMaj/GameView$Player;->bShowPeng:Z

    .line 2080
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->aniTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-virtual {v2, v9, v6}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 2082
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->myID:I

    iput v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 2084
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eqz v2, :cond_0

    .line 2086
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v9, v3}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 2090
    :cond_0
    return-void

    .line 2054
    :cond_1
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    if-eq v2, v3, :cond_3

    .line 2052
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2056
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2057
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    const/16 v3, 0x3e8

    aput v3, v2, v0

    .line 2058
    if-le v1, v7, :cond_2

    goto :goto_1
.end method

.method private ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V
    .locals 4
    .param p1, "ff"    # Lcom/rainbow/FMaj/GameView$Player;

    .prologue
    .line 2039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    .line 2041
    const/4 v0, 0x0

    :goto_1
    iget v2, p1, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v0, v2, :cond_1

    .line 2046
    return-void

    .line 2039
    :cond_0
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2043
    :cond_1
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v1, v2, v0

    .line 2044
    .local v1, "nTemp":I
    iget-object v2, p1, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private XiaJiao([II)I
    .locals 5
    .param p1, "Ary"    # [I
    .param p2, "nLen"    # I

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x1

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 597
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 582
    :cond_0
    aget v2, p1, v0

    if-nez v2, :cond_1

    .line 580
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_1
    aget v2, p1, v0

    sub-int/2addr v2, v3

    aput v2, p1, v0

    .line 586
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-lt v1, v4, :cond_2

    .line 594
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    goto :goto_2

    .line 588
    :cond_2
    sub-int v2, p2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu2([III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 590
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    move v2, v0

    .line 591
    goto :goto_1

    .line 586
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private myPlaySound(I)V
    .locals 7
    .param p1, "nFlag"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 246
    iget-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->bFirstLove:Z

    if-eqz v0, :cond_2

    .line 249
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bFirstLove:Z

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mySound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/rainbow/FMaj/GameView;->sndDa:I

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 259
    :cond_3
    if-ne p1, v4, :cond_4

    .line 261
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mySound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/rainbow/FMaj/GameView;->sndDa:I

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 263
    :cond_4
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 266
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 269
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 274
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mpStart:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/rainbow/FMaj/GameView;->mpStart:Landroid/media/MediaPlayer;

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mpStart:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method private mySort([III)V
    .locals 6
    .param p1, "Value"    # [I
    .param p2, "nStart"    # I
    .param p3, "nLen"    # I

    .prologue
    .line 2354
    const/4 v4, 0x1

    sub-int v3, p3, v4

    .line 2356
    .local v3, "nTemp":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 2368
    return-void

    .line 2358
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-lt v1, p3, :cond_1

    .line 2356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2360
    :cond_1
    aget v4, p1, v0

    aget v5, p1, v1

    if-le v4, v5, :cond_2

    .line 2362
    aget v2, p1, v0

    .line 2363
    .local v2, "n":I
    aget v4, p1, v1

    aput v4, p1, v0

    .line 2364
    aput v2, p1, v1

    .line 2358
    .end local v2    # "n":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public SetWH(IILcom/rainbow/FMaj/FMaj3;)V
    .locals 1
    .param p1, "nW"    # I
    .param p2, "nH"    # I
    .param p3, "act"    # Lcom/rainbow/FMaj/FMaj3;

    .prologue
    .line 1666
    iput-object p3, p0, Lcom/rainbow/FMaj/GameView;->myAct:Lcom/rainbow/FMaj/FMaj3;

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->g_bShouldLoad:Z

    .line 1670
    return-void
.end method

.method public SetWH2(IILcom/rainbow/FMaj/FMaj3;)V
    .locals 0
    .param p1, "nW"    # I
    .param p2, "nH"    # I
    .param p3, "act"    # Lcom/rainbow/FMaj/FMaj3;

    .prologue
    .line 1653
    iput p1, p0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    .line 1654
    iput p2, p0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    .line 1659
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->run23()V

    .line 1661
    return-void
.end method

.method public UpData(I)V
    .locals 10
    .param p1, "nWhat"    # I

    .prologue
    const/16 v9, 0x3e8

    const/16 v8, 0x1f4

    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    if-eqz v1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 330
    :cond_0
    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/rainbow/FMaj/GameView;->NewGame2()V

    .line 333
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto :goto_0

    .line 337
    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_8

    .line 339
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->ComDa(Lcom/rainbow/FMaj/GameView$Player;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto :goto_0

    .line 344
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 346
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 350
    :cond_5
    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    if-eqz v1, :cond_7

    .line 352
    :cond_6
    iput v5, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 353
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 354
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-virtual {v1, v9, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 361
    :goto_1
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 362
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto :goto_0

    .line 358
    :cond_7
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v1, v8, v5}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    goto :goto_1

    .line 366
    :cond_8
    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    if-eqz v1, :cond_f

    .line 369
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->ComDa(Lcom/rainbow/FMaj/GameView$Player;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 371
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto/16 :goto_0

    .line 375
    :cond_9
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 377
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 378
    :cond_a
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanPeng(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 379
    :cond_b
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 381
    :cond_c
    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    if-eqz v1, :cond_e

    .line 383
    :cond_d
    iput v5, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 384
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 385
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-virtual {v1, v9, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 392
    :goto_2
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 393
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto/16 :goto_0

    .line 389
    :cond_e
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v1, v8, v5}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    goto :goto_2

    .line 398
    :cond_f
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    .line 411
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    const/16 v2, 0x37

    if-le v1, v2, :cond_12

    .line 413
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bLj:Z

    .line 414
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bShowEnd:Z

    .line 415
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto/16 :goto_0

    .line 400
    :cond_10
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eq v1, v0, :cond_11

    .line 402
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->ComWant(Lcom/rainbow/FMaj/GameView$Player;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 404
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto/16 :goto_0

    .line 398
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 419
    :cond_12
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->DeskPai:[I

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->DeskNum:I

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    aput v3, v1, v2

    .line 420
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->DeskNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->DeskNum:I

    .line 421
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    const/4 v2, -0x1

    iput v2, v1, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 423
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 424
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    .line 426
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Pai:[I

    iget v3, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 427
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 428
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->PaiIndex:I

    .line 429
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    aput-boolean v5, v1, v2

    .line 430
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 431
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    rem-int/lit8 v1, v1, 0x6c

    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nPaiMoStart:I

    .line 433
    iput-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bGangOK:Z

    .line 435
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 437
    iget v1, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-nez v1, :cond_15

    .line 439
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 440
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    .line 441
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 442
    :cond_13
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v1, v2}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 443
    :cond_14
    iput v5, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 444
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 445
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    invoke-virtual {v1, v9, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    .line 453
    :goto_4
    iput-boolean v6, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 455
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto/16 :goto_0

    .line 450
    :cond_15
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v1, v8, v5}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    goto :goto_4
.end method

.method public UpData2(I)V
    .locals 10
    .param p1, "nWhat"    # I

    .prologue
    const/16 v9, 0x64

    const/4 v4, 0x4

    const/4 v8, 0x1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v3, 0x0

    .line 286
    iget-boolean v2, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    if-eqz v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    if-nez p1, :cond_4

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/rainbow/FMaj/GameView$Player;->bShowGang:Z

    .line 293
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/rainbow/FMaj/GameView$Player;->bShowPeng:Z

    .line 294
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/rainbow/FMaj/GameView$Player;->bShowPao:Z

    .line 295
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/rainbow/FMaj/GameView$Player;->bShowHu:Z

    if-eqz v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/rainbow/FMaj/GameView$Player;->bShowHu:Z

    .line 298
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bShowEnd:Z

    .line 290
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    :cond_4
    if-ne p1, v9, :cond_0

    .line 305
    iget-boolean v2, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    if-eqz v2, :cond_0

    .line 307
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 308
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    if-le v2, v4, :cond_5

    .line 310
    iput v3, p0, Lcom/rainbow/FMaj/GameView;->nTishiCnt:I

    .line 311
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/rainbow/FMaj/GameView;->nTitou:I

    .line 313
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v1, v2

    .line 314
    .local v1, "nTemp":I
    :goto_2
    iget v2, p0, Lcom/rainbow/FMaj/GameView;->nTistr:I

    if-eq v1, v2, :cond_6

    .line 315
    iput v1, p0, Lcom/rainbow/FMaj/GameView;->nTistr:I

    .line 317
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 318
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 320
    .end local v1    # "nTemp":I
    :cond_5
    iget-object v2, p0, Lcom/rainbow/FMaj/GameView;->myTimer2:Lcom/rainbow/FMaj/GameView$RefreshHandler2;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v9}, Lcom/rainbow/FMaj/GameView$RefreshHandler2;->sleep(II)V

    goto :goto_0

    .line 314
    .restart local v1    # "nTemp":I
    :cond_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v1, v2

    goto :goto_2
.end method

.method public myDes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    .line 2382
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->myBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2383
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2384
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2385
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2386
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2387
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2388
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2389
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2390
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2391
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2392
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2393
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->huBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2394
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2395
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->kuang2Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2397
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->gang1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2398
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->peng1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2399
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->hu1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2400
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->pao1Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2401
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->b3Bit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2402
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->ljBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2403
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2404
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView;->tiBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2407
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->myBit:Landroid/graphics/Bitmap;

    .line 2408
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    .line 2409
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    .line 2410
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    .line 2411
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    .line 2412
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    .line 2413
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    .line 2414
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    .line 2415
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    .line 2416
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    .line 2417
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    .line 2418
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->huBit:Landroid/graphics/Bitmap;

    .line 2419
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    .line 2420
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->kuang2Bit:Landroid/graphics/Bitmap;

    .line 2422
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->gang1Bit:Landroid/graphics/Bitmap;

    .line 2423
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->peng1Bit:Landroid/graphics/Bitmap;

    .line 2424
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->hu1Bit:Landroid/graphics/Bitmap;

    .line 2425
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->pao1Bit:Landroid/graphics/Bitmap;

    .line 2426
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->b3Bit:Landroid/graphics/Bitmap;

    .line 2427
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->ljBit:Landroid/graphics/Bitmap;

    .line 2428
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    .line 2429
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->tiBit:Landroid/graphics/Bitmap;

    .line 2432
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    .line 2433
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    .line 2435
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    .line 2436
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    .line 2437
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    .line 2438
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    .line 2439
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    .line 2440
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    .line 2442
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    .line 2444
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    .line 2445
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    .line 2447
    iput-object v1, p0, Lcom/rainbow/FMaj/GameView;->menuDlg:Landroid/app/AlertDialog;

    .line 2449
    return-void
.end method

.method public myExit()V
    .locals 3

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v0, "my":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myAct:Lcom/rainbow/FMaj/FMaj3;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/rainbow/FMaj/FMaj3;->setResult(ILandroid/content/Intent;)V

    .line 721
    iget-object v1, p0, Lcom/rainbow/FMaj/GameView;->myAct:Lcom/rainbow/FMaj/FMaj3;

    invoke-virtual {v1}, Lcom/rainbow/FMaj/FMaj3;->finish()V

    .line 722
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 727
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 729
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    if-eqz v5, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget v4, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    .line 738
    .local v4, "ny":I
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bShowEnd:Z

    if-eqz v5, :cond_9

    .line 740
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->b3Bit:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 742
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bLj:Z

    if-eqz v5, :cond_3

    .line 744
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nEndLjx:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 745
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nEndPaiy:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 746
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->ljBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 779
    :cond_2
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 780
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 781
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    .line 783
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    aget v3, v5, v2

    .line 784
    .local v3, "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 785
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 787
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    aget v6, v6, v2

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 788
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    aget v6, v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 789
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 790
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 792
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 794
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v10, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\uff04"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->JiaoMoney:[I

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    aget v7, v7, v2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    aget v7, v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 797
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v5, v5, v2

    if-lez v5, :cond_6

    .line 799
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v10, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 810
    :goto_2
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v5, v5, v2

    if-lez v5, :cond_8

    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    aget v7, v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 781
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 750
    .end local v2    # "i":I
    .end local v3    # "nTemp":I
    :cond_3
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nEndPaix:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 751
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nEndPaiy:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 752
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 753
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 754
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 755
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-ge v2, v5, :cond_2

    .line 757
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v5, v2

    .line 758
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 759
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 760
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_4

    .line 762
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 763
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 764
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis2:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 765
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 767
    :cond_4
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 768
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 769
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 771
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_5

    .line 773
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 774
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 755
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 801
    :cond_6
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v5, v5, v2

    if-gez v5, :cond_7

    .line 803
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v11, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_2

    .line 807
    :cond_7
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_2

    .line 816
    :cond_8
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->BengJu:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    aget v7, v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 825
    .end local v2    # "i":I
    .end local v3    # "nTemp":I
    :cond_9
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->myBit:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 827
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    if-nez v5, :cond_a

    .line 829
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 830
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 834
    :cond_a
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 835
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 836
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 837
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 838
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 839
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v2, v5, :cond_18

    .line 861
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 862
    :cond_b
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/rainbow/FMaj/GameView;->M0x:I

    .line 863
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 864
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 865
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 866
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 867
    const/4 v2, 0x0

    :goto_6
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v2, v5, :cond_1b

    .line 876
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    .line 878
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Mox:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 879
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 880
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 881
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 882
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 883
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 884
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget v3, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 885
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 886
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 887
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 891
    .end local v3    # "nTemp":I
    :cond_c
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj2x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 892
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 893
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj2y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 894
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 895
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 896
    const/4 v2, 0x0

    :goto_7
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v2, v5, :cond_1c

    .line 914
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lez v5, :cond_d

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 917
    :cond_d
    const/4 v2, 0x0

    :goto_8
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v2, v5, :cond_1f

    .line 922
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    .line 924
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 949
    :cond_e
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj4x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 950
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 951
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj2y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 952
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 953
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 954
    const/4 v2, 0x0

    :goto_9
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v2, v5, :cond_20

    .line 972
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 973
    :cond_f
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj4x:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Width:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 976
    const/4 v2, 0x0

    :goto_a
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v2, v5, :cond_23

    .line 981
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 983
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1008
    :cond_10
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj3x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1009
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj3y:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj3Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1010
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1011
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1012
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1013
    const/4 v2, 0x0

    :goto_b
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lt v2, v5, :cond_24

    .line 1034
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDesk:I

    if-lez v5, :cond_11

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1035
    :cond_11
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj3y:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj3Dis:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj3Height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1038
    const/4 v2, 0x0

    :goto_c
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    if-lt v2, v5, :cond_27

    .line 1043
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    .line 1045
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1071
    :cond_12
    const/4 v0, 0x0

    .line 1072
    .local v0, "bTemp":Z
    const/4 v1, 0x1

    .line 1073
    .local v1, "bTemp2":Z
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd1x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1074
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd1y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1075
    const/4 v2, 0x0

    :goto_d
    const/16 v5, 0x1e

    if-lt v2, v5, :cond_28

    .line 1103
    const/4 v0, 0x0

    .line 1104
    const/4 v1, 0x1

    .line 1105
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd2x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1106
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd2y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1107
    const/16 v2, 0x1e

    :goto_e
    const/16 v5, 0x36

    if-lt v2, v5, :cond_2d

    .line 1142
    const/4 v0, 0x0

    .line 1143
    const/4 v1, 0x1

    .line 1144
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd3x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1145
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd3y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1146
    const/16 v2, 0x53

    :goto_f
    const/16 v5, 0x35

    if-gt v2, v5, :cond_32

    .line 1174
    const/4 v0, 0x0

    .line 1175
    const/4 v1, 0x1

    .line 1176
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd4x:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1177
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd4y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1178
    const/16 v2, 0x6b

    :goto_10
    const/16 v5, 0x53

    if-gt v2, v5, :cond_37

    .line 1197
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nDeskx:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1198
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nDesky:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1199
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1200
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1201
    const/4 v2, 0x0

    :goto_11
    iget v5, p0, Lcom/rainbow/FMaj/GameView;->DeskNum:I

    if-lt v2, v5, :cond_3a

    .line 1222
    const/4 v2, 0x0

    :goto_12
    const/4 v5, 0x4

    if-lt v2, v5, :cond_3c

    .line 1242
    :goto_13
    const/4 v2, 0x0

    :goto_14
    const/4 v5, 0x4

    if-lt v2, v5, :cond_3e

    .line 1267
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    if-nez v5, :cond_13

    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    if-nez v5, :cond_13

    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    if-eqz v5, :cond_16

    .line 1269
    :cond_13
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nHux:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1270
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nHuy:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1271
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->huBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1273
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    if-eqz v5, :cond_14

    .line 1275
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1278
    :cond_14
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    if-eqz v5, :cond_15

    .line 1280
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nHux:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1281
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1283
    :cond_15
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    if-eqz v5, :cond_16

    .line 1285
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nHux:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1286
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1291
    :cond_16
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    if-eqz v5, :cond_17

    .line 1293
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTishiX:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1294
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTishiY:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1295
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1296
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1298
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1299
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1300
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTitou:I

    aget v6, v6, v7

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    mul-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1301
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1302
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1303
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->tiBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1304
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1305
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nTistrDis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1306
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->strTishi:[Ljava/lang/String;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nTistr:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1310
    :cond_17
    iget-boolean v5, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    if-eqz v5, :cond_0

    .line 1312
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    const/16 v6, 0x90

    invoke-virtual {v5, v6, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1313
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1315
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->bitSelPai:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 841
    .end local v0    # "bTemp":Z
    .end local v1    # "bTemp2":Z
    :cond_18
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v5, v2

    .line 842
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 843
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 844
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_19

    .line 846
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 847
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 848
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Dis2:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 849
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 851
    :cond_19
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 852
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 853
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 855
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1a

    .line 857
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 858
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 839
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 869
    .end local v3    # "nTemp":I
    :cond_1b
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    aget v3, v5, v2

    .line 870
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 871
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 872
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 873
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 874
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 898
    .end local v3    # "nTemp":I
    :cond_1c
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v5, v2

    .line 899
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 900
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 901
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1d

    .line 903
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 904
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 906
    :cond_1d
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 907
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 908
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 909
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1e

    .line 911
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 896
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 919
    .end local v3    # "nTemp":I
    :cond_1f
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 920
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 956
    :cond_20
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v5, v2

    .line 957
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 958
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_21

    .line 961
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 962
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 964
    :cond_21
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 965
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 966
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 967
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_22

    .line 969
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 954
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 978
    .end local v3    # "nTemp":I
    :cond_23
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 979
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj2Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 1015
    :cond_24
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    aget v3, v5, v2

    .line 1016
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1017
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1018
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_25

    .line 1020
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1021
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 1022
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj3Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1023
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1025
    :cond_25
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1026
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1027
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1028
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v12

    iget-object v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_26

    .line 1030
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1031
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1013
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 1040
    .end local v3    # "nTemp":I
    :cond_27
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1041
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj3Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1038
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 1077
    .restart local v0    # "bTemp":Z
    .restart local v1    # "bTemp2":Z
    :cond_28
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2b

    .line 1079
    if-eqz v1, :cond_2a

    .line 1081
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v8, :cond_29

    .line 1083
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd1y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1085
    :cond_29
    const/4 v1, 0x0

    .line 1087
    :cond_2a
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1089
    :cond_2b
    if-eqz v0, :cond_2c

    .line 1091
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1092
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd1y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1093
    const/4 v0, 0x0

    .line 1075
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 1097
    :cond_2c
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd1y:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd1Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1098
    const/4 v0, 0x1

    goto :goto_15

    .line 1109
    :cond_2d
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2f

    .line 1111
    if-eqz v1, :cond_30

    .line 1113
    const/4 v1, 0x0

    .line 1114
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v8, :cond_2e

    .line 1116
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Dis:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1118
    :cond_2e
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1119
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v8, :cond_2f

    .line 1121
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1129
    :cond_2f
    :goto_16
    if-eqz v0, :cond_31

    .line 1131
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1132
    const/4 v0, 0x0

    .line 1107
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 1126
    :cond_30
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 1136
    :cond_31
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1137
    const/4 v0, 0x1

    goto :goto_17

    .line 1148
    :cond_32
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_35

    .line 1150
    if-eqz v1, :cond_34

    .line 1152
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v8, :cond_33

    .line 1154
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd3y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1156
    :cond_33
    const/4 v1, 0x0

    .line 1158
    :cond_34
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1160
    :cond_35
    if-eqz v0, :cond_36

    .line 1162
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd1Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1163
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd3y:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1164
    const/4 v0, 0x0

    .line 1146
    :goto_18
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f

    .line 1168
    :cond_36
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMjd3y:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd1Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1169
    const/4 v0, 0x1

    goto :goto_18

    .line 1180
    :cond_37
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->bPai:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_38

    .line 1182
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1184
    :cond_38
    if-eqz v0, :cond_39

    .line 1186
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1187
    const/4 v0, 0x0

    .line 1178
    :goto_19
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_10

    .line 1191
    :cond_39
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMjd2Dis:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1192
    const/4 v0, 0x1

    goto :goto_19

    .line 1203
    :cond_3a
    rem-int/lit8 v5, v2, 0xe

    if-nez v5, :cond_3b

    .line 1205
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nDeskx:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1206
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1208
    :cond_3b
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1209
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1211
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->DeskPai:[I

    aget v3, v5, v2

    .line 1213
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1214
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1216
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1218
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 1224
    .end local v3    # "nTemp":I
    :cond_3c
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3d

    .line 1222
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 1226
    :cond_3d
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    aget v6, v6, v2

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1227
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    aget v6, v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1228
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1229
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1230
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 1231
    .restart local v3    # "nTemp":I
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1232
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1233
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    mul-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1234
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1235
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1236
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->kuang2Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 1244
    .end local v3    # "nTemp":I
    :cond_3e
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bShowGang:Z

    if-eqz v5, :cond_40

    .line 1246
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->gang1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1242
    :cond_3f
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 1249
    :cond_40
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bShowHu:Z

    if-eqz v5, :cond_41

    .line 1251
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->hu1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    .line 1254
    :cond_41
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bShowPeng:Z

    if-eqz v5, :cond_42

    .line 1256
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->peng1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    .line 1260
    :cond_42
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/rainbow/FMaj/GameView$Player;->bShowPao:Z

    if-eqz v5, :cond_3f

    .line 1262
    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->pao1Bit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1641
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1643
    iget-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->g_bShouldLoad:Z

    if-eqz v0, :cond_0

    .line 1645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/rainbow/FMaj/GameView;->SetWH2(IILcom/rainbow/FMaj/FMaj3;)V

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rainbow/FMaj/GameView;->g_bShouldLoad:Z

    .line 1649
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/16 v6, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    .line 1635
    :goto_0
    return v3

    .line 1332
    :cond_0
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bShowEnd:Z

    if-eqz v3, :cond_1

    .line 1334
    invoke-direct {p0}, Lcom/rainbow/FMaj/GameView;->NewGame()V

    .line 1335
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    move v3, v8

    .line 1336
    goto :goto_0

    .line 1339
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1340
    .local v1, "xx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1344
    .local v2, "yy":I
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1346
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    move v3, v8

    .line 1347
    goto :goto_0

    .line 1350
    :cond_2
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1352
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    if-eqz v3, :cond_3

    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->g_bSound:Z

    .line 1353
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myAct:Lcom/rainbow/FMaj/FMaj3;

    invoke-virtual {v3}, Lcom/rainbow/FMaj/FMaj3;->SaveSound()V

    .line 1354
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    move v3, v8

    .line 1355
    goto :goto_0

    :cond_3
    move v3, v8

    .line 1352
    goto :goto_1

    .line 1358
    :cond_4
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    if-eqz v3, :cond_7

    .line 1360
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1362
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1363
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1364
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1365
    iget v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v3, v6, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1366
    :cond_5
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1367
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1368
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1369
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1370
    goto :goto_0

    .line 1373
    :cond_6
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1375
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/rainbow/FMaj/GameView;->PengProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 1377
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1379
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1380
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1381
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1382
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1383
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1384
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1386
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1387
    goto/16 :goto_0

    .line 1391
    :cond_7
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    if-eqz v3, :cond_c

    .line 1393
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1395
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1396
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1397
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1398
    iget v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v3, v6, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1399
    :cond_8
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1400
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1401
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1402
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1403
    goto/16 :goto_0

    .line 1406
    :cond_9
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1408
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/rainbow/FMaj/GameView;->GangProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 1410
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1411
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    .line 1413
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1414
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1415
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1417
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v3, v4}, Lcom/rainbow/FMaj/GameView;->CanHu(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1418
    :cond_a
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    invoke-direct {p0, v3, v4}, Lcom/rainbow/FMaj/GameView;->CanGang(Lcom/rainbow/FMaj/GameView$Player;I)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1419
    :cond_b
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1420
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1421
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1422
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1423
    goto/16 :goto_0

    .line 1427
    :cond_c
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    if-eqz v3, :cond_f

    .line 1429
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1431
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1432
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1433
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1434
    iget v3, p0, Lcom/rainbow/FMaj/GameView;->curPlayer:I

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v3, v6, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1435
    :cond_d
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1436
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1437
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1438
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1439
    goto/16 :goto_0

    .line 1442
    :cond_e
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1444
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/rainbow/FMaj/GameView;->HuProc(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 1446
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1447
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1448
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1449
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1450
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1451
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1452
    invoke-direct {p0, v8}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    move v3, v8

    .line 1453
    goto/16 :goto_0

    .line 1457
    :cond_f
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    if-eqz v3, :cond_12

    .line 1459
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1461
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->b_bSelPaiHand:Z

    if-eqz v3, :cond_11

    .line 1463
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->g_nSelPaiIndex:I

    aget v4, v4, v5

    iput v4, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 1464
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    iput v3, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 1466
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-eq v3, v9, :cond_10

    .line 1468
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->g_nSelPaiIndex:I

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    aput v5, v3, v4

    .line 1469
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iput v9, v3, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 1470
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v3, v7, v4}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 1478
    :goto_2
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/rainbow/FMaj/GameView;->ProcPai(Lcom/rainbow/FMaj/GameView$Player;)V

    .line 1480
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1481
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    .line 1482
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1483
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1484
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1486
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 1488
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1489
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1490
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1492
    invoke-direct {p0, v10}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 1496
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v3, v6, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    .line 1520
    :goto_3
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    move v3, v8

    .line 1521
    goto/16 :goto_0

    .line 1474
    :cond_10
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->g_nSelPaiIndex:I

    const/16 v5, 0x3e8

    aput v5, v3, v4

    .line 1475
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    invoke-direct {p0, v3, v7, v4}, Lcom/rainbow/FMaj/GameView;->mySort([III)V

    .line 1476
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v4, v3, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    sub-int/2addr v4, v8

    iput v4, v3, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    goto :goto_2

    .line 1500
    :cond_11
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    iput v4, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    .line 1501
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iput v9, v3, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    .line 1502
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/rainbow/FMaj/GameView$Player;->nDa:I

    iput v3, p0, Lcom/rainbow/FMaj/GameView;->BackPai:I

    .line 1504
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    .line 1505
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    .line 1506
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnHu:Z

    .line 1507
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnPeng:Z

    .line 1508
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bEnGang:Z

    .line 1510
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bCurMo:Z

    .line 1512
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishi:Z

    .line 1513
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->bTishiCnt:Z

    .line 1514
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    .line 1516
    invoke-direct {p0, v10}, Lcom/rainbow/FMaj/GameView;->myPlaySound(I)V

    .line 1518
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->myTimer:Lcom/rainbow/FMaj/GameView$RefreshHandler;

    invoke-virtual {v3, v6, v7}, Lcom/rainbow/FMaj/GameView$RefreshHandler;->sleep(II)V

    goto :goto_3

    .line 1525
    :cond_12
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bCPai:Z

    if-eqz v3, :cond_13

    .line 1527
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->M0x:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1528
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->M0y:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1529
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rainbow/FMaj/GameView$Player;->nHand:I

    iget v6, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1530
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1532
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1534
    iget v3, p0, Lcom/rainbow/FMaj/GameView;->M0x:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    div-int v0, v3, v4

    .line 1536
    .local v0, "nTemp":I
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->M0x:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1537
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1538
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1539
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1541
    iput v0, p0, Lcom/rainbow/FMaj/GameView;->g_nSelPaiIndex:I

    .line 1542
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->b_bSelPaiHand:Z

    .line 1543
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    .line 1544
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    move v3, v8

    .line 1545
    goto/16 :goto_0

    .line 1586
    .end local v0    # "nTemp":I
    :cond_13
    iget-boolean v3, p0, Lcom/rainbow/FMaj/GameView;->bCMo:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->Maj:[Lcom/rainbow/FMaj/GameView$Player;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/rainbow/FMaj/GameView$Player;->nMo:I

    if-eq v3, v9, :cond_14

    .line 1588
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->nMj1Mox:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1589
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, p0, Lcom/rainbow/FMaj/GameView;->M0y:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1590
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1591
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1593
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1596
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1597
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1598
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1599
    iget-object v3, p0, Lcom/rainbow/FMaj/GameView;->g_rstSelPai:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1601
    iput-boolean v7, p0, Lcom/rainbow/FMaj/GameView;->b_bSelPaiHand:Z

    .line 1602
    iput-boolean v8, p0, Lcom/rainbow/FMaj/GameView;->g_bSelPai:Z

    .line 1604
    invoke-virtual {p0}, Lcom/rainbow/FMaj/GameView;->invalidate()V

    move v3, v8

    .line 1605
    goto/16 :goto_0

    :cond_14
    move v3, v8

    .line 1635
    goto/16 :goto_0
.end method

.method public run23()V
    .locals 38

    .prologue
    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/rainbow/FMaj/GameView;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 2463
    .local v29, "mycon":Landroid/content/Context;
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 2468
    .local v32, "r":Landroid/content/res/Resources;
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mpStart:Landroid/media/MediaPlayer;

    .line 2469
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mySound:Landroid/media/SoundPool;

    .line 2471
    new-instance v33, Landroid/media/SoundPool;

    const/16 v34, 0x8

    const/16 v35, 0x3

    const/16 v36, 0x0

    invoke-direct/range {v33 .. v36}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mySound:Landroid/media/SoundPool;

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mySound:Landroid/media/SoundPool;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/rainbow/FMaj/GameView;->getContext()Landroid/content/Context;

    move-result-object v34

    const/high16 v35, 0x7f040000

    const/16 v36, 0x1

    invoke-virtual/range {v33 .. v36}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->sndDa:I

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstMenu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstHu:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstPeng:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstGang:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndNo:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSndClick:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSelPaiOK:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v34, v0

    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v33 .. v35}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->myBit:Landroid/graphics/Bitmap;

    .line 2520
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->myBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2521
    .local v5, "can":Landroid/graphics/Canvas;
    const/high16 v33, 0x7f020000

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2522
    .local v28, "dra":Landroid/graphics/drawable/Drawable;
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2523
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1b

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    .line 2526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x2b

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    .line 2527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj1Width:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x1b

    .line 2528
    .local v31, "nW":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj1Height:I

    move/from16 v30, v0

    .line 2529
    .local v30, "nH":I
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    .line 2530
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2531
    .local v15, "can2":Landroid/graphics/Canvas;
    const v33, 0x7f02000d

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2532
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2533
    move-object/from16 v0, v28

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1e

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1x:I

    .line 2536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x114

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1y:I

    .line 2539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj1x:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->M0x:I

    .line 2540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj1y:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->M0y:I

    .line 2542
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x18

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    .line 2543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x24

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    .line 2544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x11b

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj12y:I

    .line 2546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    .line 2547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    move/from16 v33, v0

    if-gez v33, :cond_0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Dis:I

    .line 2548
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0xa

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Dis2:I

    .line 2549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x19a

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj1Mox:I

    .line 2551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x1b

    .line 2552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    move/from16 v30, v0

    .line 2553
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    .line 2554
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj12Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2555
    .local v19, "can3":Landroid/graphics/Canvas;
    const v33, 0x7f02000e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2556
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2557
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    move/from16 v34, v0

    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v33 .. v35}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->kuang2Bit:Landroid/graphics/Bitmap;

    .line 2560
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->kuang2Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2561
    .local v20, "can32":Landroid/graphics/Canvas;
    const v33, 0x7f02000a

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2562
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Width:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj12Height:I

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2563
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xe4

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xdc

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x18e

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x8e

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xe4

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x28

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDax:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x3a

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nMjDay:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x8e

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xbe

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xeb

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x17c

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x75

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xbe

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    const/16 v35, 0x0

    aput v35, v33, v34

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    const/16 v35, 0x0

    aput v35, v33, v34

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nPaoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x75

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0xa

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2Width:I

    .line 2584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x22

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2Height:I

    .line 2585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj2Width:I

    move/from16 v31, v0

    .line 2586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj2Height:I

    move/from16 v30, v0

    .line 2587
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    .line 2588
    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj2Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2589
    .local v21, "can4":Landroid/graphics/Canvas;
    const v33, 0x7f02000f

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2590
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2591
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2592
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    .line 2593
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj4Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2594
    .local v22, "can41":Landroid/graphics/Canvas;
    const v33, 0x7f020013

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2595
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2596
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x1b8

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2x:I

    .line 2598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x28

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2y:I

    .line 2600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    .line 2601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x19

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    .line 2602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj22Width:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x1b

    .line 2603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj22Height:I

    move/from16 v30, v0

    .line 2604
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    .line 2605
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj22Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2606
    .local v23, "can5":Landroid/graphics/Canvas;
    const v33, 0x7f020010

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2607
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2608
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0xc

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2Dis:I

    .line 2612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x10

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj2Dis2:I

    .line 2614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0xd

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj4x:I

    .line 2616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x12

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj3Width:I

    .line 2617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1b

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj3Height:I

    .line 2618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj3Width:I

    move/from16 v31, v0

    .line 2619
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj3Height:I

    move/from16 v30, v0

    .line 2620
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    .line 2621
    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj3Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2622
    .local v24, "can6":Landroid/graphics/Canvas;
    const v33, 0x7f020011

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2623
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2624
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x6e

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj3x:I

    .line 2627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj3y:I

    .line 2629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x13

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    .line 2630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1d

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    .line 2631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj32Width:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x1b

    .line 2632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMj32Height:I

    move/from16 v30, v0

    .line 2633
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    .line 2634
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mj32Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2635
    .local v25, "can7":Landroid/graphics/Canvas;
    const v33, 0x7f020012

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2636
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2637
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x5

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMj3Dis:I

    .line 2641
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x12

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd1Width:I

    .line 2642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd1Height:I

    .line 2643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMjd1Width:I

    move/from16 v31, v0

    .line 2644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMjd1Height:I

    move/from16 v30, v0

    .line 2645
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    .line 2646
    new-instance v26, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mjd1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2647
    .local v26, "can8":Landroid/graphics/Canvas;
    const v33, 0x7f020014

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2648
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2649
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x69

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd1x:I

    .line 2652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x37

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd1y:I

    .line 2653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x8

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd1Dis:I

    .line 2655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x17

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd2Width:I

    .line 2656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x17

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd2Height:I

    .line 2657
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMjd2Width:I

    move/from16 v31, v0

    .line 2658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMjd2Height:I

    move/from16 v30, v0

    .line 2659
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    .line 2660
    new-instance v27, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->mjd2Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2661
    .local v27, "can9":Landroid/graphics/Canvas;
    const v33, 0x7f020015

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2662
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2663
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x190

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd2x:I

    .line 2666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x46

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd2y:I

    .line 2667
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x8

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd2Dis:I

    .line 2669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x69

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd3x:I

    .line 2670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd3y:I

    .line 2672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd4x:I

    .line 2673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nMjd2y:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nMjd4y:I

    .line 2675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x69

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nDeskx:I

    .line 2676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x55

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nDesky:I

    .line 2678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x5a

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    .line 2679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x9b

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    .line 2680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x6

    .line 2681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    move/from16 v30, v0

    .line 2682
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    .line 2683
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v6

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2684
    .local v6, "can10":Landroid/graphics/Canvas;
    const v33, 0x7f020005

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2685
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2686
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x186

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG2x:I

    .line 2689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x4b

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG2y:I

    .line 2690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0xc3

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG3x:I

    .line 2691
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG3y:I

    .line 2692
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG4x:I

    .line 2693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG2y:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nG4y:I

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    const/16 v34, 0x80

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG2x:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG2y:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object v0, v5

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG3x:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG3y:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object v0, v5

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG4x:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nG4y:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->JiaoFang:[I

    move-object/from16 v34, v0

    const/16 v35, 0x3

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    mul-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nGirlWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstSrc:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->rstDst:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->girlPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object v0, v5

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x2b

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x24

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nHuHeight:I

    .line 2725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x4

    .line 2726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nHuHeight:I

    move/from16 v30, v0

    .line 2727
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->huBit:Landroid/graphics/Bitmap;

    .line 2728
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->huBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2729
    .local v7, "can12":Landroid/graphics/Canvas;
    const v33, 0x7f020006

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2730
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2731
    move-object/from16 v0, v28

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x9a

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nHux:I

    .line 2733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nHuy:I

    .line 2735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nHuWidth:I

    move/from16 v31, v0

    .line 2736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nHuHeight:I

    move/from16 v30, v0

    .line 2737
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    .line 2738
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->kuangBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v8

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2739
    .local v8, "can13":Landroid/graphics/Canvas;
    const v33, 0x7f020009

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2740
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2741
    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x41

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x43

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2745
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->peng1Bit:Landroid/graphics/Bitmap;

    .line 2746
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->peng1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v9

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2747
    .local v9, "can14":Landroid/graphics/Canvas;
    const v33, 0x7f020017

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2748
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2749
    move-object/from16 v0, v28

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2753
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->gang1Bit:Landroid/graphics/Bitmap;

    .line 2754
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->gang1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v10

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2755
    .local v10, "can15":Landroid/graphics/Canvas;
    const v33, 0x7f020004

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2756
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2757
    move-object/from16 v0, v28

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x74

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x72

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2761
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->hu1Bit:Landroid/graphics/Bitmap;

    .line 2762
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->hu1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2763
    .local v11, "can16":Landroid/graphics/Canvas;
    const v33, 0x7f020007

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2764
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2765
    move-object/from16 v0, v28

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x64

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x55

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2769
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->pao1Bit:Landroid/graphics/Bitmap;

    .line 2770
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->pao1Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v12

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2771
    .local v12, "can17":Landroid/graphics/Canvas;
    const v33, 0x7f020016

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2772
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2773
    move-object/from16 v0, v28

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v31, v0

    .line 2776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v30, v0

    .line 2777
    sget-object v33, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->b3Bit:Landroid/graphics/Bitmap;

    .line 2778
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->b3Bit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v13

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2779
    .local v13, "can18":Landroid/graphics/Canvas;
    const v33, 0x7f020001

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2780
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2781
    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x46

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nEndPaix:I

    .line 2784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nEndPaiy:I

    .line 2786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0xc4

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nEndLjx:I

    .line 2787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x58

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x24

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2789
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->ljBit:Landroid/graphics/Bitmap;

    .line 2790
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->ljBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object v0, v14

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2791
    .local v14, "can19":Landroid/graphics/Canvas;
    const v33, 0x7f02000b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2792
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2793
    move-object/from16 v0, v28

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x32

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    .line 2796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x38

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    .line 2797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nTouWidth:I

    move/from16 v33, v0

    mul-int/lit8 v31, v33, 0x7

    .line 2798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    move/from16 v30, v0

    .line 2799
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    .line 2800
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->touBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2801
    .local v16, "can20":Landroid/graphics/Canvas;
    const v33, 0x7f020019

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2802
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2803
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xb7

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xde

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x155

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xb3

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xb7

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x82

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nToux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x18

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nTouy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xb3

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xf3

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xef

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x190

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xc4

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xf3

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x94

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScox:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x54

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nScoy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xc4

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    const/16 v34, 0xff

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->scoPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v34, v0

    mul-int/lit8 v34, v34, 0x10

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x140

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x10c

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x108

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x1ab

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xdb

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x10c

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xac

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJux:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x6e

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->nJuy:[I

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0xdb

    move/from16 v35, v0

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x140

    move/from16 v35, v0

    aput v35, v33, v34

    .line 2837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x9b

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->nTouHeight:I

    move/from16 v30, v0

    .line 2839
    sget-object v33, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->tiBit:Landroid/graphics/Bitmap;

    .line 2840
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->tiBit:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2841
    .local v17, "can21":Landroid/graphics/Canvas;
    const v33, 0x7f020018

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2842
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2843
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x8a

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nTishiX:I

    .line 2846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x78

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nTishiY:I

    .line 2848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x23

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rainbow/FMaj/GameView;->nTistrDis:I

    .line 2850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenWidth:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x45

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v31, v0

    .line 2851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rainbow/FMaj/GameView;->m_nScreenHeight:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x1e

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x140

    move/from16 v30, v0

    .line 2852
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rainbow/FMaj/GameView;->bitSelPai:Landroid/graphics/Bitmap;

    .line 2853
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rainbow/FMaj/GameView;->bitSelPai:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2854
    .local v18, "can22":Landroid/graphics/Canvas;
    const v33, 0x7f020003

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2855
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2856
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2859
    invoke-direct/range {p0 .. p0}, Lcom/rainbow/FMaj/GameView;->NewGame()V

    .line 2861
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/rainbow/FMaj/GameView;->bLoading:Z

    .line 2862
    return-void
.end method
