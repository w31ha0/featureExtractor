.class public Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "SharedContextSessionEndedEvent.java"


# static fields
.field private static final ROLE:Ljava/lang/String; = "role"

.field private static final ROLE_VALUE:Ljava/lang/String; = "initiator"

.field private static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "sharedContext"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 46
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;->mUuid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 34
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v1, "uuid"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;->mUuid:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :cond_0
    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "initiator"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method
