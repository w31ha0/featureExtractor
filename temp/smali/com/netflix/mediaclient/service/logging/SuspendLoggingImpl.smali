.class public final Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;
.super Ljava/lang/Object;
.source "SuspendLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/SuspendLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_suspend"


# instance fields
.field private mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

.field private mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

.field private mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

.field private mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

.field private mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 48
    return-void
.end method

.method private getDeepLink(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 164
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 169
    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundSession()V

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endResumingSession()V

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    .line 261
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endSuspendSession()V

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endBackgroundSession()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    .line 75
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public endBackgroundingSession()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    .line 102
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method public endForegroundSession()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    .line 189
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method public endResumingSession()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    .line 133
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    return-void
.end method

.method public endSuspendSession()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    .line 218
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    return-void
.end method

.method public endUnfocusedSession()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    if-eqz v0, :cond_1

    .line 241
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getUnfocusedSessionStartedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getUnfocusedSessionStartedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 248
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    .line 251
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    return-void
.end method

.method public startBackgroundSession()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 62
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBackgroundingSession()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 89
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startForegroundSession(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->getDeepLink(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    if-eqz v1, :cond_1

    .line 144
    const-string/jumbo v1, "nf_log_suspend"

    const-string/jumbo v2, "Foreground session existed before"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez v0, :cond_0

    .line 147
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Not deeplink, ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v1, "nf_log_suspend"

    const-string/jumbo v2, "Deeplink found, end existing foreground session..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    .line 155
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 159
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startResumingSession()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 116
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSuspendSession()V
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 205
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUnfocusedSession()V
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->createStartEvent()V

    .line 233
    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
