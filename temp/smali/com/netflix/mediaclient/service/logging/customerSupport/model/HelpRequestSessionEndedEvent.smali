.class public Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "HelpRequestSessionEndedEvent.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ENTRY:Ljava/lang/String; = "entry"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field private static final SESSION_NAME:Ljava/lang/String; = "helpRequest"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field private mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 6

    .prologue
    .line 58
    const-string/jumbo v0, "helpRequest"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->getStarted()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 59
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 60
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 61
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mUrl:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 63
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 64
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->category:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    if-eqz v1, :cond_2

    .line 82
    const-string/jumbo v1, "entry"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mEntry:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_4

    .line 88
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_5

    .line 91
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_5
    return-object v0
.end method
