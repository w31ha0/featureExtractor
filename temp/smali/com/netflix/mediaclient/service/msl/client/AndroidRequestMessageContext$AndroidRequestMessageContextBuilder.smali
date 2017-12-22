.class public Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
.super Ljava/lang/Object;
.source "AndroidRequestMessageContext.java"


# instance fields
.field private debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private encrypted:Ljava/lang/Boolean;

.field private integrityProtected:Ljava/lang/Boolean;

.field private keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

.field private nonReplayable:Ljava/lang/Boolean;

.field private payload:[B

.field private recipient:Ljava/lang/String;

.field private requestingTokens:Ljava/lang/Boolean;

.field private userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;
    .locals 11

    .prologue
    .line 293
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->payload:[B

    iget-object v8, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    iget-object v10, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->requestingTokens:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 269
    return-object p0
.end method

.method public encrypted(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    .line 244
    return-object p0
.end method

.method public integrityProtected(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    .line 254
    return-object p0
.end method

.method public keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    .line 289
    return-object p0
.end method

.method public nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    .line 259
    return-object p0
.end method

.method public payload([B)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->payload:[B

    .line 279
    return-object p0
.end method

.method public recipient(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public requestingTokens(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->requestingTokens:Ljava/lang/Boolean;

    .line 249
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AndroidRequestMessageContextBuilder{encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->payload:[B

    .line 305
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recipient=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestingTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->requestingTokens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 274
    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userId:Ljava/lang/String;

    .line 264
    return-object p0
.end method
