.class public abstract Lcom/netflix/mediaclient/service/data/FalkorRequest;
.super Ljava/lang/Object;
.source "FalkorRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final OPTIONAL_URL_REQUEST_PARAM_KEY:Ljava/lang/String; = "param"


# instance fields
.field protected mNetflixDataRequest:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

.field protected mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transport can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/data/FalkorRequest;->mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->createTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/data/FalkorRequest;->mNetflixDataRequest:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract createTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
.end method

.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "get"

    return-object v0
.end method

.method public getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/FalkorRequest;->mNetflixDataRequest:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    return-object v0
.end method

.method protected abstract getPQLQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
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
    .line 111
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    return-object v0
.end method

.method public getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/FalkorRequest;->mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
