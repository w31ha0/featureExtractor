.class public Lvpadn/f;
.super Landroid/webkit/WebView;
.source "CordovaWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/f$b;,
        Lvpadn/f$a;
    }
.end annotation


# static fields
.field static final i:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field public a:Lvpadn/v;

.field b:Lvpadn/g;

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field f:Lvpadn/n;

.field g:Lc/ExposedJsApi;

.field h:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lvpadn/q;

.field private n:Lvpadn/d;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Landroid/view/View;

.field private v:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private w:Lvpadn/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lvpadn/f;->i:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/f;->j:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/f;->k:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/f;->d:Z

    .line 88
    iput v2, p0, Lvpadn/f;->e:I

    .line 92
    iput-boolean v2, p0, Lvpadn/f;->r:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvpadn/f;->s:J

    .line 101
    iput-boolean v2, p0, Lvpadn/f;->h:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/f;->w:Lvpadn/f$a;

    .line 139
    const-class v0, Lvpadn/q;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Lvpadn/q;

    iput-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    .line 148
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lvpadn/f;->k()V

    .line 154
    :goto_1
    invoke-direct {p0}, Lvpadn/f;->i()V

    .line 155
    return-void

    .line 145
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "CordovaWebView"

    const-string v1, "CordovaWebView don\'t have to call loadConfiguration method, because context instanceof Context"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lvpadn/q;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/f;->j:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/f;->k:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/f;->d:Z

    .line 88
    iput v2, p0, Lvpadn/f;->e:I

    .line 92
    iput-boolean v2, p0, Lvpadn/f;->r:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvpadn/f;->s:J

    .line 101
    iput-boolean v2, p0, Lvpadn/f;->h:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/f;->w:Lvpadn/f$a;

    .line 159
    const-class v0, Lvpadn/q;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 161
    check-cast v0, Lvpadn/q;

    iput-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    .line 169
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lvpadn/f;->k()V

    .line 175
    :goto_1
    invoke-direct {p0}, Lvpadn/f;->i()V

    .line 176
    return-void

    .line 165
    :cond_0
    iput-object p2, p0, Lvpadn/f;->m:Lvpadn/q;

    .line 166
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "CordovaWebView"

    const-string v1, "CordovaWebView don\'t call loadConfiguration method, because context instanceof Context"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lvpadn/f;)Lvpadn/q;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    return-object v0
.end method

