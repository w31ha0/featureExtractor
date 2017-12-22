.class public final Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "SearchFocusSessionEndedEvent.java"


# static fields
.field private static final APP_SESSION_NAME:Ljava/lang/String; = "focus"

.field private static final CATEGORY:Ljava/lang/String; = "uiView"

.field private static final NAME:Ljava/lang/String; = "focus.ended"


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 20
    const-string/jumbo v0, "focus"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->setupAttributes()V

    .line 22
    return-void
.end method

.method private setupAttributes()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "focus"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->sessionName:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 27
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 28
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->category:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "focus.ended"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->name:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :cond_0
    const-string/jumbo v1, "path"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    return-object v0
.end method
