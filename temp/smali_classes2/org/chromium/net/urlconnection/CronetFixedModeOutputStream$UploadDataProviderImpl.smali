.class Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;
.super Lorg/chromium/net/UploadDataProvider;
.source "CronetFixedModeOutputStream.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;


# direct methods
.method private constructor <init>(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$1;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;-><init>(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$100(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 180
    invoke-virtual {p1, v4}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 182
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$300(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Lorg/chromium/net/urlconnection/MessageLoop;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->quit()V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 185
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 186
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;->this$0:Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    invoke-static {v1}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;->access$200(Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p1, v4}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    goto :goto_0
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/net/HttpRetryException;

    const-string/jumbo v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 196
    return-void
.end method
