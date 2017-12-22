.class public Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;
.super Ljava/lang/Object;
.source "IkoLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IkoLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_iko"


# instance fields
.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

.field private mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

.field private mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

.field private mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 41
    return-void
.end method

.method private handleIkoModeEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 295
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 310
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 311
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoModeStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 281
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 286
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 291
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoModeSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 292
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoMomentEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 328
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 340
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 344
    :goto_1
    const-string/jumbo v0, "momentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    const-string/jumbo v0, "momentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    const-string/jumbo v0, "ikoMomentState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    const-string/jumbo v0, "expectedVideoOffset"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    .line 348
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1
.end method

.method private handleIkoMomentStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 314
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 319
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 324
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 325
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoVideoLoadEnd(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 241
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 257
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 258
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoVideoLoadStart(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoVideoLoadSession(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private handleIkoVideoPlaybackEnd(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 267
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string/jumbo v0, "errorCode"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 270
    const-string/jumbo v0, "errorSubCode"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v0

    .line 277
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    .line 278
    return-void
.end method

.method private handleIkoVideoPlaybackStart(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoVideoPlaybackSession(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 366
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 7

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 191
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 193
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 147
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoMode session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    .line 150
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;

    move-result-object v0

    .line 175
    if-nez v0, :cond_1

    .line 176
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 181
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 182
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoMoment session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    .line 185
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 77
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoVideoLoad session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    .line 80
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 112
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoVideoPlaybackSession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    .line 115
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 198
    const/4 v0, 0x1

    .line 200
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_LOAD_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoLoadStart(Landroid/content/Intent;)V

    .line 231
    :goto_0
    return v0

    .line 203
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_LOAD_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoLoadEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_PLAYBACK_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoPlaybackStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_PLAYBACK_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoPlaybackEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MODE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoModeStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MODE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoModeEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MOMENT_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoMomentStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MOMENT_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoMomentEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 228
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 46
    return-void
.end method

.method public startIkoModeSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 127
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 128
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    .line 129
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 163
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    .line 164
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoVideoLoadSession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 58
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    .line 59
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoVideoPlaybackSession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 93
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    .line 94
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
