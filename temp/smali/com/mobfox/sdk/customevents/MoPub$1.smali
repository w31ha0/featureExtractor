.class Lcom/mobfox/sdk/customevents/MoPub$1;
.super Ljava/lang/Object;
.source "MoPub.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/customevents/MoPub;->loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/customevents/MoPub;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/customevents/MoPub;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/customevents/MoPub;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iput-object p2, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerClicked(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> collapsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerClosed(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> expanded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 50
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->this$0:Lcom/mobfox/sdk/customevents/MoPub;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 44
    return-void
.end method
