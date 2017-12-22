.class public Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
.super Ljava/lang/Object;
.source "KeyExchangeFactory.java"


# instance fields
.field public final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field public final keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 52
    iput-object p2, p0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 53
    return-void
.end method
