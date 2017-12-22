.class abstract Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;
.source "BaseMslCryptoErrorHandler.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "nf_crypto_error_msl"

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/BaseMslCryptoErrorHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method getErrorSource()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method
