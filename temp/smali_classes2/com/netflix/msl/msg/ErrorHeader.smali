.class public Lcom/netflix/msl/msg/ErrorHeader;
.super Lcom/netflix/msl/msg/Header;
.source "ErrorHeader.java"


# static fields
.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "errorcode"

.field private static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errormsg"

.field private static final KEY_INTERNAL_CODE:Ljava/lang/String; = "internalcode"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_USER_MESSAGE:Ljava/lang/String; = "usermsg"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

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

.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

.field private final errorMsg:Ljava/lang/String;

.field private final errordata:Lcom/netflix/msl/io/MslObject;

.field private final internalCode:I

.field private final messageId:J

.field private final recipient:Ljava/lang/String;

.field private final timestamp:Ljava/lang/Long;

.field private final userMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/lang/String;JLcom/netflix/msl/MslConstants$ResponseCode;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->encodings:Ljava/util/Map;

    .line 102
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x20000000000000L

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    if-nez p2, :cond_2

    .line 107
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 110
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v0

    .line 113
    iput-object p1, p0, Lcom/netflix/msl/msg/ErrorHeader;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 114
    iput-object p2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 115
    if-eqz v0, :cond_7

    :goto_0
    iput-object p3, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 117
    iput-wide p4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 118
    iput-object p6, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 119
    if-ltz p7, :cond_8

    :goto_1
    iput p7, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 120
    iput-object p8, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    .line 126
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "recipient"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 128
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "messageid"

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 129
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "errorcode"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$ResponseCode;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 130
    iget v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "internalcode"

    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "errormsg"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "usermsg"

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 133
    :cond_6
    return-void

    .line 115
    :cond_7
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 119
    :cond_8
    const/4 p7, -0x1

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;[BLcom/netflix/msl/entityauth/EntityAuthenticationData;[B)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->encodings:Ljava/util/Map;

    .line 152
    iput-object p1, p0, Lcom/netflix/msl/msg/ErrorHeader;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 154
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 159
    :try_start_0
    iput-object p3, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 160
    if-nez p3, :cond_0

    .line 161
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 176
    throw v0

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    .line 165
    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v3

    .line 166
    if-nez v3, :cond_1

    .line 167
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :catch_1
    move-exception v0

    .line 178
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 179
    throw v0

    .line 168
    :cond_1
    :try_start_2
    invoke-virtual {v3, p1, p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 171
    invoke-interface {v2, p2, p4, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    move-result-object v0

    throw v0

    .line 173
    :cond_2
    invoke-interface {v2, p2, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 183
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    .line 184
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v3, "messageid"

    invoke-virtual {v1, v3}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 185
    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    iget-wide v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 186
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errordata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_2

    .line 187
    :catch_2
    move-exception v0

    .line 188
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errordata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 192
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "recipient"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "recipient"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 196
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    :try_start_5
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "errorcode"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->valueOf(I)Lcom/netflix/msl/MslConstants$ResponseCode;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    .line 202
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 204
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "internalcode"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "internalcode"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 206
    iget v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-gez v0, :cond_8

    .line 207
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->INTERNAL_CODE_NEGATIVE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "errordata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslMessageException;->setMessageId(J)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_3

    .line 213
    :catch_3
    move-exception v0

    .line 214
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errordata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    :cond_6
    move-object v1, v0

    .line 192
    goto/16 :goto_0

    .line 199
    :catch_4
    move-exception v0

    .line 200
    :try_start_7
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    goto :goto_1

    .line 209
    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "errormsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "usermsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;
    :try_end_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_7 .. :try_end_7} :catch_3

    .line 216
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    if-ne p0, p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/ErrorHeader;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 337
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/ErrorHeader;

    .line 338
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_7

    :cond_5
    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    iget v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalCode()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    return-wide v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v2

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->recipient:Ljava/lang/String;

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->timestamp:Ljava/lang/Long;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->messageId:J

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 358
    invoke-virtual {v2}, Lcom/netflix/msl/MslConstants$ResponseCode;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->internalCode:I

    .line 359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    xor-int/2addr v2, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->errorMsg:Ljava/lang/String;

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->userMsg:Ljava/lang/String;

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 355
    goto :goto_0

    :cond_2
    move v0, v1

    .line 356
    goto :goto_1

    :cond_3
    move v0, v1

    .line 360
    goto :goto_2
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 326
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v0

    .line 291
    if-nez v0, :cond_1

    .line 292
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v1, "No entity authentication factory found for entity."

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->errordata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {p1, v1, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 306
    :try_start_1
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 312
    :try_start_2
    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 319
    const-string/jumbo v3, "entityauthdata"

    iget-object v4, p0, Lcom/netflix/msl/msg/ErrorHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 320
    const-string/jumbo v3, "errordata"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 321
    const-string/jumbo v1, "signature"

    invoke-virtual {v2, v1, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 322
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/netflix/msl/msg/ErrorHeader;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error creating the entity crypto context."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 298
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error creating the entity crypto context."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 307
    :catch_2
    move-exception v0

    .line 308
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the error data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 313
    :catch_3
    move-exception v0

    .line 314
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signing the error data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
