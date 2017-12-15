.class public Lcom/tapjoy/TapjoyFeaturedAppWebView;
.super Landroid/app/Activity;
.source "TapjoyFeaturedAppWebView.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->e:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->f:Ljava/lang/String;

    .line 26
    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->g:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 3

    .prologue
    .line 16
    const-string v0, "Featured App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing offers (userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "USER_ID"

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/tapjoy/i;

    invoke-direct {v0, p0}, Lcom/tapjoy/i;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    .line 77
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string v1, "USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->e:Ljava/lang/String;

    .line 36
    const-string v1, "CLIENT_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    .line 37
    const-string v1, "URL_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->f:Ljava/lang/String;

    .line 38
    const-string v1, "FULLSCREEN_AD_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tapjoy_featured_app_web_view"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "FeaturedAppWebView"

    const-string v2, "id"

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    .line 48
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tapjoy/q;

    invoke-direct {v1, p0}, Lcom/tapjoy/q;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "FeaturedAppProgressBar"

    const-string v2, "id"

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->b:Landroid/widget/ProgressBar;

    .line 55
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    const-string v0, "Featured App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening Full Screen AD URL = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
