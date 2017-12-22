.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;


# static fields
.field static final TYPE_AUDIO:Z = true

.field static final TYPE_VIDEO:Z


# instance fields
.field private mIsAudio:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    .line 52
    return-void
.end method


# virtual methods
.method public onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;-><init>()V

    .line 56
    iput v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 57
    iput v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v1, p1, v2, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    .line 72
    :goto_0
    iget v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    if-eqz v1, :cond_6

    .line 76
    iget v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 78
    iget v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    new-array v1, v1, [B

    .line 79
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 81
    const-string/jumbo v1, "NF_JPlayer2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "codecId:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const-string/jumbo v3, "ec-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reconfigureAudioPipe failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->onError(ZILjava/lang/String;)V

    .line 116
    :cond_0
    :goto_1
    return-object v0

    .line 61
    :cond_1
    const-string/jumbo v1, "NF_JPlayer2"

    const-string/jumbo v2, "WITH NON-DIRECT BYTEBUFFER"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    iput v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 65
    const/4 v1, 0x4

    iput v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 67
    const-string/jumbo v1, "NF_JPlayer2"

    const-string/jumbo v2, "can\'t get bytearray"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v2, v1, v3, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;[BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    goto/16 :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    .line 93
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 94
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 101
    :cond_4
    :goto_2
    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    goto :goto_1

    .line 97
    :cond_5
    iput v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 98
    iput v5, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    goto :goto_2

    .line 104
    :cond_6
    iget v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-lez v1, :cond_0

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_7

    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$702(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;J)J

    .line 110
    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    goto/16 :goto_1

    .line 112
    :cond_7
    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    goto/16 :goto_1
.end method
