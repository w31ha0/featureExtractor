.class public Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "SearchEditEvent.java"


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "uiView"

.field private static final NAME:Ljava/lang/String; = "edit"


# instance fields
.field private inputMode:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->query:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->inputMode:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->setupAttributes()V

    .line 32
    return-void
.end method

.method private setupAttributes()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->edit:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 37
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->category:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "edit"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :cond_0
    const-string/jumbo v1, "path"

    new-instance v2, Lorg/json/JSONArray;

    const-string/jumbo v3, "[\'searchQuery\']"

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->inputMode:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->inputMode:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 54
    :cond_1
    const-string/jumbo v1, "mode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->inputMode:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    return-object v0
.end method
