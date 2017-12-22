.class abstract Lorg/chromium/net/urlconnection/CronetOutputStream;
.super Ljava/io/OutputStream;
.source "CronetOutputStream.java"


# instance fields
.field private mClosed:Z

.field private mException:Ljava/io/IOException;

.field private mRequestCompleted:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkNoException()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method protected checkNotClosed()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mRequestCompleted:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->checkNoException()V

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Writing after request completed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mClosed:Z

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    return-void
.end method

.method abstract checkReceivedEnoughContent()V
.end method

.method public close()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mClosed:Z

    .line 24
    return-void
.end method

.method abstract getUploadDataProvider()Lorg/chromium/net/UploadDataProvider;
.end method

.method abstract setConnected()V
.end method

.method setRequestCompleted(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetOutputStream;->mRequestCompleted:Z

    .line 50
    return-void
.end method
