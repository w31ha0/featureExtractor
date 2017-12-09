.class public final Lcom/wooboo/adlib_android/ImpressionAdView;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static a:Lcom/wooboo/adlib_android/ImpressionAdView;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/content/Context;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Landroid/view/View;

.field private static h:I

.field private static i:Ljava/util/Timer;

.field private static j:Landroid/widget/ImageButton;

.field private static k:Landroid/os/Handler;

.field private static l:Landroid/widget/RelativeLayout;

.field private static m:Landroid/graphics/Bitmap;

.field private static n:D

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    sput-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    .line 27
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    .line 28
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    .line 32
    sput-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/os/Handler;

    .line 36
    sput-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    .line 65
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    .line 66
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 351
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 363
    return-void
.end method

.method static synthetic a()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 192
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->j()V

    return-void
.end method

.method static synthetic a(Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->j:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private static a(Z)V
    .locals 7

    .prologue
    .line 168
    sget-object v6, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    monitor-enter v6

    .line 169
    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-lez v0, :cond_1

    .line 170
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 172
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    new-instance v1, Lcom/wooboo/adlib_android/ImpressionAdView$3;

    invoke-direct {v1}, Lcom/wooboo/adlib_android/ImpressionAdView$3;-><init>()V

    .line 180
    sget v2, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    int-to-long v2, v2

    sget v4, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    int-to-long v4, v4

    .line 172
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 168
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 182
    :cond_1
    if-eqz p0, :cond_2

    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-nez v0, :cond_0

    .line 183
    :cond_2
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Lcom/wooboo/adlib_android/ImpressionAdView;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 306
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/os/Handler;

    new-instance v1, Lcom/wooboo/adlib_android/ImpressionAdView$1;

    invoke-direct {v1}, Lcom/wooboo/adlib_android/ImpressionAdView$1;-><init>()V

    .line 316
    const-wide/16 v2, 0x1f40

    .line 307
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->dismiss()V

    .line 320
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 322
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    sput-object v4, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    goto :goto_0
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->j:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected static getAdHeight()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->p:I

    return v0
.end method

.method protected static getAdWidth()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->o:I

    return v0
.end method

.method protected static getBtnHeight()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    return v0
.end method

.method protected static getBtnWidth()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    return v0
.end method

.method protected static getDen()D
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    return-wide v0
.end method

.method protected static getTextColor()I
    .locals 1

    .prologue
    .line 302
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->f:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 333
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 341
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    return v0
.end method

.method private static j()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    .line 196
    :cond_0
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView$2;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2;-><init>()V

    .line 273
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2;->start()V

    .line 275
    return-void
.end method

.method protected static setAdHeight(I)V
    .locals 0

    .prologue
    .line 54
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->p:I

    .line 55
    return-void
.end method

.method protected static setAdWidth(I)V
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->o:I

    .line 47
    return-void
.end method

.method protected static setBtnHeight(I)V
    .locals 0

    .prologue
    .line 81
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    .line 82
    return-void
.end method

.method protected static setBtnWidth(I)V
    .locals 0

    .prologue
    .line 73
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    .line 74
    return-void
.end method

.method protected static setDen(D)V
    .locals 0

    .prologue
    .line 62
    sput-wide p0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    .line 63
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;IIIZI)V
    .locals 8

    .prologue
    .line 114
    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 115
    invoke-static/range {v0 .. v7}, Lcom/wooboo/adlib_android/ImpressionAdView;->show(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;IIIZI)V

    .line 117
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;IIIZI)V
    .locals 6

    .prologue
    const/16 v4, 0x258

    const/16 v3, 0x14

    const/4 v2, 0x0

    const-string v5, "AdView.setRequestInterval("

    .line 87
    if-nez p2, :cond_0

    .line 89
    const-string v0, "The parent view that you add is null,please check whether the parent view is initialized or is a real view."

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->d(Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setDen(D)V

    .line 96
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/ImpressionAdView;-><init>(Landroid/content/Context;)V

    .line 97
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 98
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAnimationStyle(I)V

    .line 99
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    .line 100
    sput p3, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    .line 101
    sput p4, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    .line 102
    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->c(Landroid/content/Context;)V

    .line 103
    invoke-static {p6}, Lcom/wooboo/adlib_android/d;->a(Z)V

    .line 104
    const/high16 v0, -0x1000000

    or-int/2addr v0, p5

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->f:I

    .line 105
    sput-object p2, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    .line 106
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->j()V

    .line 107
    if-gtz p7, :cond_2

    move v0, v2

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-nez v0, :cond_5

    invoke-static {v2}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    .line 108
    :goto_1
    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->a(I)V

    :try_start_0
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "wooboo_btn.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    sget-object v2, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setBtnWidth(I)V

    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    sget-object v2, Lcom/wooboo/adlib_android/ImpressionAdView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setBtnHeight(I)V

    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAdHeight(I)V

    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:D

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAdWidth(I)V

    invoke-static {}, Lcom/wooboo/adlib_android/d;->a()V

    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wooboo/adlib_android/e;->a(Landroid/content/Context;)Lcom/wooboo/adlib_android/e;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->b(I)V

    .line 109
    return-void

    .line 107
    :cond_2
    if-ge p7, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdView.setRequestInterval("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    move v0, p7

    goto/16 :goto_0

    :cond_3
    if-le p7, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdView.setRequestInterval("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    :cond_4
    move v0, p7

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 278
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    .line 279
    return-void
.end method
