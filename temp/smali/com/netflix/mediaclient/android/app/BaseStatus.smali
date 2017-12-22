.class public abstract Lcom/netflix/mediaclient/android/app/BaseStatus;
.super Ljava/lang/Object;
.source "BaseStatus.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/Status;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_baseStatus"


# instance fields
.field private mDebugMessageForServerLogs:Ljava/lang/String;

.field public mStatusCode:Lcom/netflix/mediaclient/StatusCode;

.field protected mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromException(Ljava/lang/Throwable;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 4

    .prologue
    .line 107
    const-string/jumbo v0, "nf_baseStatus"

    const-string/jumbo v1, "fromException status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isHttpErrorFromDebugMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 117
    :goto_0
    return-object v0

    .line 110
    :cond_1
    instance-of v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isMslErrorFromDebugMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 112
    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrmException;

    if-eqz v0, :cond_4

    .line 113
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 114
    :cond_4
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/chromium/net/CronetException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 115
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 117
    :cond_6
    invoke-static {p1}, Lcom/netflix/mediaclient/android/app/BaseStatus;->fromStatusCode(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private static fromStatusCode(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 4

    .prologue
    .line 122
    const-string/jumbo v0, "nf_baseStatus"

    const-string/jumbo v1, "fromStatusCode status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isHttpError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 134
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isDrmError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isMslError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isManifestError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ManifestError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    goto :goto_0

    .line 134
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHttpErrorFromDebugMessage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 138
    if-eqz p0, :cond_0

    const-string/jumbo v0, "500 internal server error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMslErrorFromDebugMessage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.netflix.msl"

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeErrorGroup()Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mThrowable:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mDebugMessageForServerLogs:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/android/app/BaseStatus;->fromException(Ljava/lang/Throwable;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->fromStatusCode(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public getDebugMessageForServerLogs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mDebugMessageForServerLogs:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getRequestId()I
.end method

.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isError()Z

    move-result v0

    return v0
.end method

.method public isErrorOrWarning()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->isNetworkError(I)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isSucess()Z

    move-result v0

    return v0
.end method

.method public isWarning()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isWarning()Z

    move-result v0

    return v0
.end method

.method public setDebugMessageForServerLogs(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mDebugMessageForServerLogs:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 90
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mDebugMessageForServerLogs:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mThrowable:Ljava/lang/Throwable;

    .line 94
    :cond_0
    return-void
.end method

.method public setVolleyError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getStackTraceForServerLogs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mDebugMessageForServerLogs:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mThrowable:Ljava/lang/Throwable;

    .line 85
    return-void
.end method

.method public abstract shouldDisplayMessage()Z
.end method
