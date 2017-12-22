.class public interface abstract Lcom/netflix/falkor/task/CmpTaskDetails;
.super Ljava/lang/Object;
.source "CmpTaskDetails.java"


# virtual methods
.method public abstract buildPqlList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract customHandleResponse(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract fetchResultsAndCallbackForSuccess(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
.end method

.method public abstract getOptionalRequestParams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldCollapseMissingPql(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract shouldCustomHandleResponse()Z
.end method

.method public abstract shouldSkipCache()Z
.end method

.method public abstract shouldUseAuthorization()Z
.end method

.method public abstract shouldUseCacheOnly()Z
.end method

.method public abstract shouldUseCallMethod()Z
.end method
