.class public abstract Lcom/mopub/mobileads/CustomEventRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "CustomEventRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract hasVideoAvailable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    return v0
.end method

.method protected show()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->showVideo()V

    .line 48
    return-void
.end method

.method protected abstract showVideo()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
