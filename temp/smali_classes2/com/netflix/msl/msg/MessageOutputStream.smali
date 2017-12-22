.class public Lcom/netflix/msl/msg/MessageOutputStream;
.super Ljava/io/OutputStream;
.source "MessageOutputStream.java"


# instance fields
.field private caching:Z

.field private final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field private closeDestination:Z

.field private closed:Z

.field private compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private currentPayload:Ljava/io/ByteArrayOutputStream;

.field private final destination:Ljava/io/OutputStream;

.field private final encoderFormat:Lcom/netflix/msl/io/MslEncoderFormat;

.field private final header:Lcom/netflix/msl/msg/Header;

.field private payloadSequenceNumber:J

.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/ErrorHeader;Lcom/netflix/msl/io/MslEncoderFormat;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 358
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 360
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 363
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 365
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 72
    invoke-virtual {p3, v0, p4}, Lcom/netflix/msl/msg/ErrorHeader;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 78
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    .line 79
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->encoderFormat:Lcom/netflix/msl/io/MslEncoderFormat;

    .line 80
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 81
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    .line 82
    iput-object v3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 83
    iput-object v3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 84
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 86
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error encoding the error header."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 358
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 360
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 363
    iput-boolean v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 365
    iput-boolean v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 108
    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageCapabilities;->getCompressionAlgorithms()Ljava/util/Set;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->getPreferredAlgorithm(Ljava/util/Set;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v1

    .line 114
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageCapabilities;->getEncoderFormats()Ljava/util/Set;

    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    .line 124
    :goto_0
    :try_start_0
    invoke-virtual {p3, v2, v0}, Lcom/netflix/msl/msg/MessageHeader;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 129
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 130
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    .line 131
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->encoderFormat:Lcom/netflix/msl/io/MslEncoderFormat;

    .line 132
    iput-object v3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 133
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    .line 134
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 135
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 136
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 137
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 138
    return-void

    .line 118
    :cond_0
    invoke-virtual {v2, v1}, Lcom/netflix/msl/io/MslEncoderFactory;->getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error encoding the message header."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    .line 243
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    .line 248
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public closeDestination(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination:Z

    .line 230
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    .line 146
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 147
    return-void
.end method

.method public flush()V
    .locals 10

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v4

    .line 272
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 279
    :goto_1
    new-instance v0, Lcom/netflix/msl/msg/PayloadChunk;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    iget-object v7, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v9, p0, Lcom/netflix/msl/msg/MessageOutputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v0 .. v9}, Lcom/netflix/msl/msg/PayloadChunk;-><init>(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLcom/netflix/msl/crypto/ICryptoContext;)V

    .line 280
    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageOutputStream;->encoderFormat:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/PayloadChunk;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->destination:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 285
    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    .line 289
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encoding payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    new-array v8, v0, [B

    goto :goto_1

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 295
    :catch_1
    move-exception v0

    .line 296
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encrypting payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :catch_2
    move-exception v0

    .line 298
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error compressing payload chunk [sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCompressionAlgorithm(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v1

    .line 166
    if-nez v1, :cond_0

    .line 167
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    if-eqz p1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-nez v1, :cond_2

    .line 181
    :cond_1
    :goto_0
    return v0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageCapabilities;->getCompressionAlgorithms()Ljava/util/Set;

    move-result-object v1

    .line 174
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eq v0, p1, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    .line 180
    :cond_4
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageOutputStream;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stopCaching()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->caching:Z

    .line 217
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    return-void
.end method

.method public write(I)V
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 336
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 337
    invoke-virtual {p0, v0}, Lcom/netflix/msl/msg/MessageOutputStream;->write([B)V

    .line 338
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/msg/MessageOutputStream;->write([BII)V

    .line 328
    return-void
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Message output stream already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot write payload data for a handshake message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageOutputStream;->currentPayload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 320
    return-void
.end method
