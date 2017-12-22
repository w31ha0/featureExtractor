.class public Lcom/netflix/mediaclient/android/app/NetflixStatus;
.super Lcom/netflix/mediaclient/android/app/BaseStatus;
.source "NetflixStatus.java"


# static fields
.field private static final serialVersionUID:J = 0x471447e20c9b795dL


# instance fields
.field protected mDisplayMessage:Z

.field protected transient mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field protected mMessage:Ljava/lang/String;

.field private mRequestId:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;I)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Status code can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 68
    iput p2, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 83
    iput-object p2, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mThrowable:Ljava/lang/Throwable;

    .line 84
    return-void
.end method


# virtual methods
.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    return v0
.end method

.method public setDisplayMessage(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mDisplayMessage:Z

    .line 134
    return-void
.end method

.method public setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 143
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mMessage:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    .line 98
    return-void
.end method

.method public shouldDisplayMessage()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mDisplayMessage:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetflixStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
