.class public Lcom/netflix/msl/keyx/KeyExchangeScheme;
.super Ljava/lang/Object;
.source "KeyExchangeScheme.java"


# static fields
.field public static final ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final DIFFIE_HELLMAN:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final JWE_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final JWK_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field public static final SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

.field private static schemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->schemes:Ljava/util/Map;

    .line 34
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    const-string/jumbo v1, "ASYMMETRIC_WRAPPED"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->ASYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 36
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    const-string/jumbo v1, "DIFFIE_HELLMAN"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->DIFFIE_HELLMAN:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 38
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    const-string/jumbo v1, "JWE_LADDER"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWE_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 40
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    const-string/jumbo v1, "JWK_LADDER"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->JWK_LADDER:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 42
    new-instance v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    const-string/jumbo v1, "SYMMETRIC_WRAPPED"

    invoke-direct {v0, v1}, Lcom/netflix/msl/keyx/KeyExchangeScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->SYMMETRIC_WRAPPED:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/netflix/msl/keyx/KeyExchangeScheme;->schemes:Ljava/util/Map;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeScheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 102
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 103
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lcom/netflix/msl/keyx/KeyExchangeScheme;

    .line 105
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
