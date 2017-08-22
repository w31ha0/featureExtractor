.class public Lcom/adbert/AdbertInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/AdbertInterstitialActivity$a;
    }
.end annotation


# instance fields
.field public final a:I

.field b:Lcom/adbert/b/a$b;

.field c:Lcom/adbert/a/c/a;

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/webkit/WebView;

.field private l:Lcom/adbert/a/a/a;

.field private m:Lcom/adbert/b/c;

.field private n:Lcom/adbert/b/b;

.field private o:Lcom/adbert/b/a;

.field private p:Lcom/adbert/b/a;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final t:I

.field private final u:I

.field private v:Landroid/net/Uri;

.field private w:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Lcom/adbert/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/16 v0, 0x32

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->q:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->r:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->t:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->u:I

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->a:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->v:Landroid/net/Uri;

    .line 177
    new-instance v0, Lcom/adbert/AdbertInterstitialActivity$3;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertInterstitialActivity$3;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->b:Lcom/adbert/b/a$b;

    .line 188
    new-instance v0, Lcom/adbert/AdbertInterstitialActivity$4;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertInterstitialActivity$4;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->c:Lcom/adbert/a/c/a;

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity;->w:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/a/a/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;Lcom/adbert/b/a;)Lcom/adbert/b/a;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 78
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/adbert/AdbertInterstitialActivity;->d:F

    .line 79
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/adbert/AdbertInterstitialActivity;->e:F

    .line 80
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->f:F

    .line 82
    invoke-static {p0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->g:Z

    .line 83
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->g:Z

    iget v1, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    invoke-static {p0, v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;ZI)I

    move-result v0

    iput v0, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    .line 85
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jsonStr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "jsonStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :try_start_0
    new-instance v1, Lcom/adbert/a/a/a;

    invoke-direct {v1}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    .line 89
    new-instance v1, Lcom/adbert/AdbertInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialActivity$1;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    invoke-static {p0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V

    .line 95
    new-instance v1, Lcom/adbert/a/d;

    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/adbert/AdbertInterstitialActivity;->g:Z

    invoke-direct {v1, v2, v3}, Lcom/adbert/a/d;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v0}, Lcom/adbert/a/d;->a(Ljava/lang/String;)Lcom/adbert/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/d;->a()Lcom/adbert/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    .line 96
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->b()V

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->n:Z

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 105
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    new-instance v1, Lcom/adbert/AdbertInterstitialActivity$2;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialActivity$2;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    invoke-static {p0, v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    :goto_1
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 100
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->e:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 118
    :cond_4
    const-string v0, "!jsonStr"

    invoke-static {v0}, Lcom/adbert/a/i;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    invoke-virtual {v1, p1}, Lcom/adbert/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V

    .line 223
    invoke-static {p0}, Lcom/adbert/a/m;->a(Landroid/content/Context;)Lcom/adbert/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/AdbertInterstitialActivity$5;

    invoke-direct {v2, p0}, Lcom/adbert/AdbertInterstitialActivity$5;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/adbert/a/m;->a(Lcom/adbert/a/a/a;ILcom/adbert/a/m$a;)V

    .line 229
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 322
    invoke-static {p0, p1}, Lcom/adbert/a/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/adbert/a/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v1}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/adbert/b/i;

    invoke-direct {v0, p0}, Lcom/adbert/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->y:Lcom/adbert/b/i;

    .line 172
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->y:Lcom/adbert/b/i;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->y:Lcom/adbert/b/i;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adbert/b/i;->loadUrl(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adbert/AdbertInterstitialActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/AdbertInterstitialActivity;ZI)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/adbert/AdbertInterstitialActivity;->a(ZI)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->e()V

    .line 157
    new-instance v0, Lcom/adbert/b/a;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->c:Lcom/adbert/a/c/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/adbert/b/a;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;Lcom/adbert/a/c/a;)V

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->b:Lcom/adbert/b/a$b;

    invoke-virtual {v0, v1}, Lcom/adbert/b/a;->a(Lcom/adbert/b/a$b;)Lcom/adbert/b/a;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    const/4 v3, 0x0

    new-array v3, v3, [Z

    .line 158
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/adbert/b/a;->a(Ljava/lang/String;ZI[Z)Lcom/adbert/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    .line 159
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/b;->addView(Landroid/view/View;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    .line 165
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/c;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 4

    .prologue
    .line 331
    if-eqz p1, :cond_1

    const-string v0, "android.permission.CAMERA"

    .line 332
    invoke-static {p0, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 333
    invoke-static {p0, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "browser-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->v:Landroid/net/Uri;

    .line 341
    const-string v1, "output"

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->v:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0, p2}, Lcom/adbert/AdbertInterstitialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0, p2}, Lcom/adbert/AdbertInterstitialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->i:Z

    .line 124
    new-instance v0, Lcom/adbert/b/b;

    iget-boolean v2, p0, Lcom/adbert/AdbertInterstitialActivity;->g:Z

    iget-object v3, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget v4, p0, Lcom/adbert/AdbertInterstitialActivity;->d:F

    iget v5, p0, Lcom/adbert/AdbertInterstitialActivity;->e:F

    iget v6, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    iget-object v7, p0, Lcom/adbert/AdbertInterstitialActivity;->c:Lcom/adbert/a/c/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/adbert/b/b;-><init>(Landroid/content/Context;ZLcom/adbert/a/a/a;FFILcom/adbert/a/c/a;)V

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    .line 126
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 127
    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->a(Landroid/view/ViewGroup;)V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertInterstitialActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adbert/AdbertInterstitialActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/adbert/AdbertInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/adbert/AdbertInterstitialActivity;)F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/adbert/AdbertInterstitialActivity;->d:F

    return v0
.end method

.method static synthetic c(Lcom/adbert/AdbertInterstitialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->h:Z

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hideCI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hideCI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :goto_0
    new-instance v1, Lcom/adbert/b/c;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget v3, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    iget-object v4, p0, Lcom/adbert/AdbertInterstitialActivity;->c:Lcom/adbert/a/c/a;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adbert/b/c;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;ILcom/adbert/a/c/a;)V

    iput-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    .line 138
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v1, v0}, Lcom/adbert/b/c;->a(Z)V

    .line 141
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 142
    sget-boolean v0, Lcom/adbert/a/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-direct {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->a(Landroid/view/ViewGroup;)V

    .line 145
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/adbert/AdbertInterstitialActivity;)F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/adbert/AdbertInterstitialActivity;->e:F

    return v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 148
    iput-boolean v6, p0, Lcom/adbert/AdbertInterstitialActivity;->q:Z

    .line 149
    new-instance v0, Lcom/adbert/b/a;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->c:Lcom/adbert/a/c/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/adbert/b/a;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;Lcom/adbert/a/c/a;)V

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->b:Lcom/adbert/b/a$b;

    invoke-virtual {v0, v1}, Lcom/adbert/b/a;->a(Lcom/adbert/b/a$b;)Lcom/adbert/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-boolean v2, v2, Lcom/adbert/a/a/a;->A:Z

    iget v3, p0, Lcom/adbert/AdbertInterstitialActivity;->j:I

    new-array v4, v6, [Z

    const/4 v5, 0x0

    aput-boolean v6, v4, v5

    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adbert/b/a;->a(Ljava/lang/String;ZI[Z)Lcom/adbert/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    .line 151
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/adbert/AdbertInterstitialActivity$a;

    invoke-direct {v1, p0}, Lcom/adbert/AdbertInterstitialActivity$a;-><init>(Lcom/adbert/AdbertInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 152
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->b()V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->a()V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->a()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/adbert/AdbertInterstitialActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->q:Z

    return v0
.end method

.method static synthetic f(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/b/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->c()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->b()V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->b()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/adbert/AdbertInterstitialActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->f()V

    return-void
.end method

.method static synthetic h(Lcom/adbert/AdbertInterstitialActivity;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->w:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic i(Lcom/adbert/AdbertInterstitialActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->x:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 249
    :goto_0
    const/4 v0, 0x0

    .line 251
    :goto_1
    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/b;->removeView(Landroid/view/View;)V

    .line 242
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    .line 243
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->f()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0, v1}, Lcom/adbert/b/c;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->finish()V

    goto :goto_0

    .line 251
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 444
    invoke-virtual {p0, v0, v0}, Lcom/adbert/AdbertInterstitialActivity;->overridePendingTransition(II)V

    .line 445
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    .line 446
    :goto_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 448
    const-string v2, "action"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 450
    return-void

    .line 445
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v0, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 261
    if-ne p1, v0, :cond_5

    .line 262
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->w:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_2

    .line 263
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    if-ne p2, v2, :cond_a

    .line 269
    if-nez p3, :cond_4

    .line 271
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 272
    new-array v0, v3, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v4

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->w:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 282
    iput-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->w:Landroid/webkit/ValueCallback;

    .line 318
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_a

    .line 277
    new-array v0, v3, [Landroid/net/Uri;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    .line 283
    :cond_5
    if-ne p1, v3, :cond_8

    .line 284
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->s:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 289
    if-eq p2, v2, :cond_6

    move-object v0, v1

    .line 300
    :goto_3
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->s:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 301
    iput-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->s:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 292
    :cond_6
    if-eqz p3, :cond_7

    .line 293
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adbert/a/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->v:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_3

    .line 302
    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 305
    if-ne p2, v2, :cond_3

    .line 308
    if-eqz p3, :cond_9

    .line 309
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 312
    :goto_4
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adbert/AdbertInterstitialActivity;->a(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 314
    :catch_1
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 311
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->v:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->finish()V

    .line 258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adbert/AdbertInterstitialActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 71
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->a()V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 487
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/adbert/AdbertInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity;->l:Lcom/adbert/a/a/a;

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v2}, Lcom/adbert/b/c;->getSeekTo()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;I)V

    .line 489
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->m:Lcom/adbert/b/c;

    invoke-virtual {v0}, Lcom/adbert/b/c;->d()V

    .line 491
    :cond_0
    iget-boolean v0, p0, Lcom/adbert/AdbertInterstitialActivity;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->n:Lcom/adbert/b/b;

    invoke-virtual {v0}, Lcom/adbert/b/b;->a()V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->c()V

    .line 499
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->p:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    if-eqz v0, :cond_4

    .line 502
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->o:Lcom/adbert/b/a;

    invoke-virtual {v0}, Lcom/adbert/b/a;->c()V

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->y:Lcom/adbert/b/i;

    if-eqz v0, :cond_5

    .line 505
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity;->y:Lcom/adbert/b/i;

    invoke-virtual {v0}, Lcom/adbert/b/i;->destroy()V

    .line 507
    :cond_5
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 454
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 455
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->e()V

    .line 456
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 471
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialActivity;->f()V

    .line 472
    return-void
.end method
