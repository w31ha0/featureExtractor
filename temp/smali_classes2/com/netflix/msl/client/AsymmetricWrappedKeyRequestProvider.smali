.class public Lcom/netflix/msl/client/AsymmetricWrappedKeyRequestProvider;
.super Ljava/lang/Object;
.source "AsymmetricWrappedKeyRequestProvider.java"

# interfaces
.implements Lcom/netflix/msl/client/KeyRequestDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/msl/client/KeyRequestDataProvider",
        "<",
        "Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_PAIR_ID:Ljava/lang/String; = "keyx-keypairid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;
    .locals 5

    .prologue
    .line 23
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 28
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 33
    new-instance v2, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    const-string/jumbo v3, "keyx-keypairid"

    sget-object v4, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;->RSA:Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;-><init>(Ljava/lang/String;Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData$Mechanism;Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "RSA algorithm not found."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic get()Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/netflix/msl/client/AsymmetricWrappedKeyRequestProvider;->get()Lcom/netflix/msl/keyx/AsymmetricWrappedExchange$RequestData;

    move-result-object v0

    return-object v0
.end method
