.class Lcom/vpadn/widget/VpadnActivity$2;
.super Landroid/os/AsyncTask;
.source "VpadnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->a(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;Z)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    iput-boolean p2, p0, Lcom/vpadn/widget/VpadnActivity$2;->a:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->a:Z

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Z

    move-result v0

    .line 432
    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v2}, Lcom/vpadn/widget/VpadnActivity;->c(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/df;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->c(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity$2;->b:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v2}, Lcom/vpadn/widget/VpadnActivity;->c(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    const-string v0, "VponActivity"

    const-string v1, "SHOW interstitial ad error (StringUtils.isBlank(mHtml) == true || mShowWebView == null) "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/vpadn/widget/VpadnActivity$2;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
