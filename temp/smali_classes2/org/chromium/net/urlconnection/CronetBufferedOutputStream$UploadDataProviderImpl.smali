.class Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;
.super Lorg/chromium/net/UploadDataProvider;
.source "CronetBufferedOutputStream.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    .line 152
    :goto_0
    return-wide v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 158
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 160
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 165
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    .line 171
    return-void
.end method
