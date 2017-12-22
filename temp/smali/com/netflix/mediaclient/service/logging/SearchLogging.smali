.class public Lcom/netflix/mediaclient/service/logging/SearchLogging;
.super Ljava/lang/Object;
.source "SearchLogging.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ISearchLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_search"


# instance fields
.field private focusFocusSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private searchSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;",
            ">;"
        }
    .end annotation
.end field

.field private searchThrottleSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 39
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 40
    return-void
.end method

.method private declared-synchronized stopFocusSession(J)V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 252
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopSession(J)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/search/SearchSession;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 127
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "Query is empty, skip privacy check"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-object p1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-nez v0, :cond_2

    .line 173
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "User agent is NULL, this should NOT happen, we can not check for privacy violation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 p1, 0x0

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "Security violation found, do NOT log query"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo p1, "PRIVACY_VIOLATION"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 4

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 326
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSearchThrottleSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 329
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(J)V

    goto :goto_1

    .line 335
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 336
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 338
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(J)V

    goto :goto_2

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void
.end method

.method public fireEditEvent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string/jumbo v0, "input_mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    move-result-object v0

    .line 274
    :goto_1
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;)V

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    goto :goto_0

    .line 273
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    goto :goto_1
.end method

.method public fireImpressionEvent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 287
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string/jumbo v1, "from"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 292
    const-string/jumbo v1, "to"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 294
    const-string/jumbo v1, "reference"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string/jumbo v4, "view"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    const-string/jumbo v4, "modal_view"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    const-string/jumbo v4, "childIds"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v6

    .line 306
    :goto_1
    invoke-static {v7}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    invoke-static {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v5

    .line 310
    :goto_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;-><init>(Ljava/lang/String;II[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 311
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    goto :goto_0

    :cond_1
    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v0, 0x1

    .line 46
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->startSession(Landroid/content/Intent;)V

    .line 48
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(Landroid/content/Intent;)V

    .line 51
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_SESSION_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->startFocusSession(Landroid/content/Intent;)V

    .line 54
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_FOCUS_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(Landroid/content/Intent;)V

    .line 57
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_FOCUS_SESSION_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->startSearchThrottleSession(Landroid/content/Intent;)V

    .line 60
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_THROTTLE_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_THROTTLE_SESSION_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 62
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSearchThrottleSession(Landroid/content/Intent;)V

    .line 63
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_THROTTLE_SESSION_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_EDIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->fireEditEvent(Landroid/content/Intent;)V

    .line 66
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_EDIT"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 67
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_IMPRESSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->fireImpressionEvent(Landroid/content/Intent;)V

    .line 69
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_IMPRESSION"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized startFocusSession(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;-><init>(J)V

    .line 152
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 155
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->createStartEvent(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSearchThrottleSession(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 199
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;-><init>(J)V

    .line 205
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 208
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 87
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/SearchSession;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;-><init>(J)V

    .line 93
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 96
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopFocusSession(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSearchThrottleSession(J)V
    .locals 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 231
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchThrottleSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSearchThrottleSession(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSearchThrottleSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
