.class public Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;
.super Ljava/lang/Object;
.source "AndroidDebugContext.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageDebugContext;


# static fields
.field private static final MASTER_TOKEN_SCHEME:Ljava/lang/String; = "MASTER_TOKEN"

.field private static final TAG:Ljava/lang/String; = "nf_msl"

.field private static final USER_ID_TOKEN_SCHEME:Ljava/lang/String; = "USER_ID_TOKEN"


# instance fields
.field private mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 45
    return-void
.end method

.method private errorHeader(Ljava/lang/String;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalErrorHeaderAsJson(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 83
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSL Error Header {}:\n{}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private logHeader(Ljava/lang/String;Lcom/netflix/msl/msg/Header;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    :try_start_0
    instance-of v0, p2, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    .line 67
    check-cast p2, Lcom/netflix/msl/msg/MessageHeader;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->messageHeader(Ljava/lang/String;Lcom/netflix/msl/msg/MessageHeader;)V

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    instance-of v0, p2, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_1

    .line 69
    check-cast p2, Lcom/netflix/msl/msg/ErrorHeader;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->errorHeader(Ljava/lang/String;Lcom/netflix/msl/msg/ErrorHeader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Unable to marshal header in %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 71
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Unknown Header type %s during %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V
    .locals 4

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 213
    const-string/jumbo v1, "scheme"

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 214
    const-string/jumbo v1, "identity"

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 215
    const-string/jumbo v1, "authdata"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    sget-object v3, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {p2, v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 216
    const-string/jumbo v1, "entityauthdata"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string/jumbo v0, "entityauthdata"

    const-string/jumbo v1, "exception"

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    const-string/jumbo v0, "entityauthdata"

    const-string/jumbo v1, "exception"

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0
.end method

.method private marshalErrorHeaderAsJson(Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 100
    const-string/jumbo v1, "errormessage"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 101
    const-string/jumbo v1, "recipient"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 102
    const-string/jumbo v1, "internalcode"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 103
    const-string/jumbo v1, "messageid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 104
    const-string/jumbo v1, "errorcode"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 105
    const-string/jumbo v1, "usermessage"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 106
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 108
    invoke-virtual {p1}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V

    .line 111
    return-object v0
.end method

.method private marshalHeaderAsJson(Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/android/org/json/JSONObject;
    .locals 8

    .prologue
    .line 116
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    .line 119
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalEntityAuth(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)V

    .line 121
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 124
    const-string/jumbo v3, "identity"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 125
    const-string/jumbo v3, "encryptionkey"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 126
    const-string/jumbo v3, "expiration"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getExpiration()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 127
    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getIssuerData()Lcom/netflix/msl/io/MslObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 128
    const-string/jumbo v3, "renewalwindow"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getRenewalWindow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 129
    const-string/jumbo v3, "seqnum"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 130
    const-string/jumbo v3, "sigkey"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSignatureKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 131
    const-string/jumbo v3, "serialnum"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 132
    const-string/jumbo v0, "mastertokendata"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->toJSON(Lcom/netflix/msl/io/MslEncodable;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 139
    const-string/jumbo v2, "userauthdata"

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 145
    const-string/jumbo v3, "serialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 146
    const-string/jumbo v3, "renewalwindow"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getRenewalWindow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 147
    const-string/jumbo v3, "issuerdata"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getIssuerData()Lcom/netflix/msl/io/MslObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 148
    const-string/jumbo v3, "expiration"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getExpiration()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 149
    const-string/jumbo v3, "mastertokenserialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 150
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 151
    const-string/jumbo v3, "user"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 153
    :cond_2
    const-string/jumbo v0, "userdata"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 157
    :cond_3
    const-string/jumbo v0, "renewable"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 158
    const-string/jumbo v0, "encrypting"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isEncrypting()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 159
    const-string/jumbo v0, "handshake"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 160
    const-string/jumbo v0, "messageid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 161
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    const-string/jumbo v0, "user"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/msl/tokens/MslUser;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 164
    :cond_4
    const-string/jumbo v0, "nonreplayableid"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getNonReplayableId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 165
    const-string/jumbo v0, "recipient"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 166
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    const-string/jumbo v0, "messagecapabilities"

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->toJSON(Lcom/netflix/msl/io/MslEncodable;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 171
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_7

    .line 173
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 174
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    .line 175
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->toJSON(Lcom/netflix/msl/io/MslEncodable;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0

    .line 177
    :cond_6
    const-string/jumbo v0, "keyrequests"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 180
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    const-string/jumbo v2, "keyresponse"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->toJSON(Lcom/netflix/msl/io/MslEncodable;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 186
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    .line 187
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 189
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 190
    const-string/jumbo v5, "verified"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isVerified()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 191
    const-string/jumbo v5, "decrypted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isDecrypted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 192
    const-string/jumbo v5, "encrypted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isEncrypted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 193
    const-string/jumbo v5, "unbound"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUnbound()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 194
    const-string/jumbo v5, "deleted"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isDeleted()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 195
    const-string/jumbo v5, "mastertokenserialnumber"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 196
    const-string/jumbo v5, "name"

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 197
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v0

    .line 198
    if-eqz v0, :cond_9

    array-length v5, v0

    if-lez v5, :cond_9

    .line 199
    const-string/jumbo v5, "data"

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 201
    :cond_9
    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    .line 203
    :cond_a
    const-string/jumbo v0, "servicetokens"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 205
    return-object v1
.end method

.method private messageHeader(Ljava/lang/String;Lcom/netflix/msl/msg/MessageHeader;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;->marshalHeaderAsJson(Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSL Message Header {}:\n{}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method public receivedHeader(Lcom/netflix/msl/msg/Header;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public sentHeader(Lcom/netflix/msl/msg/Header;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
