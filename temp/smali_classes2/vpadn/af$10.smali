.class Lvpadn/af$10;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lvpadn/af$10;->b:Lvpadn/af;

    iput-object p2, p0, Lvpadn/af$10;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "VponBannerController"

    const-string v1, "doLoadBannerFail"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lvpadn/af$10;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lvpadn/af$10;->b:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->m()V

    .line 182
    iget-object v0, p0, Lvpadn/af$10;->b:Lvpadn/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/af;->a(Lvpadn/af;Z)Z

    .line 183
    iget-object v0, p0, Lvpadn/af$10;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/af$10;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/af$10;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO_FILL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lvpadn/af$10;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lvpadn/af$10;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method
