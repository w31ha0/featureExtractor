.class public Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
.super Ljava/lang/Object;
.source "ClientMslContext.java"


# instance fields
.field private clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

.field private eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

.field private entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private entityAuthFactories$key:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            ">;"
        }
    .end annotation
.end field

.field private entityAuthFactories$value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private keyxFactories$key:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            ">;"
        }
    .end annotation
.end field

.field private keyxFactories$value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

.field private mslStore:Lcom/netflix/msl/util/MslStore;

.field private random:Ljava/util/Random;

.field private rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

.field private tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/msl/client/ClientMslContext;
    .locals 12

    .prologue
    const v1, 0x7fffffff

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    :goto_1
    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v0, v2

    :goto_2
    iget-object v4, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :goto_3
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_1

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    :cond_1
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_5
    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    :pswitch_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    :goto_6
    new-instance v0, Lcom/netflix/msl/client/ClientMslContext;

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    iget-object v3, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v4, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    iget-object v5, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v8, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    iget-object v9, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    iget-object v10, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

    iget-object v11, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-direct/range {v0 .. v11}, Lcom/netflix/msl/client/ClientMslContext;-><init>(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;Ljava/util/Random;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/tokens/TokenFactory;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/util/Map;Ljava/util/Map;Lcom/netflix/msl/util/MslStore;Lcom/netflix/msl/client/ModifiableRsaStore;Lcom/netflix/msl/client/ModifiableEccStore;Lcom/netflix/msl/io/MslEncoderFactory;)V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    goto :goto_6

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearEntityAuthFactories()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p0
.end method

.method public clearKeyxFactories()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p0
.end method

.method public clock(Lcom/netflix/msl/client/ClientMslContext$ClockProvider;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    return-object p0
.end method

.method public eccStore(Lcom/netflix/msl/client/ModifiableEccStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

    return-object p0
.end method

.method public entityAuthData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object p0
.end method

.method public entityAuthFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            "+",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;",
            ">;)",
            "Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public entityAuthFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public keyxFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            "+",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;)",
            "Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public keyxFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;Lcom/netflix/msl/keyx/KeyExchangeFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public mslCryptoContext(Lcom/netflix/msl/crypto/ICryptoContext;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object p0
.end method

.method public mslEncoderFactory(Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    return-object p0
.end method

.method public mslStore(Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    return-object p0
.end method

.method public random(Ljava/util/Random;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    return-object p0
.end method

.method public rsaStore(Lcom/netflix/msl/client/ModifiableRsaStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientMslContext.ClientMslContextBuilder(clock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->clock:Lcom/netflix/msl/client/ClientMslContext$ClockProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->random:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mslCryptoContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", entityAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", entityAuthFactories$key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", entityAuthFactories$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyxFactories$key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$key:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyxFactories$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories$value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mslStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore:Lcom/netflix/msl/util/MslStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rsaStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eccStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->eccStore:Lcom/netflix/msl/client/ModifiableEccStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mslEncoderFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslEncoderFactory:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenFactory(Lcom/netflix/msl/tokens/TokenFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->tokenFactory:Lcom/netflix/msl/tokens/TokenFactory;

    return-object p0
.end method
