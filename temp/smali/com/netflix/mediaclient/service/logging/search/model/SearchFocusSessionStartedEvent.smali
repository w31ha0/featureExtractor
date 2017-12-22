.class public Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "SearchFocusSessionStartedEvent.java"


# static fields
.field private static final APP_SESSION_NAME:Ljava/lang/String; = "focus"

.field private static final CATEGORY:Ljava/lang/String; = "uiView"

.field private static final NAME:Ljava/lang/String; = "focus.started"


# instance fields
.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "focus"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->query:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->setupAttributes()V

    .line 25
    return-void
.end method

.method private setupAttributes()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "focus"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->sessionName:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 31
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->category:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "focus.started"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->name:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->query:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    return-object v0
.end method
