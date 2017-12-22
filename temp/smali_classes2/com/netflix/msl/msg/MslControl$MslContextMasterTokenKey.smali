.class Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 235
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 236
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    if-ne p1, p0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 253
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    .line 254
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p1, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
