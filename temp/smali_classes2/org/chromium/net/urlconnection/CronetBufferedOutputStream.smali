.class final Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;
.super Lorg/chromium/net/urlconnection/CronetOutputStream;
.source "CronetBufferedOutputStream.java"


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x4000


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mConnected:Z

.field private final mConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

.field private final mInitialContentLength:I

.field private final mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;


# direct methods
.method constructor <init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 28
    new-instance v0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$1;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    .line 69
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 70
    return-void
.end method

.method constructor <init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;J)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 28
    new-instance v0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$1;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Argument connection cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2GB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Content length < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 53
    long-to-int v0, p2

    iput v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    .line 54
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private ensureCanWrite(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 90
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-le v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot write after being connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-eq v0, v2, :cond_3

    .line 112
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_2

    .line 107
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 110
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 111
    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method checkReceivedEnoughContent()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method getUploadDataProvider()Lorg/chromium/net/UploadDataProvider;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method setConnected()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    .line 122
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-ge v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Content received is less than Content-Length"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 127
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->checkNotClosed()V

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->ensureCanWrite(I)V

    .line 76
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->checkNotClosed()V

    .line 82
    invoke-direct {p0, p3}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->ensureCanWrite(I)V

    .line 83
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 84
    return-void
.end method
