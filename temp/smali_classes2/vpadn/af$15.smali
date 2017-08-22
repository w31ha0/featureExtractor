.class Lvpadn/af$15;
.super Ljava/util/TimerTask;
.source "VponBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;I)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lvpadn/af$15;->b:Lvpadn/af;

    iput p2, p0, Lvpadn/af$15;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 737
    iget v0, p0, Lvpadn/af$15;->a:I

    iget-object v1, p0, Lvpadn/af$15;->b:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->f(Lvpadn/af;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 738
    const-string v0, "VponBannerController"

    const-string v1, "TIMEOUT FOR LOAD INIT HTML TO BANNER"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lvpadn/af$15;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->g(Lvpadn/af;)I

    .line 741
    iget-object v0, p0, Lvpadn/af$15;->b:Lvpadn/af;

    iget-object v0, v0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$15$1;

    invoke-direct {v1, p0}, Lvpadn/af$15$1;-><init>(Lvpadn/af$15;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 747
    iget-object v0, p0, Lvpadn/af$15;->b:Lvpadn/af;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lvpadn/af;->a(Lvpadn/af;J)V

    .line 751
    :cond_0
    return-void
.end method
