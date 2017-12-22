.class public Lcom/netflix/falkor/task/AddToQueueTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "AddToQueueTask.java"


# static fields
.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final SUFFIX:Ljava/lang/String; = "pathSuffix"


# instance fields
.field private final iqLomoId:Ljava/lang/String;

.field private final iqLomoIndex:Ljava/lang/String;

.field private final isIqLomoValid:Z

.field private final lolomoId:Ljava/lang/String;

.field private final messageToken:Ljava/lang/String;

.field private final trackId:Ljava/lang/String;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p9}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 49
    iput-object p2, p0, Lcom/netflix/falkor/task/AddToQueueTask;->videoId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 51
    iput-object p4, p0, Lcom/netflix/falkor/task/AddToQueueTask;->lolomoId:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/netflix/falkor/task/AddToQueueTask;->iqLomoId:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/netflix/falkor/task/AddToQueueTask;->iqLomoIndex:Ljava/lang/String;

    .line 54
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->trackId:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/netflix/falkor/task/AddToQueueTask;->messageToken:Ljava/lang/String;

    .line 57
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->isIqLomoValid:Z

    .line 58
    return-void
.end method

.method private doDebugValidation()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    iget-boolean v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    .line 63
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->lolomoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "add"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "addToQueue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 172
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 173
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to queue failed - video already in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;)V

    .line 183
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 184
    return-void

    .line 177
    :cond_0
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to queue failed - general error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v3, "Add to queue was successful"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->lolomoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->isIqLomoValid:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 155
    :goto_0
    iget-boolean v3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->isIqLomoValid:Z

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "lists"

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/netflix/falkor/task/AddToQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v4}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendIqRefreshBrodcast(Landroid/content/Context;)V

    .line 160
    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v6, v6}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;)V

    .line 162
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 163
    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "addToQueue new user case"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getServiceProvider()Lcom/netflix/falkor/ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getFalkorAgent()Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->refreshLolomo()V

    .line 167
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 154
    goto :goto_0
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-boolean v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->isIqLomoValid:Z

    if-eqz v1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/netflix/falkor/task/AddToQueueTask;->doDebugValidation()V

    .line 83
    const-string/jumbo v1, "\'%s\'"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "[\'%s\',\'%s\']"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/falkor/task/AddToQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/netflix/falkor/task/AddToQueueTask;->videoId:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string/jumbo v3, "[{\'from\':%d,\'to\':%d}]"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v5}, Lcom/netflix/falkor/CachedModelProxy;->getLastPrefetchFromVideo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/netflix/falkor/task/AddToQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v5}, Lcom/netflix/falkor/CachedModelProxy;->getLastPrefetchToVideo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string/jumbo v4, "[\'summary\']"

    .line 90
    new-instance v5, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v6, "param"

    invoke-direct {v5, v6, v1}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    iget-object v6, p0, Lcom/netflix/falkor/task/AddToQueueTask;->iqLomoIndex:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    invoke-direct {v1, v5, v2}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget-object v5, p0, Lcom/netflix/falkor/task/AddToQueueTask;->trackId:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "pathSuffix"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "pathSuffix"

    invoke-direct {v1, v2, v4}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/netflix/falkor/task/AddToQueueTask;->messageToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->messageToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-object v0

    .line 98
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "param"

    iget-object v3, p0, Lcom/netflix/falkor/task/AddToQueueTask;->trackId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "CachedModelProxy"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isAlreadyInQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Video already in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 147
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->wasRequestNotValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Add to Queue Request not valid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_VALID:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
