.class public final Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "SearchSessionEndedEvent.java"


# static fields
.field private static final APP_SESSION_NAME:Ljava/lang/String; = "search"

.field private static final CATEGORY:Ljava/lang/String; = "search"

.field private static final NAME:Ljava/lang/String; = "session.ended"


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "search"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->setupAttributes()V

    .line 18
    return-void
.end method

.method private setupAttributes()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 22
    const-string/jumbo v0, "search"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->sessionName:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 24
    const-string/jumbo v0, "search"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->category:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "session.ended"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;->name:Ljava/lang/String;

    .line 26
    return-void
.end method
