.class Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;
.super Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;
.source "RefreshUserMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/data/ApiFalkorRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "RefreshUserMessageRequest"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 44
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
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
    .line 50
    const-string/jumbo v0, "[\'user\', \'uma\']"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 86
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v0, "RefreshUserMessageRequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    const-string/jumbo v1, "uma"

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
