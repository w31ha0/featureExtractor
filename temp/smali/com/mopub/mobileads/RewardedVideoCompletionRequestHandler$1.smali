.class Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;
.super Ljava/lang/Object;
.source "RewardedVideoCompletionRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;->this$0:Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;->this$0:Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest()V

    .line 99
    return-void
.end method
