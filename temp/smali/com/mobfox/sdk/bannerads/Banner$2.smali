.class Lcom/mobfox/sdk/bannerads/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/Banner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/Banner;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$2;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$2;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$2;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$2;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "timeout"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 387
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
