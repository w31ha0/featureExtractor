.class public final Lcom/netflix/mediaclient/service/error/ErrorAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ErrorAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorAgent"


# instance fields
.field private mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 31
    return-void
.end method

.method private displayDialog(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 67
    return-void
.end method

.method private handleBackgroundTask(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V
    .locals 2

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Execute background task!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->handleBackgroundTask(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->displayDialog(Landroid/content/Context;)V

    .line 98
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "No previous errors, display this one"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->displayDialog(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "ErrorAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 38
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "ErrorAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public getCurrentError()Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    return-object v0
.end method

.method public declared-synchronized setErrorAccepted(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    if-ne v0, p1, :cond_0

    .line 51
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Current error is reported to user by UI!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Current error is not one that UI just handled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
