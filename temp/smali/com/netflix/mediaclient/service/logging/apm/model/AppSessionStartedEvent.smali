.class public final Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "AppSessionStartedEvent.java"


# static fields
.field private static final APP_SESSION_NAME:Ljava/lang/String; = "appSession"

.field public static final LAST_SHUTDOWN_GRACEFUL:Ljava/lang/String; = "lastShutdownGraceful"


# instance fields
.field private lastShutdownGraceful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "appSession"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 37
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    .line 45
    const-string/jumbo v0, "data"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v1, "lastShutdownGraceful"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :cond_0
    const-string/jumbo v1, "lastShutdownGraceful"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    return-object v0
.end method

.method public isLastShutdownGraceful()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    return v0
.end method

.method public setLastShutdownGraceful(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->lastShutdownGraceful:Z

    .line 84
    return-void
.end method
