.class public Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventInterstitial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final INTERSTITIAL_ACTIVITY_CLASSNAME:Ljava/lang/String; = ".interstitialads.InterstitialActivity"

.field static VIDEO_TIMEOUT:J


# instance fields
.field closed:Z

.field context:Landroid/content/Context;

.field interstitialActivityIntent:Landroid/content/Intent;

.field isCacheable:Z

.field listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

.field protected mMessageReceiver:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

.field mainHandler:Landroid/os/Handler;

.field timeout:Lcom/mobfox/sdk/runnables/Timeout;

.field videoLocalPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->VIDEO_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adResp"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->videoLocalPath:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->isCacheable:Z

    .line 42
    iput-boolean v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->closed:Z

    .line 44
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    invoke-direct {v0, v2, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 53
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    invoke-direct {v0, p0, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mMessageReceiver:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mobfox.sdk.interstitialads.InterstitialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    const-string v1, "adResp"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    const-string v1, "orientation"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mMessageReceiver:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "interstitialEvent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    return-void
.end method


# virtual methods
.method public loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    .line 101
    .local v0, "self":Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    .line 104
    iget-boolean v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->isCacheable:Z

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$2;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->videoLocalPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 118
    new-instance v1, Lcom/mobfox/sdk/runnables/Timeout;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V

    invoke-direct {v1, p1, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 131
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    sget-wide v4, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->VIDEO_TIMEOUT:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;

    invoke-direct {v2, p0, p2, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public notifyDownloaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object v0, p0

    .line 77
    .local v0, "self":Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->setVideoLocalPath(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    if-nez v1, :cond_0

    .line 79
    const-string v1, "MobFoxInterstitial"

    const-string v2, "waiting for loadInterstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Timeout;->isTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "MobFoxInterstitial"

    const-string v2, "polite cache TO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 90
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;

    invoke-direct {v2, p0, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setVideoLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoLocalPath"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->videoLocalPath:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->closed:Z

    .line 146
    iget-boolean v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->isCacheable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    const-string v1, "videoLocalPath"

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->videoLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->interstitialActivityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method
