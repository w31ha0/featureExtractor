.class public Lcom/adbert/b/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/b/a$c;,
        Lcom/adbert/b/a$a;,
        Lcom/adbert/b/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/adbert/a/c/a;

.field c:Lcom/adbert/a/j;

.field d:Lcom/adbert/b/a$b;

.field e:Lcom/adbert/a/a/a;

.field f:Lcom/adbert/b/e;

.field g:Lcom/adbert/a/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adbert/a/a/a;Lcom/adbert/a/c/a;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    .line 61
    iput-object p3, p0, Lcom/adbert/b/a;->b:Lcom/adbert/a/c/a;

    .line 62
    new-instance v0, Lcom/adbert/a/j;

    invoke-direct {v0, p1}, Lcom/adbert/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/a;->c:Lcom/adbert/a/j;

    .line 63
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 71
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 72
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 73
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 74
    sget-object v0, Lcom/adbert/a/i;->f:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private a(Lcom/adbert/a/b/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 335
    new-instance v0, Lcom/adbert/a/k;

    iget-object v1, p0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/adbert/b/a$3;

    invoke-direct {v2, p0, p2}, Lcom/adbert/b/a$3;-><init>(Lcom/adbert/b/a;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/adbert/a/k;-><init>(Landroid/content/Context;Lcom/adbert/a/b/h;Lcom/adbert/a/k$a;)V

    iput-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    .line 359
    return-void
.end method

.method static synthetic a(Lcom/adbert/b/a;Lcom/adbert/a/b/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/adbert/b/a;->a(Lcom/adbert/a/b/h;Ljava/lang/String;)V

    return-void
.end method

.method private setDelete(I)V
    .locals 6

    .prologue
    .line 169
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p0, v1}, Lcom/adbert/b/a;->addView(Landroid/view/View;)V

    .line 171
    sget-object v0, Lcom/adbert/a/b/f;->a:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    int-to-double v2, p1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 177
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v2, 0x6

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 178
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v2, 0x6

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 179
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    new-instance v0, Lcom/adbert/b/a$2;

    invoke-direct {v0, p0}, Lcom/adbert/b/a$2;-><init>(Lcom/adbert/b/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public a(Lcom/adbert/b/a$b;)Lcom/adbert/b/a;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adbert/b/a;->d:Lcom/adbert/b/a$b;

    .line 67
    return-object p0
.end method

.method public varargs a(Ljava/lang/String;ZI[Z)Lcom/adbert/b/a;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    const/4 v4, 0x1

    .line 83
    iget-object v0, p0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/adbert/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/adbert/b/e;

    iget-object v1, p0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adbert/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    .line 85
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {p0, v0}, Lcom/adbert/b/a;->addView(Landroid/view/View;)V

    .line 86
    if-eqz p2, :cond_3

    .line 87
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0, v5}, Lcom/adbert/b/e;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/adbert/b/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    new-instance v1, Lcom/adbert/b/a$1;

    invoke-direct {v1, p0}, Lcom/adbert/b/a$1;-><init>(Lcom/adbert/b/a;)V

    invoke-virtual {v0, v1}, Lcom/adbert/b/e;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 107
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0}, Lcom/adbert/b/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 108
    array-length v1, p4

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 110
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 112
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    new-instance v2, Lcom/adbert/b/a$a;

    invoke-direct {v2, p0}, Lcom/adbert/b/a$a;-><init>(Lcom/adbert/b/a;)V

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lcom/adbert/b/e;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 116
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 119
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 121
    iget-object v1, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    new-instance v2, Lcom/adbert/b/a$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adbert/b/a$c;-><init>(Lcom/adbert/b/a;Lcom/adbert/b/a$1;)V

    invoke-virtual {v1, v2}, Lcom/adbert/b/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    iget-object v1, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Lcom/adbert/b/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 124
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0, p1}, Lcom/adbert/b/e;->loadUrl(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0, v4}, Lcom/adbert/b/e;->setInitialScale(I)V

    .line 128
    if-lez p3, :cond_2

    .line 129
    invoke-direct {p0, p3}, Lcom/adbert/b/a;->setDelete(I)V

    .line 155
    :cond_2
    return-object p0

    .line 91
    :cond_3
    sget-object v0, Lcom/adbert/a/b/e;->a:Lcom/adbert/a/b/e;

    invoke-virtual {v0}, Lcom/adbert/a/b/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adbert/b/a;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0}, Lcom/adbert/b/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/a;->c:Lcom/adbert/a/j;

    invoke-virtual {v1, v6, v7}, Lcom/adbert/a/j;->a(D)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0}, Lcom/adbert/b/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/a;->c:Lcom/adbert/a/j;

    iget-object v2, p0, Lcom/adbert/b/a;->c:Lcom/adbert/a/j;

    invoke-virtual {v2, v6, v7}, Lcom/adbert/a/j;->a(D)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v8, v3}, Lcom/adbert/a/j;->a(III)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0}, Lcom/adbert/b/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    iget-object v0, p0, Lcom/adbert/b/a;->b:Lcom/adbert/a/c/a;

    invoke-virtual {v0, p0, v4}, Lcom/adbert/a/c/a;->setLogo(Landroid/view/ViewGroup;Z)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    invoke-virtual {v0}, Lcom/adbert/a/k;->b()V

    .line 364
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0}, Lcom/adbert/b/e;->clearView()V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    invoke-virtual {v0, p1}, Lcom/adbert/b/e;->loadUrl(Ljava/lang/String;)V

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/adbert/b/e;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    invoke-virtual {v0}, Lcom/adbert/a/k;->a()V

    .line 369
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    invoke-virtual {v0}, Lcom/adbert/a/k;->b()V

    .line 374
    :cond_0
    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/adbert/b/a;->f:Lcom/adbert/b/e;

    return-object v0
.end method
