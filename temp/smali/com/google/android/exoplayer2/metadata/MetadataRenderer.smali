.class public final Lcom/google/android/exoplayer2/metadata/MetadataRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/BaseRenderer;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final metadataDecoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/metadata/MetadataDecoder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final output:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final outputHandler:Landroid/os/Handler;

.field private pendingMetadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pendingMetadataTimestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoder;)V
    .locals 2
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/metadata/MetadataDecoder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    .local p1, "output":Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output<TT;>;"
    .local p3, "metadataDecoder":Lcom/google/android/exoplayer2/metadata/MetadataDecoder;, "Lcom/google/android/exoplayer2/metadata/MetadataDecoder<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .line 79
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 80
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private invokeRenderer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Ljava/lang/Object;)V

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 127
    invoke-super {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onDisabled()V

    .line 128
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    .line 93
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 95
    return-void
.end method

.method public render(JJ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 101
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v2

    .line 102
    .local v2, "result":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 118
    .end local v2    # "result":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Ljava/lang/Object;)V

    .line 120
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 122
    :cond_1
    return-void

    .line 106
    .restart local v2    # "result":I
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 109
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 110
    .local v0, "bufferData":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode([BI)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "bufferData":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 87
    .local p0, "this":Lcom/google/android/exoplayer2/metadata/MetadataRenderer;, "Lcom/google/android/exoplayer2/metadata/MetadataRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->canDecode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
