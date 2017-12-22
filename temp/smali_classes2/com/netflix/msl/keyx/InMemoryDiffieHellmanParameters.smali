.class public Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;
.super Ljava/lang/Object;
.source "InMemoryDiffieHellmanParameters.java"

# interfaces
.implements Lcom/netflix/msl/keyx/DiffieHellmanParameters;


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/crypto/spec/DHParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addParameterSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->addParameterSpec(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 41
    return-void
.end method

.method public addParameterSpec(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->addParameterSpec(Ljava/lang/String;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 46
    return-void
.end method

.method public addParameterSpec(Ljava/lang/String;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    return-void
.end method

.method public getParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getParameterSpecs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/crypto/spec/DHParameterSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/msl/keyx/InMemoryDiffieHellmanParameters;->params:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
