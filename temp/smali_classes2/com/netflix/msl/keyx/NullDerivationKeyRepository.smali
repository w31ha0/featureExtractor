.class public Lcom/netflix/msl/keyx/NullDerivationKeyRepository;
.super Ljava/lang/Object;
.source "NullDerivationKeyRepository.java"

# interfaces
.implements Lcom/netflix/msl/keyx/DerivationKeyRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDerivationKey([BLjavax/crypto/SecretKey;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public getDerivationKey([B)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDerivationKey([B)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
