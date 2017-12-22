.class public abstract Lcom/netflix/mediaclient/service/ServiceAgent;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# static fields
.field public static final CATEGORY_DEBUG:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.DEBUG"

.field private static final TAG:Ljava/lang/String; = "nf_service_ServiceAgent"


# instance fields
.field private agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

.field private initCalled:Z

.field private initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

.field private mInitStartTime:J

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/ServiceAgent;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mInitStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    return-object v0
.end method


# virtual methods
.method public addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 2

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result v0

    .line 938
    :goto_0
    return v0

    .line 937
    :cond_0
    const-string/jumbo v0, "nf_service_ServiceAgent"

    const-string/jumbo v1, "Unable to add data request! Service is null, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 192
    const-string/jumbo v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 194
    return-void
.end method

.method protected abstract doInit()V
.end method

.method public getApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 788
    if-eqz v0, :cond_0

    .line 789
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 848
    if-eqz v0, :cond_0

    .line 849
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 812
    if-eqz v0, :cond_0

    .line 813
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 815
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 767
    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 866
    if-eqz v0, :cond_0

    .line 867
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 875
    if-eqz v0, :cond_0

    .line 876
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 878
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 884
    if-eqz v0, :cond_0

    .line 885
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNrdController()Lcom/netflix/mediaclient/service/NrdController;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 824
    if-eqz v0, :cond_0

    .line 825
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 893
    if-eqz v0, :cond_0

    .line 894
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 896
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgentPlaybackInterface()Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 901
    if-eqz v0, :cond_0

    .line 902
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getOfflineAgentPlaybackInterface()Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 857
    if-eqz v0, :cond_0

    .line 858
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getPreAppAgent()Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;

    move-result-object v0

    .line 860
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 836
    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 776
    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 800
    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserCredentialProvider()Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 910
    if-eqz v0, :cond_0

    .line 911
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getUserCredentialProvider()Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleConnectivityChange()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final declared-synchronized init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;)V
    .locals 5

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/AgentPerfHelper;->startSession(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    .line 116
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 118
    const-string/jumbo v0, "nf_service_ServiceAgent"

    const-string/jumbo v1, "Request to init %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init already called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "AgentContext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    .line 134
    iput-object p2, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/ServiceAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/ServiceAgent$1;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/AgentPerfHelper;->endSession(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    .line 155
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    .line 157
    const-string/jumbo v0, "nf_service_ServiceAgent"

    const-string/jumbo v1, "%s InitComplete errorCode=%d took=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mInitStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/ServiceAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/ServiceAgent$2;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitCalled()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public reportHandledException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 923
    return-void
.end method
