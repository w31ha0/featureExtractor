.class public Lorg/linphone/mediastream/AACFilter;
.super Ljava/lang/Object;
.source "AACFilter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static singleton:Lorg/linphone/mediastream/AACFilter;


# instance fields
.field bitrate:I

.field channelCount:I

.field decoder:Landroid/media/MediaCodec;

.field decoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field encoder:Landroid/media/MediaCodec;

.field encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field encoderInputBuffers:[Ljava/nio/ByteBuffer;

.field encoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field initialized:Z

.field sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/mediastream/AACFilter;->initialized:Z

    .line 55
    return-void
.end method

.method private static dequeueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;[B)I
    .locals 8

    .prologue
    const/4 v0, -0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 231
    move v2, v1

    .line 232
    :goto_0
    if-ge v2, v7, :cond_6

    .line 233
    const-wide/16 v4, 0x64

    invoke-virtual {p0, p2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 235
    if-ltz v3, :cond_3

    .line 236
    array-length v0, p3

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v0, v2, :cond_0

    .line 237
    new-array v0, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "array is too small "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 238
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 239
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "JUST READ MediaCodec.BUFFER_FLAG_CODEC_CONFIG buffer"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 242
    :cond_1
    aget-object v0, p1, v3

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, p3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 243
    aget-object v0, p1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {p0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 246
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 259
    :cond_2
    :goto_1
    return v0

    .line 247
    :cond_3
    if-eq v3, v0, :cond_2

    .line 249
    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    .line 250
    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "MediaCodec.INFO_OUTPUT_FORMAT_CHANGED"

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 251
    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CHANNEL_COUNT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v6, "channel-count"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 252
    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SAMPLE_RATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v6, "sample-rate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 257
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 258
    goto/16 :goto_0

    .line 254
    :cond_5
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_6
    move v0, v1

    .line 259
    goto :goto_1
.end method

.method public static instance()Lorg/linphone/mediastream/AACFilter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/linphone/mediastream/AACFilter;->singleton:Lorg/linphone/mediastream/AACFilter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/linphone/mediastream/AACFilter;

    invoke-direct {v0}, Lorg/linphone/mediastream/AACFilter;-><init>()V

    sput-object v0, Lorg/linphone/mediastream/AACFilter;->singleton:Lorg/linphone/mediastream/AACFilter;

    .line 50
    :cond_0
    sget-object v0, Lorg/linphone/mediastream/AACFilter;->singleton:Lorg/linphone/mediastream/AACFilter;

    return-object v0
.end method

.method private static queueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;[BI)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 221
    if-ltz v1, :cond_0

    .line 222
    aget-object v0, p1, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    aget-object v0, p1, v1

    invoke-virtual {v0, p2, v2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v0, p0

    move v3, p3

    move v6, v2

    .line 224
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 225
    const/4 v2, 0x1

    .line 227
    :cond_0
    return v2
.end method


# virtual methods
.method public postprocess()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Lorg/linphone/mediastream/AACFilter;->initialized:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 203
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Stopping encoder"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 205
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Stopping decoder"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 207
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 208
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Release encoder"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 210
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Release decoder"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 212
    iput-object v4, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    .line 213
    iput-object v4, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    .line 214
    iput-boolean v2, p0, Lorg/linphone/mediastream/AACFilter;->initialized:Z

    .line 216
    :cond_0
    return v3
.end method

.method public preprocess(IIIZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-boolean v3, p0, Lorg/linphone/mediastream/AACFilter;->initialized:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 61
    :cond_0
    iput p1, p0, Lorg/linphone/mediastream/AACFilter;->sampleRate:I

    .line 62
    iput p2, p0, Lorg/linphone/mediastream/AACFilter;->channelCount:I

    .line 63
    iput p3, p0, Lorg/linphone/mediastream/AACFilter;->bitrate:I

    .line 67
    :try_start_0
    const-string/jumbo v3, "audio/mp4a-latm"

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 68
    const-string/jumbo v4, "aac-profile"

    const/16 v5, 0x27

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v4, "bitrate"

    invoke-virtual {v3, v4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v4, "OMX.google.aac.encoder"

    invoke-static {v4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    .line 79
    iget-object v4, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 81
    iget-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 83
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    move v3, v2

    .line 86
    :goto_1
    if-nez v0, :cond_2

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_2

    .line 89
    iget-object v4, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 90
    if-ltz v4, :cond_1

    .line 91
    iget-object v5, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v5, v8, :cond_1

    .line 92
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 93
    iget-object v5, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v5, v5, v4

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v5, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget-object v5, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 101
    iget-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/linphone/mediastream/AACFilter;->encoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 102
    if-nez v0, :cond_3

    .line 103
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sigh, failed to read asc from encoder"

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_3
    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "AAC encoder initialized"

    aput-object v4, v3, v2

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 113
    if-eqz v0, :cond_4

    .line 114
    :try_start_1
    const-string/jumbo v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 115
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    const-string/jumbo v4, "csd-0"

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    move-object v0, v3

    .line 123
    :goto_2
    const-string/jumbo v3, "OMX.google.aac.decoder"

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    .line 124
    iget-object v3, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 125
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 127
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 130
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "AAC decoder initialized"

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 137
    iput-boolean v1, p0, Lorg/linphone/mediastream/AACFilter;->initialized:Z

    move v0, v1

    .line 139
    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string/jumbo v0, "Unable to create AAC Encoder"

    aput-object v0, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    move v0, v2

    .line 107
    goto/16 :goto_0

    .line 119
    :cond_4
    :try_start_2
    const-string/jumbo v0, "audio/mp4a-latm"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 120
    const-string/jumbo v3, "bitrate"

    invoke-virtual {v0, v3, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 131
    :catch_1
    move-exception v0

    .line 132
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string/jumbo v0, "Unable to create AAC Decoder"

    aput-object v0, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    move v0, v2

    .line 133
    goto/16 :goto_0
.end method

.method public pullFromDecoder([B)I
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/linphone/mediastream/AACFilter;->decoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v0, v1, v2, p1}, Lorg/linphone/mediastream/AACFilter;->dequeueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;[B)I

    move-result v0

    .line 160
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/mediastream/AACFilter;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {p0, p1}, Lorg/linphone/mediastream/AACFilter;->pullFromDecoder([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pullFromEncoder([B)I
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/linphone/mediastream/AACFilter;->encoderBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v0, v1, v2, p1}, Lorg/linphone/mediastream/AACFilter;->dequeueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;[B)I

    move-result v0

    .line 189
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/mediastream/AACFilter;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p0, p1}, Lorg/linphone/mediastream/AACFilter;->pullFromDecoder([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushToDecoder([BI)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->decoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/linphone/mediastream/AACFilter;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, p1, p2}, Lorg/linphone/mediastream/AACFilter;->queueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string/jumbo v3, "Push to decoder failed"

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pushToEncoder([BI)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/linphone/mediastream/AACFilter;->encoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/linphone/mediastream/AACFilter;->encoderInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, p1, p2}, Lorg/linphone/mediastream/AACFilter;->queueData(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string/jumbo v3, "Push to encoder failed"

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method
