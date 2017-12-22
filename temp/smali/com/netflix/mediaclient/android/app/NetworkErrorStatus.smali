.class public Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;
.super Lcom/netflix/mediaclient/android/app/BaseStatus;
.source "NetworkErrorStatus.java"


# instance fields
.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;-><init>()V

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 19
    invoke-static {p1}, Lcom/netflix/mediaclient/util/VolleyUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 20
    return-void
.end method


# virtual methods
.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public shouldDisplayMessage()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkErrorStatus{VolleyError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mVolleyError:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
