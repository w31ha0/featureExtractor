.class public Lcom/adbert/AdbertLoopADView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/adbert/AdbertADView;

.field private e:Lcom/adbert/ExpandVideoPosition;

.field private f:Lcom/adbert/AdbertOrientation;

.field private g:Z

.field private h:I

.field private i:Lcom/google/android/gms/ads/AdSize;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/adbert/AdbertListener;

.field private m:Landroid/os/Handler;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->h:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->k:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    .line 24
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->n:I

    .line 25
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->o:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->q:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    .line 257
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->b:Z

    .line 49
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->c:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/adbert/AdbertLoopADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->h:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->k:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    .line 24
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->n:I

    .line 25
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->o:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->q:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    .line 257
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->b:Z

    .line 31
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->c:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/adbert/AdbertLoopADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->h:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->k:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    .line 24
    iput v1, p0, Lcom/adbert/AdbertLoopADView;->n:I

    .line 25
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->o:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->q:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    .line 257
    iput-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->b:Z

    .line 40
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->c:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/adbert/AdbertLoopADView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertLoopADView;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/adbert/AdbertLoopADView;->n:I

    return p1
.end method

.method static synthetic a(Lcom/adbert/AdbertLoopADView;)Lcom/adbert/AdbertListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->l:Lcom/adbert/AdbertListener;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/AdbertADView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    .line 58
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertLoopADView;->addView(Landroid/view/View;)V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adbert/a/i;->c:Z

    .line 60
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->e:Lcom/adbert/ExpandVideoPosition;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->e:Lcom/adbert/ExpandVideoPosition;

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setExpandVideo(Lcom/adbert/ExpandVideoPosition;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->f:Lcom/adbert/AdbertOrientation;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->f:Lcom/adbert/AdbertOrientation;

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setMode(Lcom/adbert/AdbertOrientation;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-boolean v1, p0, Lcom/adbert/AdbertLoopADView;->g:Z

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setFullScreen(Z)V

    .line 68
    iget v0, p0, Lcom/adbert/AdbertLoopADView;->h:I

    if-lez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget v1, p0, Lcom/adbert/AdbertLoopADView;->h:I

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setBannerSize(I)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->i:Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->i:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setBannerSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertLoopADView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adbert/AdbertADView;->setNonMediationAPPID(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    new-instance v1, Lcom/adbert/AdbertLoopADView$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertLoopADView$1;-><init>(Lcom/adbert/AdbertLoopADView;)V

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setListener(Lcom/adbert/AdbertListener;)V

    .line 120
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView;->setPageInfo(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertLoopADView;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/adbert/AdbertLoopADView;->p:Z

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->b()V

    .line 168
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->start()V

    .line 175
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->e()V

    .line 176
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertLoopADView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->d()V

    return-void
.end method

.method static synthetic d(Lcom/adbert/AdbertLoopADView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/adbert/AdbertLoopADView;->n:I

    .line 181
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->destroy()V

    .line 182
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertLoopADView;->removeView(Landroid/view/View;)V

    .line 183
    new-instance v0, Lcom/adbert/AdbertADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/AdbertADView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    .line 184
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertLoopADView;->addView(Landroid/view/View;)V

    .line 186
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->c()V

    .line 187
    return-void
.end method

.method static synthetic e(Lcom/adbert/AdbertLoopADView;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/adbert/AdbertLoopADView;->n:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    new-instance v0, Lcom/adbert/AdbertLoopADView$2;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertLoopADView$2;-><init>(Lcom/adbert/AdbertLoopADView;)V

    iput-object v0, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    .line 208
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertLoopADView;->p:Z

    .line 215
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->destroy()V

    .line 217
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideCI()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->hideCI()V

    .line 245
    return-void
.end method

.method public hideView()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->hideView()V

    .line 235
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->pause()V

    .line 223
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->e()V

    .line 228
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->resume()V

    .line 230
    return-void
.end method

.method public setAPPID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->j:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/adbert/AdbertLoopADView;->k:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setBannerSize(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/adbert/AdbertLoopADView;->h:I

    .line 141
    return-void
.end method

.method public setBannerSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->i:Lcom/google/android/gms/ads/AdSize;

    .line 146
    return-void
.end method

.method public setExpandVideo(Lcom/adbert/ExpandVideoPosition;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->e:Lcom/adbert/ExpandVideoPosition;

    .line 126
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/adbert/AdbertLoopADView;->g:Z

    .line 136
    return-void
.end method

.method public setListener(Lcom/adbert/AdbertListener;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->l:Lcom/adbert/AdbertListener;

    .line 156
    return-void
.end method

.method public setMode(Lcom/adbert/AdbertOrientation;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->f:Lcom/adbert/AdbertOrientation;

    .line 131
    return-void
.end method

.method public setPageInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView;->q:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->setTestMode()V

    .line 269
    return-void
.end method

.method public showView()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView;->d:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->showView()V

    .line 240
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/adbert/AdbertLoopADView;->o:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertLoopADView;->o:Z

    .line 162
    invoke-direct {p0}, Lcom/adbert/AdbertLoopADView;->c()V

    .line 164
    :cond_0
    return-void
.end method
