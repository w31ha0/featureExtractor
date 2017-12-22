.class public final Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;
.super Ljava/lang/Object;
.source "UIViewLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UIViewLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mAgeVerifyImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mIkoNotificationImpressionSessions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

.field private mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mModalViewSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            "Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationImpressionSessions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mModalViewSessions:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 69
    return-void
.end method

.method private handleIkoNotificationImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 426
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionEnd impression session ended"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 429
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 431
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 432
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionEnd impression session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 434
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "IkoNotificationImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIkoNotificationImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 405
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ikoNotification:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 416
    return-void

    .line 406
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private handleLeftPanelCommandEnded(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;

    move-result-object v0

    .line 314
    if-nez v0, :cond_1

    .line 315
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 319
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 320
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelCommandSession command session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 323
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelCommandStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string/jumbo v0, "inputValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    move-result-object v4

    .line 301
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewMenu:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 303
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 355
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionEnd impression session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 358
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 359
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionEnd impression session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 361
    iput-object v3, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 362
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelImpressionStart impression session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x0

    .line 335
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->menuPanel:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private handleNotificationImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 390
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "NotificationImpressionEnd impression session ended"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v1

    .line 394
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 395
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 396
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "NotificationImpressionEnd impression session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 398
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NotificationImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNotificationImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 367
    const/4 v1, 0x0

    .line 369
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NotificationImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->notification:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 380
    return-void

    .line 370
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private handleUIViewCommandEnded(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endCommandSession()V

    .line 289
    return-void
.end method

.method private handleUIViewCommandStart(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 235
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v1

    .line 237
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 243
    :goto_1
    const-string/jumbo v3, "inputMethod"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 246
    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    move-result-object v3

    .line 250
    :goto_2
    const-string/jumbo v4, "dataContext"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 259
    :goto_3
    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    const-string/jumbo v6, "model"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    const-string/jumbo v7, "model"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_4
    const-string/jumbo v7, "data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 276
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    const-string/jumbo v8, "data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    move-object v0, p0

    .line 284
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->startCommandSession(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 285
    return-void

    .line 254
    :catch_0
    move-exception v5

    .line 255
    const-string/jumbo v5, "nf_log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to create dataContext: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v4, v0

    goto :goto_3

    .line 266
    :catch_1
    move-exception v6

    move-object v6, v0

    goto :goto_4

    .line 277
    :catch_2
    move-exception v7

    move-object v7, v0

    goto :goto_5

    :cond_1
    move-object v7, v0

    goto :goto_5

    :cond_2
    move-object v6, v0

    goto :goto_4

    :cond_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private handleUIViewImpression(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 220
    const-string/jumbo v0, "trackId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    const/4 v0, 0x0

    .line 223
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v0

    .line 227
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->createImpressionEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V

    .line 228
    return-void
.end method

.method private handleUIViewImpressionEnd(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 180
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 181
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleUIViewImpressionStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 169
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 174
    :cond_0
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->startImpressionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private handleUIViewModalViewEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 206
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 212
    :cond_0
    const-string/jumbo v1, "trackingInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string/jumbo v2, "isModalView"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 215
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Z)V

    .line 216
    return-void
.end method

.method private handleUIViewModalViewStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 195
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 200
    :cond_0
    const-string/jumbo v1, "trackingInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->startModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 444
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method


# virtual methods
.method public createImpressionEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
    .locals 3

    .prologue
    .line 449
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 451
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 452
    return-void
.end method

.method public endAllActiveSessions()V
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endCommandSession()V

    .line 549
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 550
    return-void
.end method

.method public endCommandSession()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 102
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "uiView command session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 105
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 486
    :goto_0
    monitor-exit p0

    return-void

    .line 478
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 481
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 482
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "uiView impression session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 485
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mModalViewSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-nez v0, :cond_0

    .line 544
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "uiView modalView session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mModalViewSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->createEndedEvent(Z)Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;

    move-result-object v2

    .line 533
    const/4 v1, 0x0

    .line 534
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    .line 536
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackingInfo(Ljava/lang/String;)V

    .line 539
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 540
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 541
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView modalView session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 543
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView modalView session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 111
    const/4 v0, 0x1

    .line 112
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "COMMAND_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewCommandStart(Landroid/content/Intent;)V

    .line 164
    :goto_0
    return v0

    .line 115
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "COMMAND_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewCommandEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_COMMAND_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelCommandStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_COMMAND_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelCommandEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelImpressionStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelImpressionEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NOTIFICATION_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleNotificationImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 134
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleNotificationImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 136
    :cond_7
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IKO_NOTIFICATION_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIkoNotificationImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    :cond_8
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 140
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IKO_NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIkoNotificationImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_9
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 143
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpression(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    :cond_a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 146
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION_SESSION_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    :cond_b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION_SESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    :cond_c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 152
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "MODAL_VIEW_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewModalViewStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    :cond_d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_MDL_VW_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 155
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "MODAL_VIEW_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewModalViewEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized startCommandSession(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    sget-object v5, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 81
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 82
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 83
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mUrl:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startImpressionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-eqz v0, :cond_0

    .line 457
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 464
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 465
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startModalViewSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mModalViewSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;

    .line 495
    if-eqz v0, :cond_0

    .line 496
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView modalView session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView modalView session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 502
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;

    move-result-object v2

    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    .line 506
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackingInfo(Ljava/lang/String;)V

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/uiview/ModalViewSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 510
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v3, "uiView modalView session start event posting..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mModalViewSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView modalView session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
