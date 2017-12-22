.class public Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "SearchSessionStartedEvent.java"


# static fields
.field private static final APP_SESSION_NAME:Ljava/lang/String; = "search"

.field private static final CATEGORY:Ljava/lang/String; = "search"

.field private static final NAME:Ljava/lang/String; = "session.started"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "search"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->setupAttributes()V

    .line 18
    return-void
.end method

.method private setupAttributes()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 22
    const-string/jumbo v0, "search"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->sessionName:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 24
    const-string/jumbo v0, "search"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->category:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "session.started"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;->name:Ljava/lang/String;

    .line 26
    return-void
.end method
