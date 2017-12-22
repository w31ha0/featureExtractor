.class final Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;
.super Ljava/lang/Object;
.source "OfflineLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/OfflineLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_offline"


# instance fields
.field private mAddCachedVideoSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mDownloadSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mRemoveCachedVideoSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mAddCachedVideoSessions:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mRemoveCachedVideoSessions:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDownloadSessions:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 65
    return-void
.end method

.method private handleAddCachedVideoEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 473
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v2, "ADD_CACHED_VIDEO_SESSION_END"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string/jumbo v0, "oxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 482
    :goto_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    const-string/jumbo v5, "surveyType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 495
    :goto_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 498
    :cond_0
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 499
    return-void

    .line 490
    :catch_0
    move-exception v2

    .line 491
    const-string/jumbo v5, "nf_log_offline"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddCachedVideoStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 460
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "ADD_CACHED_VIDEO_SESSION_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v0, "oxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    const/4 v0, 0x0

    .line 465
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 468
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->startAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V

    .line 469
    return-void
.end method

.method private handleCachedPlaybackEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 344
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v2, "CACHED_PLAYBACK_END"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 352
    :goto_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    const-string/jumbo v4, "surveyType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 365
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 368
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 369
    return-void

    .line 360
    :catch_0
    move-exception v2

    .line 361
    const-string/jumbo v4, "nf_log_offline"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleCachedPlaybackStart(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 327
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "CACHED_PLAYBACK_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string/jumbo v0, "oxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string/jumbo v0, "videoid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    const-string/jumbo v0, "runtime"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 332
    const-string/jumbo v0, "logicalStart"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 333
    const-string/jumbo v0, "logicalEnd"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 334
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    const/4 v1, 0x0

    .line 336
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 337
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v1

    :cond_0
    move-object v0, p0

    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->startCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;III)V

    .line 340
    return-void
.end method

.method private handleDownloadEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 387
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v2, "DOWNLOAD_END"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v0, "dxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 396
    :goto_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    const-string/jumbo v5, "surveyType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 409
    :goto_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 412
    :cond_0
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 413
    return-void

    .line 404
    :catch_0
    move-exception v2

    .line 405
    const-string/jumbo v5, "nf_log_offline"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDownloadStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 373
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "DOWNLOAD_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string/jumbo v0, "dxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    const/4 v0, 0x0

    .line 378
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 381
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->startDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V

    .line 382
    return-void
.end method

.method private handleRemoveCachedVideoEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 430
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v2, "REMOVE_CACHED_VIDEO_SESSION_END"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string/jumbo v0, "oxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 439
    :goto_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    const-string/jumbo v5, "surveyType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 452
    :goto_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 453
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 455
    :cond_0
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 456
    return-void

    .line 447
    :catch_0
    move-exception v2

    .line 448
    const-string/jumbo v5, "nf_log_offline"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRemoveCachedVideoStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 417
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "REMOVE_CACHED_VIDEO_SESSION_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string/jumbo v0, "oxid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    const/4 v0, 0x0

    .line 422
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 425
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->startRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V

    .line 426
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 83
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    if-nez p1, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Add cached video session ends with oxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mAddCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;

    .line 131
    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "endAddCachedVideoSession:: AddCachedVideoSession session does NOT exist! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_1
    :try_start_1
    const-string/jumbo v1, "nf_log_offline"

    const-string/jumbo v2, "AddCachedVideoSession session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v0, p3, p4, p2}, Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/AddCachedVideoSessionEndedEvent;

    move-result-object v1

    .line 138
    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 139
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized endAllActiveSessions()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "End cached play session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Cached playback session Does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    invoke-virtual {v0, p2, p3, p1}, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionEndedEvent;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 269
    monitor-enter p0

    if-nez p1, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Download session ends with dxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;

    .line 280
    if-nez v0, :cond_1

    .line 281
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "endDownloadSession:: DownloadSession session does NOT exist! Recreate it, but do NOT post start event!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 283
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 286
    :cond_1
    const-string/jumbo v1, "nf_log_offline"

    const-string/jumbo v2, "Download session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0, p3, p4, p2}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionEndedEvent;

    move-result-object v1

    .line 288
    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 289
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    if-nez p1, :cond_0

    .line 192
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Remove cached video session ends with oxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mRemoveCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;

    .line 181
    if-nez v0, :cond_1

    .line 182
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "endRemoveCachedVideoSession:: RemoveCachedVideoSession session does NOT exist! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_1
    :try_start_1
    const-string/jumbo v1, "nf_log_offline"

    const-string/jumbo v2, "AddCachedVideoSession session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0, p3, p4, p2}, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;

    move-result-object v1

    .line 188
    invoke-direct {p0, v1, p2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 297
    const/4 v0, 0x1

    .line 298
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleAddCachedVideoStart(Landroid/content/Intent;)V

    .line 322
    :goto_0
    return v0

    .line 300
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_ADD_CACHED_VIDEO_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleAddCachedVideoEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleRemoveCachedVideoStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_REMOVE_CACHED_VIDEO_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleRemoveCachedVideoEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 306
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleDownloadStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 308
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_DOWNLOAD_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleDownloadEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleCachedPlaybackStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_OFFLINE_CACHED_PLAY_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 313
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleCachedPlaybackEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 89
    return-void
.end method

.method public declared-synchronized startAddCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    if-nez p1, :cond_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Add cached video session started with oxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mAddCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "AddCachedVideoSession session already exist! You can not start it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "AddCachedVideoSession session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/offline/AddCachedVideoSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mAddCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 197
    monitor-enter p0

    if-nez p2, :cond_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Start cached play session with oxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    if-eqz v0, :cond_1

    .line 208
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Cached playback session exist, cancel it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endCachedPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 212
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 213
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mCachedPlaySession:Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/offline/CachedPlaySession;->createStartedEvent(Ljava/lang/String;Ljava/lang/String;III)Lcom/netflix/mediaclient/service/logging/offline/model/CachedPlaySessionStartedEvent;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
    .locals 4

    .prologue
    .line 240
    monitor-enter p0

    if-nez p1, :cond_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Start download session with dxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;

    .line 251
    if-eqz v0, :cond_1

    .line 252
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "startDownloadSession:: DownloadSession session already exist! You can not start it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "DownloadSession session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 258
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mDownloadSessions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 260
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/offline/DownloadSession;->createStartedEvent(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/offline/model/DownloadSessionStartedEvent;

    move-result-object v0

    .line 261
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startRemoveCachedVideoSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
    .locals 4

    .prologue
    .line 147
    monitor-enter p0

    if-nez p1, :cond_0

    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OXID can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "Remove cached video session started with oxid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mRemoveCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;

    .line 154
    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "RemoveCachedVideoSession session already exist! You can not start it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_log_offline"

    const-string/jumbo v1, "RemoveCachedVideoSession session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mRemoveCachedVideoSessions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
