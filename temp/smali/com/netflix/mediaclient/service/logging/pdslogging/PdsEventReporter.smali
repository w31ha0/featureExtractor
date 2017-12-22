.class public Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;
.super Ljava/lang/Object;
.source "PdsEventReporter.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;


# instance fields
.field private mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

.field private mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mMainHandler:Landroid/os/Handler;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method private registerWithOfflineAgent()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$1;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method private unregisterWithOfflineAgent()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter$2;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public createPdsOfflinePlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;
    .locals 10

    .prologue
    .line 82
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 83
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getUserSessionId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 82
    return-object v0
.end method

.method public createPdsStreamingPlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lorg/json/JSONObject;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;
    .locals 14

    .prologue
    .line 87
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 88
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getUserSessionId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p7

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;-><init>(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;)V

    .line 87
    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->unregisterWithOfflineAgent()V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->destroy(Landroid/content/Context;)V

    .line 50
    :cond_0
    return-void
.end method

.method public init(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mMainHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 43
    return-void
.end method

.method public onDownloadOfFirstTimeOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->init()V

    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->registerWithOfflineAgent()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/PdsEventReporter;->mDownloadManager:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->setOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)V

    .line 61
    return-void
.end method
