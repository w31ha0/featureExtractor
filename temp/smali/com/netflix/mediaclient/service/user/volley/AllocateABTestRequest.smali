.class Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;
.super Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;
.source "AllocateABTestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/data/ApiFalkorRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AllocateABTestMSLRequest"


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

.field private final params:Lcom/netflix/mediaclient/util/MultiValuedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/util/MultiValuedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pql:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;ILjava/lang/Integer;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->params:Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    .line 36
    iput-object p5, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->params:Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    const-string/jumbo v1, "param"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    if-eqz p4, :cond_0

    .line 39
    const-string/jumbo v0, "[\'allocateToABTest\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->pql:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->params:Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    const-string/jumbo v1, "param"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "[\'deallocateToABTest\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->pql:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "call"

    return-object v0
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
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->pql:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 2
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
    .line 53
    invoke-super {p0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->params:Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "AllocateABTestMSLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocate AB test failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->callback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "AllocateABTestMSLRequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Test is either disabled or invalid cell Id"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
