.class Lvpadn/df$a;
.super Landroid/widget/FrameLayout;
.source "VponAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/df;


# direct methods
.method public constructor <init>(Lvpadn/df;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 557
    iput-object p1, p0, Lvpadn/df$a;->a:Lvpadn/df;

    .line 558
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvpadn/df$a;->setFocusableInTouchMode(Z)V

    .line 561
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 595
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 566
    .line 568
    invoke-virtual {p0}, Lvpadn/df$a;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lvpadn/df$a;->a:Lvpadn/df;

    invoke-virtual {v1}, Lvpadn/df;->h()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lvpadn/df$a;->a:Lvpadn/df;

    .line 571
    invoke-static {v0}, Lvpadn/df;->d(Lvpadn/df;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bannerWebViewExpanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/df$a;->a:Lvpadn/df;

    invoke-static {v0}, Lvpadn/df;->d(Lvpadn/df;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bannerWebViewResized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    iget-object v0, p0, Lvpadn/df$a;->a:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->g()V

    .line 573
    const/4 v0, 0x1

    .line 576
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
