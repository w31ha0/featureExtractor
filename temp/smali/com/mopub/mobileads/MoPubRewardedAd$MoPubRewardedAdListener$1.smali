.class Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;
.super Ljava/lang/Object;
.source "MoPubRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

.field final synthetic val$this$0:Lcom/mopub/mobileads/MoPubRewardedAd;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;Lcom/mopub/mobileads/MoPubRewardedAd;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->val$this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "Expiring unused Rewarded ad."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 118
    return-void
.end method
