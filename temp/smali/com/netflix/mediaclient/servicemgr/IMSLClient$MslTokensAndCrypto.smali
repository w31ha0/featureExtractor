.class public Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;
.super Ljava/lang/Object;
.source "IMSLClient.java"


# instance fields
.field public cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field public masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field public userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 338
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 339
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 340
    return-void
.end method
