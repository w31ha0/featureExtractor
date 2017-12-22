.class public Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
.super Ljava/lang/Object;
.source "ClientRequestMessageContext.java"


# instance fields
.field private debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private encrypted:Ljava/lang/Boolean;

.field private integrityProtected:Ljava/lang/Boolean;

.field private keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

.field private nonReplayable:Ljava/lang/Boolean;

.field private payload:[B

.field private recipient:Ljava/lang/String;

.field private userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/msl/client/ClientRequestMessageContext;
    .locals 11

    .prologue
    .line 59
    new-instance v0, Lcom/netflix/msl/client/ClientRequestMessageContext;

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    iget-object v6, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v7, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload:[B

    iget-object v8, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    iget-object v9, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/netflix/msl/client/ClientRequestMessageContext;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/userauth/UserAuthenticationData;[BLjava/lang/String;Lcom/netflix/msl/client/KeyRequestDataProvider;Lcom/netflix/msl/client/ClientRequestMessageContext$1;)V

    return-object v0
.end method

.method public debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    return-object p0
.end method

.method public encrypted(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public integrityProtected(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    return-object p0
.end method

.method public nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload:[B

    return-object p0
.end method

.method public recipient(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientRequestMessageContext.ClientRequestMessageContextBuilder(encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->encrypted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->integrityProtected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->recipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider:Lcom/netflix/msl/client/KeyRequestDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId:Ljava/lang/String;

    return-object p0
.end method
