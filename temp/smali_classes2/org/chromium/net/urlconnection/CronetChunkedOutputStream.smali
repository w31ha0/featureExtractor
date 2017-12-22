.class final Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;
.super Lorg/chromium/net/urlconnection/CronetOutputStream;
.source "CronetChunkedOutputStream.java"


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

.field private mLastChunk:Z

.field private final mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

.field private final mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;


# direct methods
.method constructor <init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;ILorg/chromium/net/urlconnection/MessageLoop;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 25
    new-instance v0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;Lorg/chromium/net/urlconnection/CronetChunkedOutputStream$1;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    if-gtz p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "chunkLength should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 44
    iput-object p3, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;)Lorg/chromium/net/urlconnection/MessageLoop;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    return-object v0
.end method

.method private ensureBufferHasRemaining()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->uploadBufferInternal()V

    .line 137
    :cond_0
    return-void
.end method

.method private uploadBufferInternal()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNotClosed()V

    .line 146
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->loop()V

    .line 148
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNoException()V

    .line 149
    return-void
.end method


# virtual methods
.method checkReceivedEnoughContent()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->close()V

    .line 72
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    .line 76
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    :cond_0
    return-void
.end method

.method getUploadDataProvider()Lorg/chromium/net/UploadDataProvider;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method setConnected()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->ensureBufferHasRemaining()V

    .line 50
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNotClosed()V

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v0, p3

    .line 60
    :goto_0
    if-lez v0, :cond_2

    .line 61
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 62
    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 63
    sub-int/2addr v0, v1

    .line 65
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;->ensureBufferHasRemaining()V

    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method
