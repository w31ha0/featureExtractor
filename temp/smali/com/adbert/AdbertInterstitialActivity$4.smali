.class Lcom/adbert/AdbertInterstitialActivity$4;
.super Lcom/adbert/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {p0}, Lcom/adbert/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public closeVideo()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v0}, Lcom/adbert/AdbertInterstitialActivity;->finish()V

    .line 217
    return-void
.end method

.method public closeWeb()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->e(Lcom/adbert/AdbertInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v0}, Lcom/adbert/AdbertInterstitialActivity;->finish()V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->f(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v1}, Lcom/adbert/AdbertInterstitialActivity;->f(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;Lcom/adbert/b/a;)Lcom/adbert/b/a;

    .line 211
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->g(Lcom/adbert/AdbertInterstitialActivity;)V

    goto :goto_0
.end method

.method public endingCardAction(I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0, p1}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;I)V

    .line 203
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v0}, Lcom/adbert/AdbertInterstitialActivity;->finish()V

    .line 199
    return-void
.end method

.method public setLogo(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->B:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->b(Lcom/adbert/AdbertInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->c(Lcom/adbert/AdbertInterstitialActivity;)F

    move-result v0

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v1}, Lcom/adbert/AdbertInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    float-to-double v2, v0

    sget-wide v4, Lcom/adbert/a/i;->e:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v1, v0, p1, p2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)V

    .line 195
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$4;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->d(Lcom/adbert/AdbertInterstitialActivity;)F

    move-result v0

    goto :goto_0
.end method
