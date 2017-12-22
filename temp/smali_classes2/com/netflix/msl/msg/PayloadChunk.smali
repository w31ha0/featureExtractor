.class public Lcom/netflix/msl/msg/PayloadChunk;
.super Ljava/lang/Object;
.source "PayloadChunk.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_COMPRESSION_ALGORITHM:Ljava/lang/String; = "compressionalgo"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_END_OF_MESSAGE:Ljava/lang/String; = "endofmsg"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "sequencenumber"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private final compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final data:[B

.field private final encodings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            "[B>;"
        }
    .end annotation
.end field

.field private final endofmsg:Z

.field private final messageId:J

.field private final payload:Lcom/netflix/msl/io/MslObject;

.field private final sequenceNumber:J


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;JJZLcom/netflix/msl/MslConstants$CompressionAlgorithm;[BLcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 6

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->encodings:Ljava/util/Map;

    .line 121
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 124
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    if-eqz p7, :cond_7

    .line 129
    invoke-static {p7, p8}, Lcom/netflix/msl/util/MslUtils;->compress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    .line 133
    array-length v1, v0

    array-length v2, p8

    if-ge v1, v2, :cond_6

    .line 134
    iput-object p7, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 146
    :goto_0
    iput-wide p2, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    .line 147
    iput-wide p4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    .line 148
    iput-boolean p6, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    .line 149
    iput-object p8, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    .line 152
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    .line 154
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "sequencenumber"

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 155
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 156
    iget-boolean v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "endofmsg"

    iget-boolean v3, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "compressionalgo"

    iget-object v3, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 161
    iput-object p9, p0, Lcom/netflix/msl/msg/PayloadChunk;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 162
    return-void

    .line 137
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p8

    .line 138
    goto :goto_0

    .line 141
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-object v0, p8

    .line 142
    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x20000000000000L

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->encodings:Ljava/util/Map;

    .line 181
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 184
    iput-object p3, p0, Lcom/netflix/msl/msg/PayloadChunk;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 189
    :try_start_0
    const-string/jumbo v2, "payload"

    invoke-virtual {p2, v2}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 190
    const-string/jumbo v3, "signature"

    invoke-virtual {p2, v3}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 191
    invoke-interface {p3, v2, v3, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :cond_0
    invoke-interface {p3, v2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v2

    .line 200
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    .line 201
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "sequencenumber"

    invoke-virtual {v1, v3}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    .line 202
    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_2

    .line 203
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :catch_1
    move-exception v0

    .line 229
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload chunk payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "messageid"

    invoke-virtual {v1, v3}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    .line 205
    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    iget-wide v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_4

    .line 206
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "payload chunk payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "endofmsg"

    invoke-virtual {v1, v3}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "endofmsg"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    iput-boolean v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    .line 208
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "compressionalgo"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "compressionalgo"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 211
    :try_start_3
    invoke-static {v1}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    .line 218
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    array-length v1, v0

    if-nez v1, :cond_8

    .line 220
    iget-boolean v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-nez v0, :cond_7

    .line 221
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 212
    :catch_2
    move-exception v0

    .line 213
    new-instance v3, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

    invoke-direct {v3, v4, v1, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 216
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    goto :goto_0

    .line 222
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    .line 231
    :goto_1
    return-void

    .line 223
    :cond_8
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-nez v1, :cond_9

    .line 224
    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    goto :goto_1

    .line 226
    :cond_9
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v1, v0}, Lcom/netflix/msl/util/MslUtils;->uncompress(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    if-ne p1, p0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/PayloadChunk;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 315
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/PayloadChunk;

    .line 316
    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    iget-object v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    iget-object v3, p1, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    .line 320
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCompressionAlgo()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    return-wide v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->sequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/PayloadChunk;->messageId:J

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->compressionAlgo:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 331
    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->data:[B

    .line 332
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndOfMessage()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->endofmsg:Z

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 305
    :goto_0
    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/PayloadChunk;->payload:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v1, v0, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :try_start_1
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v1, v0, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 299
    const-string/jumbo v3, "payload"

    invoke-virtual {v2, v3, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 300
    const-string/jumbo v0, "signature"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 301
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/netflix/msl/msg/PayloadChunk;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the payload."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :catch_1
    move-exception v0

    .line 294
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signing the payload."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
