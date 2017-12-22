.class Lcom/netflix/falkor/task/CmpTask$2;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "CmpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
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
.method constructor <init>(Lcom/netflix/falkor/task/CmpTask;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iput-object p4, p0, Lcom/netflix/falkor/task/CmpTask$2;->val$requestPql:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 489
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->notOnMain:Z

    .line 491
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->val$requestPql:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DataUtil;->createStringListFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->pqls:Ljava/util/List;

    .line 492
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseCallMethod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->useCallMethod:Z

    .line 493
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->shouldUseAuthorization()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->useAuthorization:Z

    .line 494
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getOptionalRequestParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->optionalRequestParams:Ljava/util/List;

    .line 495
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->requestStartTime:J

    return-void
.end method


# virtual methods
.method protected canHaveEmptyProfileGuid()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->canHaveEmptyProfileGuidOverride()Z

    move-result v0

    return v0
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->useCallMethod:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "call"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "get"

    goto :goto_0
.end method

.method protected getOptionalParams()Ljava/lang/String;
    .locals 5

    .prologue
    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 591
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->optionalRequestParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    .line 595
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->optionalRequestParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    .line 597
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 600
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 517
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->pqls:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getPriorityOverride()Lcom/android/volley/Request$Priority;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->getTagOverride()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

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
    .line 585
    iget-boolean v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->useAuthorization:Z

    return v0
.end method

.method protected markInFlight(Z)V
    .locals 1

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;->markInFlight(Z)V

    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->onTaskStarted()V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v0}, Lcom/netflix/falkor/task/CmpTask;->onTaskCompleted()V

    goto :goto_0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 625
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 627
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v1, v1, Lcom/netflix/falkor/task/CmpTask;->callback:Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    invoke-static {v0, v1, p1}, Lcom/netflix/falkor/task/CmpTask;->access$200(Lcom/netflix/falkor/task/CmpTask;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 628
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 486
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netflix/falkor/task/CmpTask$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 619
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 621
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/task/CmpTask$2;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 522
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 544
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    iget-object v0, v0, Lcom/netflix/falkor/task/CmpTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getJsonParser()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->hasErrors(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->handleJsonError(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;

    move-result-object v0

    throw v0

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1}, Lcom/netflix/falkor/task/CmpTask;->shouldCustomHandleResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->customHandleResponse(Lcom/google/gson/JsonObject;)V

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-static {v0}, Lcom/netflix/falkor/task/CmpTask;->access$100(Lcom/netflix/falkor/task/CmpTask;)V

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 557
    invoke-static {v2, v3}, Lcom/netflix/falkor/CachedModelProxy;->setLastWriteTimeMS(J)V

    .line 558
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v4, "parseFalkorResponse: current merge time - %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 560
    iget-object v1, p0, Lcom/netflix/falkor/task/CmpTask$2;->this$0:Lcom/netflix/falkor/task/CmpTask;

    invoke-static {v1, v0}, Lcom/netflix/falkor/task/CmpTask;->access$000(Lcom/netflix/falkor/task/CmpTask;Lcom/google/gson/JsonObject;)V

    goto :goto_0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldMaterializeRequest()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    return v0
.end method