.method static synthetic b(Lvpadn/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvpadn/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lvpadn/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvpadn/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 282
    invoke-virtual {p0, v7}, Lvpadn/f;->setInitialScale(I)V

    .line 283
    invoke-virtual {p0, v7}, Lvpadn/f;->setVerticalScrollBarEnabled(Z)V

    .line 288
    invoke-virtual {p0}, Lvpadn/f;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 290
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 291
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 295
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "setNavDump"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 298
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 312
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 313
    invoke-static {v1}, Lvpadn/f$b;->a(Landroid/webkit/WebSettings;)V

    .line 315
    :cond_1
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 316
    const-string v0, "/data/user/0/com.sdk/app_database"

    .line 317
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_1
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 330
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 334
    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 335
    const-string v0, "/data/user/0/com.sdk/app_database"

    .line 336
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_2
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 367
    new-instance v0, Lvpadn/v;

    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-direct {v0, p0, v1}, Lvpadn/v;-><init>(Lvpadn/f;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    .line 368
    new-instance v0, Lvpadn/n;

    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-direct {v0, p0, v1}, Lvpadn/n;-><init>(Lvpadn/f;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/f;->f:Lvpadn/n;

    .line 369
    new-instance v0, Lc/ExposedJsApi;

    iget-object v1, p0, Lvpadn/f;->a:Lvpadn/v;

    iget-object v2, p0, Lvpadn/f;->f:Lvpadn/n;

    invoke-direct {v0, v1, v2}, Lc/ExposedJsApi;-><init>(Lvpadn/v;Lvpadn/n;)V

    iput-object v0, p0, Lvpadn/f;->g:Lc/ExposedJsApi;

    .line 370
    invoke-direct {p0}, Lvpadn/f;->j()V

    .line 371
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v0, "CordovaWebView"

    const-string v2, "We are on a modern version of Android, we will deprecate HTC 2.3 devices in 2.8"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    const-string v0, "CordovaWebView"

    const-string v2, "Doing the NavDump failed with bad arguments"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    const-string v0, "CordovaWebView"

    const-string v2, "This should never happen: IllegalAccessException means this isn\'t Android anymore"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    :catch_3
    move-exception v0

    .line 307
    const-string v0, "CordovaWebView"

    const-string v2, "This should never happen: InvocationTargetException means this isn\'t Android anymore."

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_2
    const-string v0, "CordovaWebView"

    const-string v2, "cordova.getActivity() = null when obtaining databasePath in setup() method."

    invoke-static {v0, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 339
    :cond_3
    const-string v0, "CordovaWebView"

    const-string v2, "this.cordova.getActivity() = null when obtaining pathToCache in setup() method."

    invoke-static {v0, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private j()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 384
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 385
    if-lt v1, v2, :cond_1

    const/16 v0, 0xd

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    .line 386
    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 387
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Disabled addJavascriptInterface() bridge since Android version is old."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_2
    if-ge v1, v2, :cond_3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    const-string v0, "CordovaWebView"

    const-string v1, "Disabled addJavascriptInterface() bridge callback due to a bug on the 2.3 emulator"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    :cond_3
    iget-object v0, p0, Lvpadn/f;->g:Lc/ExposedJsApi;

    const-string v1, "_cordovaNative"

    invoke-virtual {p0, v0, v1}, Lvpadn/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 853
    const-string v0, "false"

    const-string v1, "useBrowserHistory"

    const-string v2, "true"

    invoke-virtual {p0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/f;->d:Z

    .line 857
    const-string v0, "CordovaWebView"

    const-string v1, "useBrowserHistory=false is deprecated as of Cordova 2.2.0 and will be removed six months after the 2.2.0 release.  Please use the browser history and use history.back()."

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    const-string v0, "true"

    const-string v1, "fullscreen"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 862
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 864
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 731
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 733
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 875
    :try_start_0
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 876
    if-nez v0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-object p2

    .line 879
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    const-string v1, "CordovaWebView"

    const-string v2, "getProperty method throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lvpadn/f;->g:Lc/ExposedJsApi;

    const-string v2, "VponSdk"

    invoke-virtual {v1, v2, p1, p2, p3}, Lc/ExposedJsApi;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1215
    :goto_0
    return-object v0

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    const-string v2, "VPON"

    const-string v3, "testVponCordovaPlugin throws Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 1137
    const-string v0, "CordovaWebView"

    const-string v1, "showing Custom View"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v0, p0, Lvpadn/f;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1140
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    :try_start_0
    iput-object p1, p0, Lvpadn/f;->u:Landroid/view/View;

    .line 1146
    iput-object p2, p0, Lvpadn/f;->v:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1149
    invoke-virtual {p0}, Lvpadn/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1150
    if-eqz v0, :cond_2

    .line 1151
    sget-object v1, Lvpadn/f;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lvpadn/f;->setVisibility(I)V

    .line 1157
    if-eqz v0, :cond_0

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1159
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1163
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 475
    const-string v0, "CordovaWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> loadUrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iput-object p1, p0, Lvpadn/f;->o:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 479
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 480
    if-lez v0, :cond_3

    .line 481
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    .line 491
    :goto_0
    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    const-string v1, "http://tw.adon.vpon.com/xpon/activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "http://tw.adon.vpon.com/xpon/"

    iput-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    .line 495
    :cond_0
    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    const-string v1, "http://cn.adon.vpon.com/xpon/activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "http://cn.adon.vpon.com/xpon/"

    iput-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    .line 499
    :cond_1
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0}, Lvpadn/v;->a()V

    .line 501
    iget-boolean v0, p0, Lvpadn/f;->d:Z

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_2
    iget v4, p0, Lvpadn/f;->e:I

    .line 509
    const-string v0, "loadUrlTimeoutValue"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    new-instance v5, Lvpadn/f$1;

    invoke-direct {v5, p0, p0, p1}, Lvpadn/f$1;-><init>(Lvpadn/f;Lvpadn/f;Ljava/lang/String;)V

    .line 523
    new-instance v0, Lvpadn/f$2;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lvpadn/f$2;-><init>(Lvpadn/f;ILvpadn/f;ILjava/lang/Runnable;)V

    .line 541
    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lvpadn/f$3;

    invoke-direct {v2, p0, v0, p0, p1}, Lvpadn/f$3;-><init>(Lvpadn/f;Ljava/lang/Runnable;Lvpadn/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    return-void

    .line 484
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvpadn/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0, p1, p2}, Lvpadn/v;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 995
    const-string v0, "volumeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 996
    iget-object v0, p0, Lvpadn/f;->j:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const-string v0, "volumedown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lvpadn/f;->j:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    const-string v0, "CordovaWebView"

    const-string v1, "showWebPage(%s, %b, %b, HashMap"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    if-eqz p3, :cond_0

    .line 801
    invoke-virtual {p0}, Lvpadn/f;->clearHistory()V

    .line 805
    :cond_0
    if-nez p2, :cond_4

    .line 808
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lvpadn/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    :cond_1
    if-eqz p3, :cond_2

    .line 813
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 817
    :cond_2
    invoke-virtual {p0, p1}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 842
    :goto_0
    return-void

    .line 821
    :cond_3
    const-string v0, "CordovaWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWebPage: Cannot load URL into webview since it is not in white list.  Loading into browser instead. (URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 825
    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    const-string v1, "CordovaWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 835
    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 837
    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 838
    :catch_1
    move-exception v0

    .line 839
    const-string v1, "CordovaWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public a(Lvpadn/w;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lvpadn/f;->f:Lvpadn/n;

    invoke-virtual {v0, p1, p2}, Lvpadn/n;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 990
    iput-boolean p1, p0, Lvpadn/f;->q:Z

    .line 991
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 1042
    const-string v0, "javascript:try{cordova.fireDocumentEvent(\'resume\');}catch(e){console.log(\'exception firing resume event from native\');};"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0, p1}, Lvpadn/v;->b(Z)V

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lvpadn/f;->resumeTimers()V

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/f;->l:Z

    .line 1052
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 634
    :try_start_0
    invoke-virtual {p0}, Lvpadn/f;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 635
    if-nez v0, :cond_0

    .line 636
    const-string v0, "CordovaWebView"

    const-string v1, "this.getSettings() == null ??"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lvpadn/f;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    const-string v1, "CordovaWebView"

    const-string v2, "loadDataWithBaseURLNow throw Exception "

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 1021
    const-string v0, "CordovaWebView"

    const-string v1, "Handle the pause"

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v0, "javascript:try{cordova.fireDocumentEvent(\'pause\');}catch(e){console.log(\'exception firing pause event from native\');};"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0, p1}, Lvpadn/v;->a(Z)V

    .line 1031
    :cond_0
    if-nez p1, :cond_1

    .line 1033
    invoke-virtual {p0}, Lvpadn/f;->pauseTimers()V

    .line 1035
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/f;->l:Z

    .line 1037
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 754
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/f;->d:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lvpadn/f;->e()V

    .line 756
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    .line 768
    :goto_0
    return v0

    .line 761
    :cond_0
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lvpadn/f;->d:Z

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 765
    goto :goto_0

    .line 768
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 654
    const/4 v0, 0x3

    invoke-static {v0}, Lvpadn/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const-string v0, "CordovaWebView"

    const-string v1, ">>> loadUrlNow()"

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 664
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lvpadn/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lvpadn/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lvpadn/f;->q:Z

    return v0
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 777
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lvpadn/f;->d:Z

    if-eqz v1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    iget-object v1, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 783
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1062
    const-string v0, "javascript:try{cordova.require(\'cordova/channel\').onDestroy.fire();}catch(e){console.log(\'exception firing destroy event from native\');};"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 1064
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0}, Lvpadn/v;->e()V

    .line 1080
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lvpadn/f;->f:Lvpadn/n;

    invoke-virtual {v0, p1}, Lvpadn/n;->a(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public e()V
    .locals 7

    .prologue
    .line 1109
    invoke-virtual {p0}, Lvpadn/f;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 1111
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1113
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    .line 1114
    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1115
    const-string v4, "CordovaWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The URL at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    return-void
.end method

.method public f()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1123
    invoke-virtual {p0}, Lvpadn/f;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1124
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 1125
    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-virtual {p0}, Lvpadn/f;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1128
    const-string v2, "CordovaWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current URL is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v2, "CordovaWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The URL at item 0 is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1132
    :cond_0
    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1168
    const-string v0, "CordovaWebView"

    const-string v1, "Hidding Custom View"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lvpadn/f;->u:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lvpadn/f;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    invoke-virtual {p0}, Lvpadn/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1176
    iget-object v1, p0, Lvpadn/f;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1177
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/f;->u:Landroid/view/View;

    .line 1178
    iget-object v0, p0, Lvpadn/f;->v:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvpadn/f;->setVisibility(I)V

    goto :goto_0
.end method

.method public getWebChromeClient()Lvpadn/d;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lvpadn/f;->n:Lvpadn/d;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lvpadn/f;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/f;->h:Z

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/f;->o:Ljava/lang/String;

    .line 558
    iput-object p1, p0, Lvpadn/f;->c:Ljava/lang/String;

    .line 559
    iput-object p2, p0, Lvpadn/f;->t:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v0}, Lvpadn/v;->a()V

    .line 565
    iget v4, p0, Lvpadn/f;->e:I

    .line 567
    const/16 v2, 0x4e20

    .line 568
    iget-object v0, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "loadUrlTimeoutValue"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 576
    :goto_0
    new-instance v5, Lvpadn/f$4;

    invoke-direct {v5, p0, p0}, Lvpadn/f$4;-><init>(Lvpadn/f;Lvpadn/f;)V

    .line 593
    new-instance v0, Lvpadn/f$5;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lvpadn/f$5;-><init>(Lvpadn/f;ILvpadn/f;ILjava/lang/Runnable;)V

    .line 611
    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lvpadn/f$6;

    invoke-direct {v2, p0, v0, p0}, Lvpadn/f$6;-><init>(Lvpadn/f;Ljava/lang/Runnable;Lvpadn/f;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 628
    :goto_1
    return-void

    .line 571
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "cordova.getActivity() = null when setting timeoutValueTemp in loadDataWithBaseURL(...) method."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_1
    const-string v0, "CordovaWebView"

    const-string v1, "cordova.getActivity() = null when executing timeoutCheck in loadDataWithBaseURL(...) method."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lvpadn/f;->m:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lvpadn/f$7;

    invoke-direct {v1, p0, p0}, Lvpadn/f$7;-><init>(Lvpadn/f;Lvpadn/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lvpadn/f;->c(Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_2

    iget-object v1, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 440
    :cond_2
    invoke-virtual {p0, p1}, Lvpadn/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {p0, v0}, Lvpadn/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 896
    iget-object v2, p0, Lvpadn/f;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 898
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 900
    const-string v0, "CordovaWebView"

    const-string v2, "Down Key Hit"

    invoke-static {v0, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "javascript:cordova.fireDocumentEvent(\'volumedownbutton\');"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 926
    :goto_0
    return v1

    .line 905
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 906
    const-string v0, "CordovaWebView"

    const-string v2, "Up Key Hit"

    invoke-static {v0, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v0, "javascript:cordova.fireDocumentEvent(\'volumeupbutton\');"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 915
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 920
    iget-boolean v2, p0, Lvpadn/f;->d:Z

    if-eqz v2, :cond_5

    .line 921
    invoke-virtual {p0}, Lvpadn/f;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lvpadn/f;->q:Z

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 923
    :cond_5
    iget-object v2, p0, Lvpadn/f;->p:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-gt v2, v1, :cond_6

    iget-boolean v2, p0, Lvpadn/f;->q:Z

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    move v1, v0

    goto :goto_0

    .line 926
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 934
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 936
    iget-object v1, p0, Lvpadn/f;->u:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 937
    invoke-virtual {p0}, Lvpadn/f;->g()V

    .line 984
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 941
    :cond_2
    iget-boolean v1, p0, Lvpadn/f;->q:Z

    if-eqz v1, :cond_3

    .line 942
    const-string v1, "javascript:cordova.fireDocumentEvent(\'backbutton\');"

    invoke-virtual {p0, v1}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_3
    invoke-virtual {p0}, Lvpadn/f;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_4
    const/16 v1, 0x52

    if-ne p1, v1, :cond_6

    .line 966
    iget-wide v0, p0, Lvpadn/f;->s:J

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 967
    const-string v0, "javascript:cordova.fireDocumentEvent(\'menubutton\');"

    invoke-virtual {p0, v0}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    .line 969
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lvpadn/f;->s:J

    .line 970
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 973
    :cond_6
    const/16 v1, 0x54

    if-ne p1, v1, :cond_7

    .line 974
    const-string v1, "javascript:cordova.fireDocumentEvent(\'searchbutton\');"

    invoke-virtual {p0, v1}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :cond_7
    iget-object v0, p0, Lvpadn/f;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3

    .prologue
    .line 1196
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1197
    const-string v1, "CordovaWebView"

    const-string v2, "WebView restoration crew now restoring!"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v1, p0, Lvpadn/f;->a:Lvpadn/v;

    invoke-virtual {v1}, Lvpadn/v;->a()V

    .line 1200
    return-object v0
.end method

.method public setWebChromeClient(Lvpadn/d;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lvpadn/f;->n:Lvpadn/d;

    .line 417
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 418
    return-void
.end method

.method public setWebViewClient(Lvpadn/g;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lvpadn/f;->b:Lvpadn/g;

    .line 407
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 408
    return-void
.end method
