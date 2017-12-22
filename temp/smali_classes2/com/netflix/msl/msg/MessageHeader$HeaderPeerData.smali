.class public Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# instance fields
.field public final peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

.field public final peerServiceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field public final peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 229
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 230
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    .line 231
    return-void
.end method
