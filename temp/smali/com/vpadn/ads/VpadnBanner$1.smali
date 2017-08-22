.class Lcom/vpadn/ads/VpadnBanner$1;
.super Ljava/lang/Object;
.source "VpadnBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnBanner;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnBanner;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnBanner;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/af;->l()V

    .line 461
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/af;->b()V

    .line 462
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/af;->m()V

    .line 463
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner$1;->a:Lcom/vpadn/ads/VpadnBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpadn/ads/VpadnBanner;->a(Lcom/vpadn/ads/VpadnBanner;Lvpadn/af;)Lvpadn/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "VponBanner"

    const-string v2, "destroy() throws Exception!"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
