.class Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
.super Landroid/util/Pair;
.source "RewardedAdData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/RewardedAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoPartKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Lcom/mopub/mobileads/CustomEventRewardedAd;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final adNetworkId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final customEventClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedAd;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->customEventClass:Ljava/lang/Class;

    .line 328
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->adNetworkId:Ljava/lang/String;

    .line 329
    return-void
.end method
