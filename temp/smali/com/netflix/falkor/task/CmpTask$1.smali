.class Lcom/netflix/falkor/task/CmpTask$1;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "CmpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final notOnMain:Z

.field private final optionalRequestParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation
.end field

.field private final pqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStartTime:J

.field final synthetic this$0:Lcom/netflix/falkor/task/CmpTask;

.field private final useAuthorization:Z

.field private final useCallMethod:Z

.field final synthetic val$requestPql:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/task/CmpTask;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iput-object p3, p0, Lcom/netflix/falkor/task/CmpTask$1;->val$requestPql:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 311
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->notOnMain:Z

    .line 313
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->val$requestPql:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DataUtil;->createStringListFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->pqls:Ljava/util/List;

    .line 314
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseCallMethod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->useCallMethod:Z

    .line 315
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseAuthorization()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->useAuthorization:Z

    .line 316
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->optionalRequestParams:Ljava/util/List;

    .line 317
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->requestStartTime:J

    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->useCallMethod:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "call"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "get"

    goto :goto_0
.end method

.method protected getPQLQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->pqls:Ljava/util/List;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 406
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 407
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->optionalRequestParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 424
    :goto_0
    return-object v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    .line 415
    iget-object v3, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 424
    goto :goto_0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getTagOverride()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getTagOverride()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    goto :goto_0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->useAuthorization:Z

    return v0
.end method

.method protected markInFlight(Z)V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->markInFlight(Z)V

    .line 453
    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->onTaskStarted()V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->onTaskCompleted()V

    goto :goto_0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 447
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v1, v1, Lcom/netflix/falkor/task/CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-static {v0, v1, p1}, Lcom/netflix/falkor/task/CmpTask;->access$200(Lcom/netflix/falkor/task/CmpTask;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 448
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/task/CmpTask$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 439
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 441
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/task/CmpTask$1;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 358
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v0, v0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getJsonParser()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->hasErrors(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;

    move-result-object v0

    throw v0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1}, Lcom/netflix/falkor/task/CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-static {v0}, Lcom/netflix/falkor/task/CmpTask;->access$100(Lcom/netflix/falkor/task/CmpTask;)V

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 371
    invoke-static {v2, v3}, Lcom/netflix/falkor/CachedModelProxy;->setLastWriteTimeMS(J)V

    .line 372
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v4, "parseFalkorResponse: current merge time - %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 374
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$1;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-static {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->access$000(Lcom/netflix/falkor/task/CmpTask;Lcom/google/gson/JsonObject;)V

    goto :goto_0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method
