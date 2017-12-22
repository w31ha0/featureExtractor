.class final Lorg/chromium/net/UploadDataProviders$FileUploadProvider;
.super Lorg/chromium/net/UploadDataProvider;
.source "UploadDataProviders.java"


# instance fields
.field private volatile mChannel:Ljava/nio/channels/FileChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;


# direct methods
.method private constructor <init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;Lorg/chromium/net/UploadDataProviders$1;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;-><init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;)V

    return-void
.end method

.method private getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_1

    .line 131
    iget-object v1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;

    invoke-interface {v0}, Lorg/chromium/net/UploadDataProviders$FileChannelProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    .line 135
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 146
    :cond_0
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cronet passed a buffer with no bytes remaining"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move v0, v1

    .line 108
    :goto_0
    if-nez v0, :cond_1

    .line 109
    invoke-virtual {v2, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 110
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 116
    :cond_1
    invoke-virtual {p1, v1}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 117
    return-void

    .line 113
    :cond_2
    add-int/2addr v0, v3

    .line 115
    goto :goto_0
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 122
    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    .line 123
    return-void
.end method
