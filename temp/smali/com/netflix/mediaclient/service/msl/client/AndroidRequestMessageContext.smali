.class public Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;
.super Ljava/lang/Object;
.source "AndroidRequestMessageContext.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# static fields
.field private static final USER_ID:Ljava/lang/String; = "local-userid"


# instance fields
.field debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private encrypted:Z

.field private integrityProtected:Z

.field private keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

.field private nonReplayable:Z

.field private payload:[B

.field private recipient:Ljava/lang/String;

.field private requestingTokens:Z

.field private userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    .line 78
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    .line 79
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    .line 80
    iput-object p4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 82
    iput-object p6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 83
    iput-object p7, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    .line 84
    iput-object p8, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    .line 85
    iput-object p9, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    .line 86
    if-eqz p10, :cond_1

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    .line 87
    return-void

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0

    :cond_3
    move v0, v2

    .line 79
    goto :goto_1
.end method

.method public static builder()Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 175
    check-cast p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;

    .line 177
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    if-ne v2, v3, :cond_0

    .line 178
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    if-ne v2, v3, :cond_0

    .line 179
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    if-ne v2, v3, :cond_0

    .line 180
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    if-ne v2, v3, :cond_0

    .line 181
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    iget-object v3, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    :goto_1
    move v1, v0

    goto :goto_0

    .line 181
    :cond_7
    iget-object v2, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 183
    :cond_8
    iget-object v2, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 185
    :cond_9
    iget-object v2, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 186
    :cond_a
    iget-object v2, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 189
    :cond_b
    iget-object v2, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_1
.end method

.method public getCryptoContexts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyRequestData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-interface {v0}, Lcom/netflix/msl/client/KeyRequestDataProvider;->get()Lcom/netflix/msl/keyx/KeyRequestData;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    .prologue
    .line 103
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 195
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 196
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 197
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 198
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 199
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 200
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    .line 202
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    if-eqz v3, :cond_8

    :goto_8
    add-int/2addr v0, v1

    .line 204
    return v0

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v0, v2

    .line 195
    goto :goto_1

    :cond_2
    move v0, v2

    .line 196
    goto :goto_2

    :cond_3
    move v0, v2

    .line 197
    goto :goto_3

    :cond_4
    move v0, v2

    .line 198
    goto :goto_4

    :cond_5
    move v0, v2

    .line 199
    goto :goto_5

    :cond_6
    move v0, v2

    .line 200
    goto :goto_6

    :cond_7
    move v0, v2

    .line 202
    goto :goto_7

    :cond_8
    move v1, v2

    .line 203
    goto :goto_8
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    return v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    return v0
.end method

.method public isRequestingTokens()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AndroidRequestMessageContext{encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->encrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->integrityProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->nonReplayable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recipient=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->recipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    .line 217
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestingTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->requestingTokens:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public write(Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->payload:[B

    invoke-virtual {p1, v0}, Lcom/netflix/msl/msg/MessageOutputStream;->write([B)V

    .line 136
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    .line 138
    :cond_0
    return-void
.end method
