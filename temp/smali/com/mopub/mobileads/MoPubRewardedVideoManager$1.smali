.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method
