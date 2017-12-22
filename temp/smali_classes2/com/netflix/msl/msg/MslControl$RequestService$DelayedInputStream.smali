.class Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;
.super Ljava/io/FilterInputStream;
.source "MslControl.java"


# instance fields
.field private final conn:Lcom/netflix/msl/io/Url$Connection;

.field final synthetic this$1:Lcom/netflix/msl/msg/MslControl$RequestService;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl$RequestService;Lcom/netflix/msl/io/Url$Connection;)V
    .locals 1

    .prologue
    .line 2999
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->this$1:Lcom/netflix/msl/msg/MslControl$RequestService;

    .line 3000
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3001
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    .line 3002
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3008
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3015
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 3016
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .prologue
    .line 3020
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 3024
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3031
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3045
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3037
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3038
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3050
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3052
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3053
    monitor-exit p0

    return-void

    .line 3050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->conn:Lcom/netflix/msl/io/Url$Connection;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;->in:Ljava/io/InputStream;

    .line 3059
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
