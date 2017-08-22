.class public abstract Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private lastFeedElapsedRealtimeMs:J

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 2
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p4, "streamType"    # I

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-direct {v0, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 92
    return-void
.end method

.method private drainOutputBuffer()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;,
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_1

    .line 172
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget v9, v9, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleEndOfStream()V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 187
    .local v8, "outputFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget-object v1, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v2, v8, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, v8, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    if-nez v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 192
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    .line 196
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackHasData:Z

    .line 197
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 212
    .end local v8    # "outputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v10, v9, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)I

    move-result v7

    .line 213
    .local v7, "handleBufferResult":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->lastFeedElapsedRealtimeMs:J

    .line 216
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 221
    :cond_5
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    .end local v7    # "handleBufferResult":I
    .restart local v8    # "outputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize(I)I

    goto :goto_1

    .line 202
    .end local v8    # "outputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_7
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackHasData:Z

    .line 203
    .local v6, "audioTrackHadData":Z
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackHasData:Z

    .line 204
    if-eqz v6, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackHasData:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v4, v0, v10

    .line 206
    .local v4, "elapsedSinceLastFeedMs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    .line 207
    .local v2, "bufferSizeMs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getBufferSize()I

    move-result v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    goto :goto_2

    .line 228
    .end local v2    # "bufferSizeMs":J
    .end local v4    # "elapsedSinceLastFeedMs":J
    .end local v6    # "audioTrackHadData":Z
    .restart local v7    # "handleBufferResult":I
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private feedInputBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 238
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v3, :cond_0

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .line 244
    .local v0, "result":I
    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    .line 247
    const/4 v3, -0x5

    if-ne v0, v3, :cond_3

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    move v1, v2

    .line 249
    goto :goto_0

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 253
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 254
    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 258
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 260
    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move v1, v2

    .line 261
    goto :goto_0
.end method

.method private flushDecoder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 268
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 271
    return-void
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 367
    return-void
.end method

.method private readFormat()Z
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .line 357
    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 359
    const/4 v1, 0x1

    .line 361
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method protected getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 158
    const-string v1, "audio/raw"

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v6, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    move v4, v3

    move-object v8, v0

    move-object v9, v0

    move-object v11, v0

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 287
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 288
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .line 289
    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 290
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 292
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 288
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 289
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 379
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 382
    .end local p2    # "message":Ljava/lang/Object;
    :goto_0
    return-void

    .line 373
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 376
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 306
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 339
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 340
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 353
    return-void

    .line 350
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 351
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 312
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 317
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 319
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 320
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    .line 324
    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 329
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lcom/google/android/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->pause()V

    .line 334
    return-void
.end method

.method public render(JJ)V
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-nez v0, :cond_3

    .line 114
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 115
    .local v6, "codecInitializingTimestamp":J
    const-string v0, "createAudioDecoder"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 117
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 119
    .local v2, "codecInitializedTimestamp":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long v4, v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2    # "codecInitializedTimestamp":J
    .end local v6    # "codecInitializingTimestamp":J
    :cond_3
    :try_start_1
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_1 .. :try_end_1} :catch_3

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v8

    .line 123
    .local v8, "e":Lcom/google/android/exoplayer2/audio/AudioDecoderException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 133
    .end local v8    # "e":Lcom/google/android/exoplayer2/audio/AudioDecoderException;
    :catch_1
    move-exception v8

    .line 135
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 133
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_1
.end method
