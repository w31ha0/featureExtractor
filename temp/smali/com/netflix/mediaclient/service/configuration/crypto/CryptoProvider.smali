.class public final enum Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
.super Ljava/lang/Enum;
.source "CryptoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final enum LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final enum WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final enum WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;


# instance fields
.field public final ESN_VALUE:Ljava/lang/String;

.field public final NCCP_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const-string/jumbo v1, "LEGACY"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const-string/jumbo v1, "WIDEVINE_L1"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const-string/jumbo v1, "WIDEVINE_L3"

    const-string/jumbo v2, "L3-"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 6
    new-array v0, v6, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ESN_VALUE:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->NCCP_VALUE:I

    .line 18
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->LEGACY:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 32
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
