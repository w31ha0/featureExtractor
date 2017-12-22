.class public interface abstract Lcom/netflix/mediaclient/android/app/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final REQUEST_ID_NOT_AVAILABLE:I = 0x7fffffff


# virtual methods
.method public abstract computeErrorGroup()Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
.end method

.method public abstract getDebugMessageForServerLogs()Ljava/lang/String;
.end method

.method public abstract getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getRequestId()I
.end method

.method public abstract getStatusCode()Lcom/netflix/mediaclient/StatusCode;
.end method

.method public abstract isError()Z
.end method

.method public abstract isErrorOrWarning()Z
.end method

.method public abstract isNetworkError()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract isWarning()Z
.end method

.method public abstract shouldDisplayMessage()Z
.end method
