.class Lvpadn/ah$4;
.super Landroid/os/AsyncTask;
.source "VponInterstitialAdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 812
    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    iget-object v0, v0, Lvpadn/ah;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->f(Lvpadn/ah;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->g(Lvpadn/ah;)Lvpadn/df;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->g(Lvpadn/ah;)Lvpadn/df;

    move-result-object v0

    iget-object v2, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v2}, Lvpadn/ah;->f(Lvpadn/ah;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 817
    :cond_1
    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->g(Lvpadn/ah;)Lvpadn/df;

    move-result-object v0

    if-nez v0, :cond_2

    .line 818
    const-string v0, "VponInterstitialAdController"

    const-string v1, "load interstitial ad to webview error-->mShowWebView == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_2
    iget-object v0, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->f(Lvpadn/ah;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 821
    const-string v0, "VponInterstitialAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load interstitial ad to webview error-->StringUtils.isBlank(mHtml) == false mHtml:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/ah$4;->a:Lvpadn/ah;

    invoke-static {v2}, Lvpadn/ah;->f(Lvpadn/ah;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lvpadn/ah$4;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
