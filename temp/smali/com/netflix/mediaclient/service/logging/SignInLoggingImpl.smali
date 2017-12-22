.class final Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;
.super Ljava/lang/Object;
.source "SignInLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/SignInLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_signin"


# instance fields
.field private mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

.field private mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 47
    return-void
.end method

.method private handleCredentialRetrievalEnd(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 228
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CREDENTIAL_RETRIEVAL_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 244
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 245
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v3, "nf_log_signin"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleCredentialRetrievalStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 216
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CREDENTIAL_RETRIEVAL_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    move-result-object v0

    .line 223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 224
    return-void
.end method

.method private handleCredentialStoreEnd(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 261
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CREDENTIAL_SAVE_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 277
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 278
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v3, "nf_log_signin"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleCredentialStoreStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 249
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CREDENTIAL_SAVE_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const/4 v0, 0x0

    .line 252
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    move-result-object v0

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startCredentialStore(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 257
    return-void
.end method

.method private handleSignInEnd(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 184
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "SIGNIN_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string/jumbo v4, "credSavedState"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 203
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    move-result-object v3

    .line 208
    :goto_2
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    move-result-object v1

    .line 211
    :cond_0
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V

    .line 212
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string/jumbo v5, "nf_log_signin"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method private handleSignInStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 173
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SIGNIN_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    move-result-object v0

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 180
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 4

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V

    .line 158
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 159
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    .line 106
    if-nez v0, :cond_0

    .line 107
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService retrieval session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "CredentialService retrieval session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 115
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CredentialService retrieval session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 117
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService retrieval session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    .line 140
    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService store session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "CredentialService store session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 148
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 149
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CredentialService store session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 151
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService store session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    .line 72
    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "nf_log_signin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SignInRequest session for sign-in type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does NOT exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "SignInRequest session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 80
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 81
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "SignInRequest session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 83
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 283
    const/4 v0, 0x1

    .line 284
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleSignInStart(Landroid/content/Intent;)V

    .line 303
    :goto_0
    return v0

    .line 286
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleSignInEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialRetrievalStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialRetrievalEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialStoreStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialStoreEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 300
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 97
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    .line 98
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCredentialStore(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    if-eqz v0, :cond_0

    .line 124
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 131
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    .line 132
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    if-nez v0, :cond_0

    .line 55
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 58
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
