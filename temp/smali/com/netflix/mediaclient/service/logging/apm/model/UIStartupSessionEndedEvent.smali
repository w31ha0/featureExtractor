.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UIStartupSessionEndedEvent.java"


# static fields
.field public static final ACTIVE_AB_TESTS:Ljava/lang/String; = "activeABTests"

.field public static final DESTIONATION_VIEW:Ljava/lang/String; = "destinationView"

.field public static final DISPLAY:Ljava/lang/String; = "display"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field public static final SEARCH_TERM:Ljava/lang/String; = "searchTerm"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "UIStartupSessionEndedEvent"

.field public static final TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final TRIGGER:Ljava/lang/String; = "trigger"

.field private static final UI_STARTUP_SESSION_NAME:Ljava/lang/String; = "uiStartup"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final VERSION_OS:Ljava/lang/String; = "os"

.field public static final VOICE_ENABLED:Ljava/lang/String; = "voiceEnabled"


# instance fields
.field private activeABTests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private customData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

.field private deepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

.field private destinationView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private display:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

.field private error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

.field private searchTerm:Ljava/lang/String;

.field private success:Z

.field private trackId:Ljava/lang/String;

.field private trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

.field private voiceEnabled:Z


# direct methods
.method public constructor <init>(JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, "uiStartup"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->success:Z

    .line 122
    if-nez p3, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trigger is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 127
    if-nez p4, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Destination is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->destinationView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 132
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->success:Z

    .line 133
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->deepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    .line 134
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->customData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    .line 135
    return-void
.end method


# virtual methods
.method public getActiveABTests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->activeABTests:Ljava/util/Map;

    return-object v0
.end method

.method protected getCustomData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->customData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->customData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 139
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 143
    :goto_0
    const-string/jumbo v0, "trigger"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v0, "destinationView"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->destinationView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v0, "success"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->success:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v0, "voiceEnabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->voiceEnabled:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->display:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "display"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->display:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    if-eqz v0, :cond_1

    .line 153
    const-string/jumbo v0, "error"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trackId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 157
    const-string/jumbo v0, "trackId"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trackId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->searchTerm:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 161
    const-string/jumbo v0, "searchTerm"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->searchTerm:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->activeABTests:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string/jumbo v0, "activeABTests"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->activeABTests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->activeABTests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 169
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 173
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->deepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    if-eqz v1, :cond_5

    .line 177
    const-string/jumbo v1, "deeplinkMsgParams"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->deepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_5
    const-string/jumbo v1, "os"

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v0, "playerType"

    const-string/jumbo v1, "JPLAYER2"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    return-object v2

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public getDestinationView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->destinationView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getDisplay()Lcom/netflix/mediaclient/service/logging/apm/model/Display;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->display:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    return-object v0
.end method

.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->searchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->success:Z

    return v0
.end method

.method public isVoiceEnabled()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->voiceEnabled:Z

    return v0
.end method

.method public setActiveABTests(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->activeABTests:Ljava/util/Map;

    .line 356
    return-void
.end method

.method public setDestinationView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->destinationView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 230
    return-void
.end method

.method public setDisplay(Lcom/netflix/mediaclient/service/logging/apm/model/Display;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->display:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    .line 248
    return-void
.end method

.method public setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    .line 284
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->searchTerm:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->success:Z

    .line 266
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trackId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setTrigger(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 212
    return-void
.end method

.method public setVoiceEnabled(Z)V
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->voiceEnabled:Z

    .line 338
    return-void
.end method
