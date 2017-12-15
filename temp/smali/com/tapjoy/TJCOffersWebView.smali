.class public Lcom/tapjoy/TJCOffersWebView;
.super Landroid/app/Activity;
.source "TJCOffersWebView.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/app/Dialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    .line 24
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->d:Landroid/app/Dialog;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->g:Ljava/lang/String;

    .line 33
    const-string v0, "Offers"

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->h:Ljava/lang/String;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCOffersWebView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/TJCOffersWebView;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/TJCOffersWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/TJCOffersWebView;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->d:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "URL_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    .line 45
    const-string v1, "CLIENT_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    .line 46
    const-string v1, "USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->g:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    .line 51
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlParams: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientPackage: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ws.tapjoyads.com/get_offers/webpage?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0, v4}, Lcom/tapjoy/TJCOffersWebView;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tapjoy_offers_web_view"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCOffersWebView;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "offersWebView"

    const-string v2, "id"

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCOffersWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    .line 70
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tapjoy/n;

    invoke-direct {v1, p0}, Lcom/tapjoy/n;-><init>(Lcom/tapjoy/TJCOffersWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "OfferProgressBar"

    const-string v2, "id"

    iget-object v3, p0, Lcom/tapjoy/TJCOffersWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCOffersWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->c:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening URL = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 56
    :cond_0
    const-string v0, "Offers"

    const-string v1, "Tapjoy offers meta data initialization fail."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
