.class public Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PartnerOfflineBroadcastReceiver.java"


# static fields
.field private static final INTENT_EXTRA_PLAYABLE_ID:Ljava/lang/String; = "playableId"

.field private static final INTENT_EXTRA_VIDEO_TYPE:Ljava/lang/String; = "videoType"

.field public static final OFFLINE_START_DOWNLOAD_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.START_DOWNLOAD"

.field public static final OFFLINE_STOP_DOWNLOAD_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.STOP_DOWNLOAD"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on receive intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v0, "playableId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "videoType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->isOfflineFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.STOP_DOWNLOAD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->pauseDownload(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.START_DOWNLOAD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/netflix/mediaclient/service/PartnerOfflineBroadcastReceiver;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method
