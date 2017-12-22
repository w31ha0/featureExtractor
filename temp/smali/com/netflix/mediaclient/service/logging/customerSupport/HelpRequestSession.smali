.class public final Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;
.super Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;
.source "HelpRequestSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "helpRequest"


# instance fields
.field private mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 24
    return-void
.end method


# virtual methods
.method public createHelpRequestSessionEndedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;
    .locals 7

    .prologue
    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "helpRequest"

    return-object v0
.end method
