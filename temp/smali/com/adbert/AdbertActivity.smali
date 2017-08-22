.class public Lcom/adbert/AdbertActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Lcom/adbert/a/c/a;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:[Ljava/lang/Object;

.field private j:Lcom/adbert/a/a/a;

.field private k:Lcom/adbert/b/a;

.field private l:Landroid/webkit/WebView;

.field private m:Lcom/adbert/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Lcom/adbert/AdbertActivity;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/adbert/AdbertActivity;->d:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertActivity;->e:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertActivity;->a:Z

    .line 120
    new-instance v0, Lcom/adbert/AdbertActivity$1;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertActivity$1;-><init>(Lcom/adbert/AdbertActivity;)V

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->b:Lcom/adbert/a/c/a;

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertActivity;)Lcom/adbert/a/a/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/AdbertActivity;Lcom/adbert/b/a;)Lcom/adbert/b/a;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v1, 0x1

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 69
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fullScreen"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fullScreen"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/adbert/AdbertActivity;->a:Z

    .line 71
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/adbert/AdbertActivity;->g:F

    .line 72
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/adbert/AdbertActivity;->h:F

    .line 74
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "videoInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/a/a;

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    .line 75
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "datas"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->i:[Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->i:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/AdbertActivity;->e:Z

    .line 77
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->i:[Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/adbert/AdbertActivity;->d:I

    .line 78
    invoke-static {p0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/AdbertActivity;->f:Z

    .line 79
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->f:Z

    iget v2, p0, Lcom/adbert/AdbertActivity;->c:I

    invoke-static {p0, v0, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ZI)I

    move-result v0

    iput v0, p0, Lcom/adbert/AdbertActivity;->c:I

    .line 80
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->f:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v2, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v2}, Lcom/adbert/a/b/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 81
    :cond_1
    iput-boolean v1, p0, Lcom/adbert/AdbertActivity;->a:Z

    .line 82
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "adbertOrientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    sget-object v2, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    invoke-virtual {v2}, Lcom/adbert/AdbertOrientation;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 87
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->f:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adbert/AdbertActivity;->e:Z

    .line 89
    :cond_3
    return-void

    .line 87
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    invoke-virtual {v0, p1}, Lcom/adbert/a/b/i;->b(I)Lcom/adbert/a/b/i;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    iget-boolean v1, v1, Lcom/adbert/a/a/a;->n:Z

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/adbert/a/a/a;->n:Z

    .line 208
    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/AdbertActivity$2;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertActivity$2;-><init>(Lcom/adbert/AdbertActivity;)V

    invoke-static {p0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Lcom/adbert/a/m;->a(Landroid/content/Context;)Lcom/adbert/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/AdbertActivity$3;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertActivity$3;-><init>(Lcom/adbert/AdbertActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/adbert/a/m;->a(Lcom/adbert/a/a/a;ILcom/adbert/a/m$a;)V

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertActivity;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adbert/AdbertActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adbert/AdbertActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->d()V

    .line 111
    new-instance v0, Lcom/adbert/b/a;

    iget-object v1, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    iget-object v2, p0, Lcom/adbert/AdbertActivity;->b:Lcom/adbert/a/c/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/adbert/b/a;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;Lcom/adbert/a/c/a;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/adbert/AdbertActivity;->c:I

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/adbert/b/a;->a(Ljava/lang/String;ZI[Z)Lcom/adbert/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    .line 112
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v1, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertActivity;->setContentView(Landroid/view/View;)V

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/c;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 58
    const-string v2, "action"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 61
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    iget-boolean v3, p0, Lcom/adbert/AdbertActivity;->e:Z

    iget-boolean v2, p0, Lcom/adbert/AdbertActivity;->f:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/adbert/AdbertActivity;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/adbert/AdbertActivity;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adbert/AdbertActivity;->g:F

    return v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 96
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hideCI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lcom/adbert/a/b/e;->d:Lcom/adbert/a/b/e;

    invoke-virtual {v1}, Lcom/adbert/a/b/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adbert/AdbertActivity;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "top"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 103
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "seekTo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    new-instance v3, Lcom/adbert/b/c;

    iget-object v4, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    iget v5, p0, Lcom/adbert/AdbertActivity;->c:I

    iget-object v6, p0, Lcom/adbert/AdbertActivity;->b:Lcom/adbert/a/c/a;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/adbert/b/c;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;ILcom/adbert/a/c/a;)V

    iput-object v3, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    .line 105
    iget-object v3, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    iget-boolean v4, p0, Lcom/adbert/AdbertActivity;->a:Z

    invoke-virtual {v3, v2, v1, v4}, Lcom/adbert/b/c;->a(IZZ)V

    .line 106
    iget-object v1, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 107
    return-void

    .line 100
    :cond_0
    sget-object v1, Lcom/adbert/a/b/e;->b:Lcom/adbert/a/b/e;

    invoke-virtual {v1}, Lcom/adbert/a/b/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/adbert/AdbertActivity;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adbert/AdbertActivity;->h:F

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->b()V

    .line 173
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/adbert/AdbertActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->c()V

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/adbert/AdbertActivity;)Lcom/adbert/b/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 273
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v1, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string v1, "type"

    iget v2, p0, Lcom/adbert/AdbertActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v1, "seekTo"

    iget-object v2, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v2}, Lcom/adbert/b/c;->getSeekTo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v1, "returned"

    iget-object v2, p0, Lcom/adbert/AdbertActivity;->j:Lcom/adbert/a/a/a;

    iget-boolean v2, v2, Lcom/adbert/a/a/a;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    const-string v1, "close"

    invoke-direct {p0, v1, v0}, Lcom/adbert/AdbertActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->finish()V

    .line 281
    return-void
.end method

.method static synthetic g(Lcom/adbert/AdbertActivity;)Lcom/adbert/b/c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/adbert/AdbertActivity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->e()V

    return-void
.end method

.method static synthetic i(Lcom/adbert/AdbertActivity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->f()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 229
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v1, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 243
    :goto_0
    const/4 v0, 0x0

    .line 245
    :goto_1
    return v0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->f()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/c;->removeView(Landroid/view/View;)V

    .line 238
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertActivity;->k:Lcom/adbert/b/a;

    .line 239
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->e()V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->f()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 286
    invoke-virtual {p0, v0, v0}, Lcom/adbert/AdbertActivity;->overridePendingTransition(II)V

    .line 287
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->e:Z

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->f()V

    .line 256
    :goto_0
    iput-boolean v3, p0, Lcom/adbert/AdbertActivity;->e:Z

    .line 257
    iput-boolean v2, p0, Lcom/adbert/AdbertActivity;->f:Z

    .line 267
    :goto_1
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->finish()V

    goto :goto_0

    .line 259
    :cond_1
    iget-boolean v0, p0, Lcom/adbert/AdbertActivity;->e:Z

    if-eqz v0, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->f()V

    .line 264
    :goto_2
    iput-boolean v2, p0, Lcom/adbert/AdbertActivity;->e:Z

    .line 265
    iput-boolean v3, p0, Lcom/adbert/AdbertActivity;->f:Z

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->finish()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->a()V

    .line 44
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v1, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/adbert/AdbertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertActivity;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/adbert/AdbertActivity;->d:I

    sget-object v1, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->c()V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "next"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/adbert/AdbertActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->d()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/adbert/AdbertActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 201
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->d()V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    invoke-direct {p0}, Lcom/adbert/AdbertActivity;->e()V

    .line 191
    return-void
.end method
