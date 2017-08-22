.class public Lcom/adbert/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/a/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static d:Z

.field public static e:D

.field public static f:Ljava/net/CookieManager;

.field static g:Ljava/lang/String;

.field static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "3.1.0n"

    sput-object v0, Lcom/adbert/a/i;->a:Ljava/lang/String;

    .line 43
    const-string v0, "1"

    sput-object v0, Lcom/adbert/a/i;->b:Ljava/lang/String;

    .line 44
    const-string v0, "Adbert"

    sput-object v0, Lcom/adbert/a/i;->i:Ljava/lang/String;

    .line 45
    const-string v0, "Adbert_interstitial"

    sput-object v0, Lcom/adbert/a/i;->j:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adbert/a/i;->c:Z

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adbert/a/i;->d:Z

    .line 50
    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    sput-wide v0, Lcom/adbert/a/i;->e:D

    .line 199
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/adbert/a/i;->f:Ljava/net/CookieManager;

    .line 347
    const-string v0, ""

    sput-object v0, Lcom/adbert/a/i;->g:Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adbert/a/i;->h:Ljava/util/Map;

    return-void
.end method

.method public static a(FII)I
    .locals 2

    .prologue
    .line 465
    int-to-float v0, p1

    div-float v0, p0, v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 602
    .line 603
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 604
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 605
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 606
    if-nez v0, :cond_0

    .line 609
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 611
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 614
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZI)I
    .locals 2

    .prologue
    .line 340
    new-instance v1, Lcom/adbert/a/j;

    invoke-direct {v1, p0}, Lcom/adbert/a/j;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v1}, Lcom/adbert/a/j;->a()I

    move-result v0

    int-to-float v0, v0

    .line 342
    invoke-virtual {v1}, Lcom/adbert/a/j;->b()I

    move-result v1

    int-to-float v1, v1

    .line 343
    if-eqz p1, :cond_0

    .line 344
    :goto_0
    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    .line 343
    goto :goto_0
.end method

.method private static a(Lcom/adbert/a/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 383
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    invoke-virtual {v0}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_1
    return-object v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    invoke-virtual {v0}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 321
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 323
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 326
    new-instance v0, Lcom/adbert/a/n;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Lcom/adbert/a/n;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 328
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 329
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/adbert/b/f;

    invoke-direct {v0, p0, p1}, Lcom/adbert/b/f;-><init>(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/adbert/b/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adbert/a/a/a;)V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adbert/a/a/a;I)V
    .locals 6

    .prologue
    .line 412
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    iget-object v4, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 203
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    iget-object v4, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    new-instance v2, Lcom/adbert/a/i$1;

    invoke-direct {v2, p2}, Lcom/adbert/a/i$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->r:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 221
    invoke-static {p1}, Lcom/adbert/a/i;->a(Lcom/adbert/a/a/a;)Ljava/lang/String;

    move-result-object v6

    .line 222
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    iget-object v5, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/adbert/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adbert/a/i$a;)V
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/adbert/a/i;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Lcom/adbert/a/i;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/adbert/a/i$a;->onResult(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adbert/a/i$3;

    invoke-direct {v1, p0, p1}, Lcom/adbert/a/i$3;-><init>(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    sget-object v0, Lcom/adbert/a/i;->h:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/adbert/a/i;->a:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    if-nez v2, :cond_0

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    :goto_0
    return v0

    .line 553
    :cond_0
    invoke-static {p1}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 558
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 559
    if-eqz v2, :cond_2

    .line 560
    if-eqz v0, :cond_3

    .line 561
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 565
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 566
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    .line 563
    :cond_3
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    move v0, v1

    .line 570
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 544
    invoke-static {p1, p2}, Lcom/adbert/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p0, p3}, Lcom/adbert/a/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 94
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 95
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p0, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_1
    return v1

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 514
    sget-object v0, Lcom/adbert/a/i;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 515
    sget-object v0, Lcom/adbert/a/i;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 517
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "/ADBERT/"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    new-instance v1, Ljava/io/File;

    const-string v3, "/video/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 526
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 527
    const/4 v3, 0x0

    const-string v4, "/"

    .line 528
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 527
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-static {p0, v0}, Lcom/adbert/a/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 522
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v3, "/others/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 235
    iget-object v0, p1, Lcom/adbert/a/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-static {p1}, Lcom/adbert/a/i;->a(Lcom/adbert/a/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 237
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    new-instance v2, Lcom/adbert/a/i$2;

    invoke-direct {v2, p2}, Lcom/adbert/a/i$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->v:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 229
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    iget-object v4, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 579
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 580
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ADBERT/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 476
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 477
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "/"

    .line 478
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 477
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 479
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ADBERT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    :cond_1
    return-object p1
.end method

.method public static c(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 389
    invoke-static {p1}, Lcom/adbert/a/i;->a(Lcom/adbert/a/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 390
    new-instance v0, Lcom/adbert/a/h;

    invoke-direct {v0, p0}, Lcom/adbert/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adbert/a/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adbert/a/b;->a(Landroid/content/Context;)Lcom/adbert/a/c;

    move-result-object v1

    new-instance v2, Lcom/adbert/a/i$4;

    invoke-direct {v2, p2}, Lcom/adbert/a/i$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/adbert/a/a/a;->v:Ljava/lang/String;

    .line 407
    invoke-virtual {v1, v2, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/adbert/a/i;->i:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    :try_start_0
    const-string v0, "connectivity"

    .line 421
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 422
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 426
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    move v0, v1

    .line 429
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lcom/adbert/a/i;->k:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 496
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/adbert/a/i;->k:Landroid/telephony/TelephonyManager;

    .line 497
    :cond_0
    sget-object v0, Lcom/adbert/a/i;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 584
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 586
    const/4 v2, 0x5

    const/4 v3, -0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 587
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/adbert/a/i;->i:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/adbert/a/i;->j:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/adbert/a/i;->j:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 591
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 592
    const/4 v0, 0x0

    .line 594
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    .line 595
    :catch_0
    move-exception v1

    .line 596
    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
