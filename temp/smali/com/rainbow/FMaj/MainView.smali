.class public Lcom/rainbow/FMaj/MainView;
.super Landroid/view/View;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rainbow/FMaj/MainView$RefreshHandler;
    }
.end annotation


# instance fields
.field public JiaoMoney:[I

.field public bK1:Z

.field public bK2:Z

.field public bK3:Z

.field public bK4:Z

.field private bM1:Z

.field private bM2:Z

.field private bM3:Z

.field private bm:[Z

.field private dlg:Lcom/rainbow/FMaj/LkyDlg;

.field private m_nScreenHeight:I

.field private m_nScreenWidth:I

.field private mm1:I

.field private mm2:I

.field private mm3:I

.field private myAct:Lcom/rainbow/FMaj/FMaj;

.field private myBit:Landroid/graphics/Bitmap;

.field private myPaint:Landroid/graphics/Paint;

.field private myTimer:Lcom/rainbow/FMaj/MainView$RefreshHandler;

.field private nDis:I

.field private nTouHeight:I

.field private nTouWidth:I

.field private rstExit:Landroid/graphics/Rect;

.field private rstHelp:Landroid/graphics/Rect;

.field private rstK1:Landroid/graphics/Rect;

.field private rstK2:Landroid/graphics/Rect;

.field private rstK3:Landroid/graphics/Rect;

.field private rstK4:Landroid/graphics/Rect;

.field private rstK5:Landroid/graphics/Rect;

.field private rstK6:Landroid/graphics/Rect;

.field rstSrc:Landroid/graphics/Rect;

.field private rstStart:Landroid/graphics/Rect;

.field private rstT1:Landroid/graphics/Rect;

.field private rstT2:Landroid/graphics/Rect;

.field private rstT3:Landroid/graphics/Rect;

.field private touBit:Landroid/graphics/Bitmap;

.field private tx:I

.field private ty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x1ab

    const/16 v4, 0x75

    const/4 v8, -0x1

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Lcom/rainbow/FMaj/MainView$RefreshHandler;

    invoke-direct {v1, p0}, Lcom/rainbow/FMaj/MainView$RefreshHandler;-><init>(Lcom/rainbow/FMaj/MainView;)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->myTimer:Lcom/rainbow/FMaj/MainView$RefreshHandler;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xaf

    const/16 v3, 0xd5

    invoke-direct {v1, v7, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xe1

    const/16 v3, 0x107

    invoke-direct {v1, v7, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x115

    const/16 v3, 0x13b

    invoke-direct {v1, v7, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x3

    const/16 v3, 0x1dd

    const/16 v4, 0x3b

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x41

    const/16 v3, 0x1dd

    const/16 v4, 0x79

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x7e

    const/16 v3, 0x1dd

    const/16 v4, 0xb6

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xd5

    const/16 v3, 0x11

    const/16 v4, 0x12f

    const/16 v5, 0x6b

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x13b

    const/16 v3, 0x5d

    const/16 v4, 0x195

    const/16 v5, 0xb7

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x114

    const/16 v3, 0xdc

    const/16 v4, 0x16e

    const/16 v5, 0x136

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x97

    const/16 v3, 0xd9

    const/16 v4, 0xf1

    const/16 v5, 0x133

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x70

    const/16 v3, 0x52

    const/16 v4, 0xca

    const/16 v5, 0xac

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xd7

    const/16 v3, 0x77

    const/16 v4, 0x131

    const/16 v5, 0xd1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->dlg:Lcom/rainbow/FMaj/LkyDlg;

    .line 67
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    .line 77
    new-array v1, v7, [Z

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    .line 85
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    .line 86
    const/16 v1, 0x140

    iput v1, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    .line 88
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bK1:Z

    .line 89
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bK2:Z

    .line 90
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bK3:Z

    .line 91
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bK4:Z

    .line 93
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bM1:Z

    .line 94
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bM2:Z

    .line 95
    iput-boolean v6, p0, Lcom/rainbow/FMaj/MainView;->bM3:Z

    .line 97
    iput v8, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    .line 98
    iput v8, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    .line 99
    iput v8, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 106
    new-instance v1, Lcom/rainbow/FMaj/LkyDlg;

    invoke-direct {v1, p1}, Lcom/rainbow/FMaj/LkyDlg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rainbow/FMaj/MainView;->dlg:Lcom/rainbow/FMaj/LkyDlg;

    .line 108
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aput-boolean v6, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SetWH(IILcom/rainbow/FMaj/FMaj;)V
    .locals 8
    .param p1, "nW"    # I
    .param p2, "nH"    # I
    .param p3, "act"    # Lcom/rainbow/FMaj/FMaj;

    .prologue
    const/4 v7, 0x0

    .line 141
    iput-object p3, p0, Lcom/rainbow/FMaj/MainView;->myAct:Lcom/rainbow/FMaj/FMaj;

    .line 143
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 145
    .local v3, "r":Landroid/content/res/Resources;
    iput p1, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    .line 146
    iput p2, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    .line 149
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/lit8 v5, v5, 0x10

    div-int/lit16 v5, v5, 0x140

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/lit16 v4, v4, 0x96

    div-int/lit16 v4, v4, 0x1e0

    iput v4, p0, Lcom/rainbow/FMaj/MainView;->tx:I

    .line 154
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/lit16 v4, v4, 0x136

    div-int/lit16 v4, v4, 0x140

    iput v4, p0, Lcom/rainbow/FMaj/MainView;->ty:I

    .line 156
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit16 v4, v4, 0x140

    iput v4, p0, Lcom/rainbow/FMaj/MainView;->nDis:I

    .line 158
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 159
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 160
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 163
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 164
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 165
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 169
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 170
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 171
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 173
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 174
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 175
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 176
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 178
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 179
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 180
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 181
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 183
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 184
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 185
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 186
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 190
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 191
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 194
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 195
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 196
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 198
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 199
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 201
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 203
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 208
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 209
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 210
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 211
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 213
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 214
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 215
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 216
    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 219
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    iget v5, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/rainbow/FMaj/MainView;->myBit:Landroid/graphics/Bitmap;

    .line 220
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->myBit:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v0, "can":Landroid/graphics/Canvas;
    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 222
    .local v2, "dra":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    iget v5, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenWidth:I

    mul-int/lit8 v4, v4, 0x32

    div-int/lit16 v4, v4, 0x1e0

    iput v4, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    .line 226
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->m_nScreenHeight:I

    mul-int/lit8 v4, v4, 0x38

    div-int/lit16 v4, v4, 0x140

    iput v4, p0, Lcom/rainbow/FMaj/MainView;->nTouHeight:I

    .line 227
    iget v4, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    mul-int/lit8 p1, v4, 0x7

    .line 228
    iget p2, p0, Lcom/rainbow/FMaj/MainView;->nTouHeight:I

    .line 229
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/rainbow/FMaj/MainView;->touBit:Landroid/graphics/Bitmap;

    .line 230
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/rainbow/FMaj/MainView;->touBit:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v1, "can2":Landroid/graphics/Canvas;
    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    invoke-virtual {v2, v7, v7, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    return-void
.end method

.method public UpData(I)V
    .locals 6
    .param p1, "nFlag"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "com.rainbow.FMaj"

    .line 112
    if-ne p1, v4, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "my":Landroid/content/Intent;
    const-string v1, "com.rainbow.FMaj"

    const-string v1, "com.rainbow.FMaj.FMaj2"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->myAct:Lcom/rainbow/FMaj/FMaj;

    invoke-virtual {v1, v0}, Lcom/rainbow/FMaj/FMaj;->startActivity(Landroid/content/Intent;)V

    .line 117
    iput-boolean v3, p0, Lcom/rainbow/FMaj/MainView;->bM1:Z

    .line 135
    .end local v0    # "my":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .restart local v0    # "my":Landroid/content/Intent;
    const-string v1, "T1"

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "T2"

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "T3"

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "com.rainbow.FMaj"

    const-string v1, "com.rainbow.FMaj.FMaj3"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->myAct:Lcom/rainbow/FMaj/FMaj;

    invoke-virtual {v1, v0, v4}, Lcom/rainbow/FMaj/FMaj;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    iput-boolean v3, p0, Lcom/rainbow/FMaj/MainView;->bM2:Z

    goto :goto_0

    .line 130
    .end local v0    # "my":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->myAct:Lcom/rainbow/FMaj/FMaj;

    invoke-virtual {v1}, Lcom/rainbow/FMaj/FMaj;->finish()V

    .line 133
    iput-boolean v3, p0, Lcom/rainbow/FMaj/MainView;->bM3:Z

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->myBit:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v7, v7, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 247
    iget-boolean v0, p0, Lcom/rainbow/FMaj/MainView;->bM1:Z

    if-eqz v0, :cond_4

    .line 249
    const-string v0, "\u6b63\u5728\u51c6\u5907\u5e2e\u52a9\uff0c\u8bf7\u7a0d\u5019..."

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->tx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->ty:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 262
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 263
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->nTouHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 264
    iget v0, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    if-eq v0, v6, :cond_1

    .line 266
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 267
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 268
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->touBit:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->nDis:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 271
    :cond_1
    iget v0, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    if-eq v0, v6, :cond_2

    .line 273
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 274
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 275
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->touBit:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->nDis:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_2
    iget v0, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    if-eq v0, v6, :cond_3

    .line 280
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 281
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->nTouWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 282
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->touBit:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    iget-object v0, p0, Lcom/rainbow/FMaj/MainView;->JiaoMoney:[I

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->nDis:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 286
    :cond_3
    return-void

    .line 251
    :cond_4
    iget-boolean v0, p0, Lcom/rainbow/FMaj/MainView;->bM2:Z

    if-eqz v0, :cond_5

    .line 253
    const-string v0, "\u6b63\u5728\u88c5\u5165\u6e38\u620f\uff0c\u8bf7\u7a0d\u5019..."

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->tx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->ty:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 256
    :cond_5
    iget-boolean v0, p0, Lcom/rainbow/FMaj/MainView;->bM3:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "\u6b63\u5728\u9000\u51fa\u6e38\u620f\uff0c\u8bf7\u7a0d\u5019..."

    iget v1, p0, Lcom/rainbow/FMaj/MainView;->tx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rainbow/FMaj/MainView;->ty:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 420
    :goto_0
    return v3

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 297
    .local v1, "xx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 299
    .local v2, "yy":I
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstHelp:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    iput-boolean v5, p0, Lcom/rainbow/FMaj/MainView;->bM1:Z

    .line 302
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    .line 303
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myTimer:Lcom/rainbow/FMaj/MainView$RefreshHandler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->sleep(II)V

    move v3, v5

    .line 304
    goto :goto_0

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstStart:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    if-ne v3, v6, :cond_3

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->dlg:Lcom/rainbow/FMaj/LkyDlg;

    const-string v4, "\u8bf7\u5148\u9009\u62e9\u4e09\u4f4d\u7f8e\u5973\uff01"

    invoke-virtual {v3, v4}, Lcom/rainbow/FMaj/LkyDlg;->Msg(Ljava/lang/String;)V

    move v3, v5

    .line 311
    goto :goto_0

    .line 315
    :cond_3
    iput-boolean v5, p0, Lcom/rainbow/FMaj/MainView;->bM2:Z

    .line 316
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    .line 317
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myTimer:Lcom/rainbow/FMaj/MainView$RefreshHandler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v8}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->sleep(II)V

    move v3, v5

    .line 318
    goto :goto_0

    .line 321
    :cond_4
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstExit:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 323
    iput-boolean v5, p0, Lcom/rainbow/FMaj/MainView;->bM3:Z

    .line 324
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    .line 325
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->myTimer:Lcom/rainbow/FMaj/MainView$RefreshHandler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v9}, Lcom/rainbow/FMaj/MainView$RefreshHandler;->sleep(II)V

    move v3, v5

    .line 326
    goto :goto_0

    .line 329
    :cond_5
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    if-ne v3, v6, :cond_f

    .line 331
    :cond_6
    const/4 v0, -0x1

    .line 333
    .local v0, "nTemp":I
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK1:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aget-boolean v3, v3, v7

    if-nez v3, :cond_8

    .line 335
    const/4 v0, 0x0

    .line 336
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aput-boolean v5, v3, v7

    .line 365
    :cond_7
    :goto_1
    if-eq v0, v6, :cond_f

    .line 367
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    if-ne v3, v6, :cond_d

    .line 369
    iput v0, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    .line 379
    :goto_2
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    move v3, v5

    .line 380
    goto/16 :goto_0

    .line 338
    :cond_8
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK2:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aget-boolean v3, v3, v5

    if-nez v3, :cond_9

    .line 340
    const/4 v0, 0x1

    .line 341
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aput-boolean v5, v3, v5

    goto :goto_1

    .line 343
    :cond_9
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK3:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aget-boolean v3, v3, v8

    if-nez v3, :cond_a

    .line 345
    const/4 v0, 0x2

    .line 346
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aput-boolean v5, v3, v8

    goto :goto_1

    .line 349
    :cond_a
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK4:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aget-boolean v3, v3, v9

    if-nez v3, :cond_b

    .line 351
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    aput-boolean v5, v3, v9

    .line 352
    const/4 v0, 0x3

    goto :goto_1

    .line 354
    :cond_b
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK5:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_c

    .line 356
    const/4 v0, 0x4

    .line 357
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    const/4 v4, 0x4

    aput-boolean v5, v3, v4

    goto :goto_1

    .line 359
    :cond_c
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstK6:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    if-nez v3, :cond_7

    .line 361
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    const/4 v4, 0x5

    aput-boolean v5, v3, v4

    .line 362
    const/4 v0, 0x5

    goto :goto_1

    .line 371
    :cond_d
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    if-ne v3, v6, :cond_e

    .line 373
    iput v0, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    goto :goto_2

    .line 377
    :cond_e
    iput v0, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    goto :goto_2

    .line 384
    .end local v0    # "nTemp":I
    :cond_f
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    if-eq v3, v6, :cond_10

    .line 386
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstT1:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 388
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    iget v4, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    aput-boolean v7, v3, v4

    .line 390
    iput v6, p0, Lcom/rainbow/FMaj/MainView;->mm1:I

    .line 391
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    move v3, v5

    .line 392
    goto/16 :goto_0

    .line 396
    :cond_10
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    if-eq v3, v6, :cond_11

    .line 398
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstT2:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 400
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    iget v4, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    aput-boolean v7, v3, v4

    .line 401
    iput v6, p0, Lcom/rainbow/FMaj/MainView;->mm2:I

    .line 402
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    move v3, v5

    .line 403
    goto/16 :goto_0

    .line 407
    :cond_11
    iget v3, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    if-eq v3, v6, :cond_12

    .line 409
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->rstT3:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 411
    iget-object v3, p0, Lcom/rainbow/FMaj/MainView;->bm:[Z

    iget v4, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    aput-boolean v7, v3, v4

    .line 412
    iput v6, p0, Lcom/rainbow/FMaj/MainView;->mm3:I

    .line 413
    invoke-virtual {p0}, Lcom/rainbow/FMaj/MainView;->invalidate()V

    move v3, v5

    .line 414
    goto/16 :goto_0

    :cond_12
    move v3, v5

    .line 420
    goto/16 :goto_0
.end method
