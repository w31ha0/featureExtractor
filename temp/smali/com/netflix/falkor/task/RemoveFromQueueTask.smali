.class public Lcom/netflix/falkor/task/RemoveFromQueueTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "RemoveFromQueueTask.java"


# instance fields
.field private final iqLomoId:Ljava/lang/String;

.field private final iqLomoIndex:Ljava/lang/String;

.field private final isIqLomoValid:Z

.field private final lolomoId:Ljava/lang/String;

.field private final messageToken:Ljava/lang/String;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p8}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 44
    iput-object p2, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->videoId:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 46
    iput-object p4, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->lolomoId:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->iqLomoId:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->iqLomoIndex:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    .line 51
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->isIqLomoValid:Z

    .line 52
    return-void
.end method

.method private doDebugValidation()V
    .locals 0

    .prologue
    .line 98
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

    .line 56
    iget-boolean v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    .line 57
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->lolomoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "remove"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "removeFromQueue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 150
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 151
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue failed - video was not in queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 161
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 162
    return-void

    .line 155
    :cond_0
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue failed - general error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090113

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
    .locals 4

    .prologue
    .line 136
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Remove from queue was successful"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lists"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->iqLomoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendIqRefreshBrodcast(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 144
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 145
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 7
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
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    iget-boolean v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->isIqLomoValid:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/netflix/falkor/task/RemoveFromQueueTask;->doDebugValidation()V

    .line 77
    const-string/jumbo v1, "[\'%s\',\'%s\']"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->videoId:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "[{\'from\':%d,\'to\':%d}]"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v4}, Lcom/netflix/falkor/CachedModelProxy;->getLastPrefetchFromVideo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v4}, Lcom/netflix/falkor/CachedModelProxy;->getLastPrefetchToVideo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "[\'summary\']"

    .line 83
    new-instance v4, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    iget-object v6, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->iqLomoIndex:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v4, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v5, "param"

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v4, "pathSuffix"

    invoke-direct {v1, v4, v2}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "pathSuffix"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/netflix/falkor/task/RemoveFromQueueTask;->messageToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    return-object v0
.end method

.method protected handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "CachedModelProxy"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getErrorMessage(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isNotInQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 130
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
