.class final Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;
.super Ljava/lang/Object;
.source "ExceptionLoggingClImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ExceptionLoggingCl;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExceptionLoggingClImpl"


# instance fields
.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private final mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 34
    return-void
.end method

.method private handleLogException(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 37
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->reportExceptionToCL(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string/jumbo v2, "ExceptionLoggingClImpl"

    const-string/jumbo v3, "Failed JSON"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_EXCEPTION_CL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->handleLogException(Landroid/content/Intent;)V

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportExceptionToCL(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 71
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ExceptionLoggingClImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 82
    return-void
.end method
