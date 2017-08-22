.class public Lvpadn/df;
.super Lvpadn/f;
.source "VponAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/df$a;,
        Lvpadn/df$c;,
        Lvpadn/df$b;
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lvpadn/at;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p2}, Lvpadn/f;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lvpadn/df;->j:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/df;->n:Z

    .line 38
    iput-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lvpadn/df;->p:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/df;->r:Z

    .line 44
    iput-object v1, p0, Lvpadn/df;->s:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lvpadn/df;->j:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lvpadn/df;->k:Lvpadn/at;

    .line 78
    iput-object p2, p0, Lvpadn/df;->o:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lvpadn/df;->i()V

    .line 81
    new-instance v1, Lvpadn/df$c;

    move-object v0, p2

    check-cast v0, Lvpadn/q;

    invoke-direct {v1, p0, v0, p0}, Lvpadn/df$c;-><init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V

    invoke-virtual {p0, v1}, Lvpadn/df;->setWebViewClient(Lvpadn/g;)V

    .line 82
    new-instance v0, Lvpadn/df$b;

    check-cast p2, Lvpadn/q;

    invoke-direct {v0, p0, p2, p0}, Lvpadn/df$b;-><init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V

    invoke-virtual {p0, v0}, Lvpadn/df;->setWebChromeClient(Lvpadn/d;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p2, p4}, Lvpadn/f;-><init>(Landroid/content/Context;Lvpadn/q;)V

    .line 33
    iput-object v1, p0, Lvpadn/df;->j:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/df;->n:Z

    .line 38
    iput-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lvpadn/df;->p:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/df;->r:Z

    .line 44
    iput-object v1, p0, Lvpadn/df;->s:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lvpadn/df;->j:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lvpadn/df;->k:Lvpadn/at;

    .line 55
    iput-object p2, p0, Lvpadn/df;->o:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lvpadn/df;->i()V

    .line 58
    new-instance v0, Lvpadn/df$c;

    invoke-direct {v0, p0, p4, p0}, Lvpadn/df$c;-><init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V

    invoke-virtual {p0, v0}, Lvpadn/df;->setWebViewClient(Lvpadn/g;)V

    .line 59
    new-instance v0, Lvpadn/df$b;

    invoke-direct {v0, p0, p4, p0}, Lvpadn/df$b;-><init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V

    invoke-virtual {p0, v0}, Lvpadn/df;->setWebChromeClient(Lvpadn/d;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lvpadn/df;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lvpadn/df;->n:Z

    return v0
.end method

.method static synthetic b(Lvpadn/df;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lvpadn/df;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lvpadn/df;)Lvpadn/at;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    return-object v0
.end method

.method static synthetic d(Lvpadn/df;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 95
    invoke-virtual {p0}, Lvpadn/df;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 100
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 102
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 104
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 105
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 109
    :cond_1
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 110
    const-wide/32 v2, 0x800000

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 115
    iget-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 116
    iget-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 122
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 123
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 124
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 126
    :cond_2
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 127
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 129
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 130
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Mobile; vpadn-sdk-a-v4.6.5)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Mobile; vpadn-sdk-a-v4.6.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/df;->p:Ljava/lang/String;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 136
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 143
    :cond_3
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0, v5}, Lvpadn/df;->setFocusable(Z)V

    .line 146
    :cond_4
    return-void

    .line 119
    :cond_5
    const-string v1, "VponAdWebView"

    const-string v2, "mActivity.getApplicationContext().getCacheDir().getAbsolutePath() has NPE"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 604
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 605
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewExpanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewResized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    :cond_0
    new-instance v0, Lvpadn/df$a;

    iget-object v1, p0, Lvpadn/df;->o:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lvpadn/df$a;-><init>(Lvpadn/df;Landroid/content/Context;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 608
    invoke-super {p0, v0, p2}, Lvpadn/f;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 609
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 613
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 614
    invoke-virtual {p0}, Lvpadn/df;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 616
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lvpadn/df;->q:I

    .line 617
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 619
    :cond_1
    return-void

    .line 611
    :cond_2
    invoke-super {p0, p1, p2}, Lvpadn/f;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 654
    invoke-super {p0, p1, p2}, Lvpadn/f;->a(ZZ)V

    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lvpadn/df;->onResume()V

    .line 658
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 645
    invoke-super {p0, p1}, Lvpadn/f;->b(Z)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lvpadn/df;->onPause()V

    .line 649
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 627
    const-string v0, "VponAdWebView"

    const-string v1, "enter hideCustomView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 629
    invoke-virtual {p0}, Lvpadn/df;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 631
    if-eqz v0, :cond_0

    .line 632
    iget v1, p0, Lvpadn/df;->q:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 635
    :cond_0
    invoke-super {p0}, Lvpadn/f;->g()V

    .line 636
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewExpanded"

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewResized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    :cond_1
    invoke-virtual {p0}, Lvpadn/df;->requestFocus()Z

    .line 640
    :cond_2
    return-void
.end method

.method public getNativeAdUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lvpadn/df;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getVponUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lvpadn/df;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getVponWebViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    return-object v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 178
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :cond_0
    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "nativeAdHiddenWebview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    :cond_1
    const-string v0, "<head>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><script type=\'text/javascript\' charset=\'utf-8\' src=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    const-string v3, "mraid2_banner"

    invoke-virtual {v2, v3}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 222
    invoke-super/range {v0 .. v5}, Lvpadn/f;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "SdkOpenWebApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string v0, "<head>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><script type=\'text/javascript\' charset=\'utf-8\' src=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    const-string v3, "mraid2_expanded"

    invoke-virtual {v2, v3}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "InterstitialAdWebViewCache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    :cond_4
    const-string v0, "<head>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><script type=\'text/javascript\' charset=\'utf-8\' src=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    const-string v3, "mraid2_intersitial"

    invoke-virtual {v2, v3}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_0

    :cond_5
    move-object v2, p2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 662
    const-string v0, "VponAdWebView"

    const-string v1, "------->onKeyUp"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewExpanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/df;->j:Ljava/lang/String;

    const-string v1, "bannerWebViewResized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 665
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    invoke-interface {v0}, Lvpadn/at;->onExpandModePressBackKey()V

    .line 668
    :cond_1
    const/4 v0, 0x1

    .line 670
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lvpadn/f;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 401
    iget-object v0, p0, Lvpadn/df;->o:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lvpadn/df;->o:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 407
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 411
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 412
    aput v2, v1, v2

    .line 413
    aput v2, v1, v3

    .line 414
    invoke-virtual {p0, v1}, Lvpadn/df;->getLocationOnScreen([I)V

    .line 416
    aget v2, v1, v2

    .line 417
    aget v1, v1, v3

    .line 418
    sub-int v0, v1, v0

    .line 420
    sub-int v1, p4, p2

    .line 421
    sub-int v3, p5, p3

    .line 423
    add-int/2addr v1, v2

    .line 424
    add-int/2addr v3, v0

    .line 427
    iget-object v4, p0, Lvpadn/df;->k:Lvpadn/at;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 428
    iget-object v4, p0, Lvpadn/df;->k:Lvpadn/at;

    invoke-interface {v4, v2, v0, v1, v3}, Lvpadn/at;->onWebViewLayoutChanged(IIII)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v0, "VponAdWebView"

    const-string v1, "Call onLayout(...), mActivity instanceof Activity return false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 464
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 466
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 467
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 471
    iget v5, p0, Lvpadn/df;->l:I

    .line 472
    iget v6, p0, Lvpadn/df;->m:I

    .line 475
    if-eq v2, v7, :cond_0

    if-ne v2, v8, :cond_5

    :cond_0
    move v2, v3

    .line 480
    :goto_0
    if-eq v4, v7, :cond_1

    if-ne v4, v8, :cond_2

    :cond_1
    move v0, v1

    .line 484
    :cond_2
    if-gt v5, v2, :cond_3

    if-le v6, v0, :cond_4

    .line 485
    :cond_3
    const-string v0, "vpon ad display"

    const-string v2, "Not enough space for ad"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lvpadn/df;->setVisibility(I)V

    .line 488
    invoke-virtual {p0, v3, v1}, Lvpadn/df;->setMeasuredDimension(II)V

    .line 494
    :goto_1
    invoke-super {p0, p1, p2}, Lvpadn/f;->onMeasure(II)V

    .line 495
    return-void

    .line 491
    :cond_4
    invoke-virtual {p0, v5, v6}, Lvpadn/df;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Lvpadn/f;->onSizeChanged(IIII)V

    .line 455
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    invoke-interface {v0, p1, p2}, Lvpadn/at;->onWebViewSizeChanged(II)V

    .line 458
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 385
    const-string v0, "VponAdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    if-eqz v0, :cond_0

    .line 387
    if-nez p1, :cond_1

    .line 388
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    invoke-interface {v0}, Lvpadn/at;->onWebViewChangeToVisible()V

    .line 393
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lvpadn/f;->onWindowVisibilityChanged(I)V

    .line 394
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lvpadn/df;->k:Lvpadn/at;

    invoke-interface {v0}, Lvpadn/at;->onWebViewChangeToInvisible()V

    goto :goto_0
.end method

.method public setAcceptThirdPartyCookiesEnable(Z)V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 88
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public setNativeAdUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lvpadn/df;->s:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVponWebViewId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lvpadn/df;->j:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setWebViewJsAlertShow(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lvpadn/df;->n:Z

    .line 159
    return-void
.end method
