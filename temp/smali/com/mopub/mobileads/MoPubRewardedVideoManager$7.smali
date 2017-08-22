.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;
.super Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p2, "thirdPartyId"    # Ljava/lang/String;

    .prologue
    .line 657
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;->val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 660
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;->val$errorCode:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$700(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 661
    return-void
.end method
