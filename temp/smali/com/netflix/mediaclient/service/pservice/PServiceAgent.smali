.class public abstract Lcom/netflix/mediaclient/service/pservice/PServiceAgent;
.super Ljava/lang/Object;
.source "PServiceAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_preapp_serviceagent"


# instance fields
.field private agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

.field private initCallback:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;

.field private initCalled:Z

.field private initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->UNKNOWN:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v0, "nf_preapp_serviceagent"

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

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 102
    return-void
.end method

.method protected abstract doInit()V
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getService()Lcom/netflix/mediaclient/service/pservice/PService;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWidgetAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;->getWidgetAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized init(Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;)V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 37
    const-string/jumbo v0, "nf_preapp_serviceagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to init "

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

    .line 38
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initCalled:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PServiceAgent init already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "PreAppAgentContext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initCalled:Z

    .line 46
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->mainHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initCallback:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$2;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/android/app/Status;

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
