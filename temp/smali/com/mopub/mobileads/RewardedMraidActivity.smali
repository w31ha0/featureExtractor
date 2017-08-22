.class public Lcom/mopub/mobileads/RewardedMraidActivity;
.super Lcom/mopub/mobileads/MraidActivity;
.source "RewardedMraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/RewardedMraidActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object v0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "broadcastIdentifier"    # J
    .param p5, "rewardedDuration"    # I
    .param p6, "shouldRewardOnClick"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const-string v1, "Rewarded-Ad-Duration"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "Should-Reward-On-Click"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adreport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "broadcastIdentifier"    # J
    .param p5, "rewardedDuration"    # I
    .param p6, "shouldRewardOnClick"    # Z

    .prologue
    .line 40
    invoke-static/range {p0 .. p6}, Lcom/mopub/mobileads/RewardedMraidActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {p0, v1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "exception":Lcom/mopub/exceptions/IntentNotResolvableException;
    const-string v2, "RewardedMraidActivity"

    const-string v3, "RewardedMraidActivity.class not found. Did you declare RewardedMraidActivity in your manifest?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 10

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 66
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "htmlData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "RewardedMraidActivity received a null HTML body. Finishing the activity."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 70
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, "RewardedMraidActivity received a null broadcast id. Finishing the activity."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 74
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v1, "Rewarded-Ad-Duration"

    const/16 v2, 0x1e

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, "rewardedDurationInSeconds":I
    const-string v1, "Should-Reward-On-Click"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 82
    .local v9, "shouldRewardOnClick":Z
    new-instance v1, Lcom/mopub/mraid/RewardedMraidController;

    iget-object v3, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mAdReport:Lcom/mopub/common/AdReport;

    sget-object v4, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 84
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mraid/RewardedMraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;IJ)V

    iput-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    .line 86
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 87
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    new-instance v2, Lcom/mopub/mobileads/RewardedMraidActivity$1;

    invoke-direct {v2, p0, v9}, Lcom/mopub/mobileads/RewardedMraidActivity$1;-><init>(Lcom/mopub/mobileads/RewardedMraidActivity;Z)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/RewardedMraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 123
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v1, v0}, Lcom/mopub/mraid/RewardedMraidController;->loadContent(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v1}, Lcom/mopub/mraid/RewardedMraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public getRewardedMraidController()Lcom/mopub/mraid/RewardedMraidController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onBackPressed()V

    .line 166
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MraidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getCloseableLayout()Lcom/mopub/common/CloseableLayout;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/mopub/mraid/RewardedMraidController;->create(Landroid/content/Context;Lcom/mopub/common/CloseableLayout;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->destroy()V

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->pause()V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->resume()V

    .line 150
    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1, "debugListener"    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 174
    :cond_0
    return-void
.end method
