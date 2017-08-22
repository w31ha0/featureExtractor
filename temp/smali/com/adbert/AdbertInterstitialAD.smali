.class public Lcom/adbert/AdbertInterstitialAD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Landroid/content/BroadcastReceiver;

.field e:Lcom/google/android/gms/ads/InterstitialAd;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/adbert/AdbertListener;

.field private k:F

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->h:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->i:Ljava/lang/String;

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->m:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    .line 40
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->o:Z

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->p:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->q:Z

    .line 71
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->a:Z

    .line 113
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->b:Z

    .line 123
    iput-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->c:Z

    .line 129
    new-instance v1, Lcom/adbert/AdbertInterstitialAD$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialAD$1;-><init>(Lcom/adbert/AdbertInterstitialAD;)V

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->d:Landroid/content/BroadcastReceiver;

    .line 307
    const-string v1, ""

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->r:Ljava/lang/String;

    .line 78
    sget-object v1, Lcom/adbert/a/b/d;->g:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adbert/a/i;->f(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    .line 82
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/adbert/AdbertInterstitialAD;->k:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adbert/AdbertInterstitialAD;->l:Z

    .line 101
    invoke-static {p1}, Lcom/adbert/a/i;->a(Landroid/content/Context;)V

    .line 102
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 89
    :try_start_1
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 90
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 92
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_0

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 95
    :cond_0
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/adbert/AdbertInterstitialAD;->k:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialAD;)Lcom/adbert/AdbertListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->j:Lcom/adbert/AdbertListener;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 9

    .prologue
    .line 193
    new-instance v0, Lcom/adbert/a/h;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    .line 194
    const-string v1, ""

    .line 195
    iget-boolean v2, p0, Lcom/adbert/AdbertInterstitialAD;->q:Z

    if-eqz v2, :cond_0

    const-string v1, "&testMode=1"

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adbert/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/adbert/AdbertInterstitialAD;->i:Ljava/lang/String;

    sget-object v4, Lcom/adbert/a/b/d;->s:Lcom/adbert/a/b/d;

    .line 198
    invoke-virtual {v4}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/adbert/AdbertInterstitialAD;->l:Z

    iget-object v6, p0, Lcom/adbert/AdbertInterstitialAD;->p:Ljava/lang/String;

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 204
    invoke-static {}, Lcom/adbert/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialAD;->b()V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_1
    if-ne p1, v1, :cond_3

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lcom/adbert/a/b/g;->q:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, p2}, Lcom/adbert/AdbertInterstitialAD;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialAD;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/adbert/AdbertInterstitialAD;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {p1}, Lcom/adbert/a/i;->e(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->j:Lcom/adbert/AdbertListener;

    invoke-virtual {v0, p1}, Lcom/adbert/AdbertListener;->onFailedReceive(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v0

    new-instance v1, Lcom/adbert/AdbertInterstitialAD$4;

    invoke-direct {v1, p0, p1}, Lcom/adbert/AdbertInterstitialAD$4;-><init>(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p1}, Lcom/adbert/a/c;->b(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 393
    if-eqz p1, :cond_0

    .line 394
    new-instance v0, Lcom/adbert/AdbertInterstitialAD$5;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertInterstitialAD$5;-><init>(Lcom/adbert/AdbertInterstitialAD;)V

    .line 406
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adbert/a/c;->a(I)Lcom/adbert/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/adbert/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 425
    :cond_0
    new-instance v0, Lcom/adbert/AdbertInterstitialAD$6;

    invoke-direct {v0, p0, p3}, Lcom/adbert/AdbertInterstitialAD$6;-><init>(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    iget-object v3, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/adbert/a/c;->a(I)Lcom/adbert/a/c;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/adbert/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adbert/a/c;->a(I)Lcom/adbert/a/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adbert/a/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialAD;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    return p1
.end method

.method private varargs a([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 248
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    :goto_1
    return v1

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/adbert/AdbertInterstitialAD;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    .line 229
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    sget-object v1, Lcom/adbert/a/b/d;->ag:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 232
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/adbert/AdbertInterstitialAD$3;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialAD$3;-><init>(Lcom/adbert/AdbertInterstitialAD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 244
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adbert/AdbertInterstitialAD;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    invoke-static {p1}, Lcom/adbert/a/i;->f(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->j:Lcom/adbert/AdbertListener;

    invoke-virtual {v0, p1}, Lcom/adbert/AdbertListener;->onReceive(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method static synthetic c(Lcom/adbert/AdbertInterstitialAD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialAD;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 310
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD;->m:Ljava/lang/String;

    .line 312
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    sget-object v2, Lcom/adbert/a/b/c;->h:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->r:Ljava/lang/String;

    .line 314
    sget-object v2, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    .line 315
    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    sget-object v2, Lcom/adbert/a/b/g;->i:Lcom/adbert/a/b/g;

    invoke-virtual {v2}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    .line 319
    :cond_1
    const-string v2, "adServing"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    const-string v0, "adServing"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 322
    :cond_2
    sget-object v2, Lcom/adbert/a/b/c;->I:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/adbert/a/b/c;->I:Lcom/adbert/a/b/c;

    .line 323
    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/adbert/a/b/c;->I:Lcom/adbert/a/b/c;

    .line 324
    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    .line 326
    sget-object v0, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->b(Ljava/lang/String;)V

    .line 368
    :cond_3
    :goto_0
    return-void

    .line 327
    :cond_4
    sget-object v2, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    .line 328
    invoke-virtual {v3}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 329
    sget-object v2, Lcom/adbert/a/b/c;->J:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    sget-object v3, Lcom/adbert/a/b/c;->K:Lcom/adbert/a/b/c;

    invoke-virtual {v3}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    if-eqz v0, :cond_5

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    .line 333
    sget-object v0, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    invoke-virtual {v2}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 335
    invoke-static {v2}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    .line 337
    sget-object v0, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_6
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD;->k:F

    float-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 341
    :cond_7
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->l:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    .line 344
    sget-object v0, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_8
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD;->k:F

    float-to-int v0, v0

    invoke-direct {p0, v1, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 349
    :cond_9
    sget-object v0, Lcom/adbert/a/b/g;->m:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_a
    sget-object v2, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    invoke-virtual {v3}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    invoke-static {}, Lcom/adbert/a/i;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 353
    sget-object v0, Lcom/adbert/a/b/g;->n:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_b
    sget-object v2, Lcom/adbert/a/b/c;->L:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    sget-object v3, Lcom/adbert/a/b/c;->B:Lcom/adbert/a/b/c;

    invoke-virtual {v3}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {p0, v3}, Lcom/adbert/AdbertInterstitialAD;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 358
    invoke-direct {p0, v0, v2, v1}, Lcom/adbert/AdbertInterstitialAD;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_c
    sget-object v0, Lcom/adbert/a/b/g;->m:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/adbert/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hideCI()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->a:Z

    .line 75
    return-void
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    sget-object v0, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    sget-object v0, Lcom/adbert/a/b/g;->a:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adbert/a/i;->f(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    new-instance v1, Lcom/adbert/AdbertInterstitialAD$2;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialAD$2;-><init>(Lcom/adbert/AdbertInterstitialAD;)V

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    goto :goto_0
.end method

.method public setAPPID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->g:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->h:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setListener(Lcom/adbert/AdbertListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD;->j:Lcom/adbert/AdbertListener;

    .line 106
    return-void
.end method

.method public setMediationAPPID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->b:Z

    .line 117
    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    const-string/jumbo v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->g:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->h:Ljava/lang/String;

    .line 121
    :cond_0
    return-void
.end method

.method public setPageInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD;->p:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTestMode()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->q:Z

    .line 46
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->n:Z

    if-eqz v0, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialAD;->c:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "jsonStr"

    iget-object v3, p0, Lcom/adbert/AdbertInterstitialAD;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "hideCI"

    iget-boolean v3, p0, Lcom/adbert/AdbertInterstitialAD;->a:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adbert/AdbertInterstitialAD;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    :cond_2
    sget-object v0, Lcom/adbert/a/b/g;->p:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
