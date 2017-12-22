.class public final enum Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;
.super Ljava/lang/Enum;
.source "JsonWebEncryptionLadderExchange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

.field public static final enum PSK:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

.field public static final enum WRAP:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    const-string/jumbo v1, "PSK"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->PSK:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    .line 85
    new-instance v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    const-string/jumbo v1, "WRAP"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->WRAP:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    sget-object v1, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->PSK:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->WRAP:Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->$VALUES:[Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->$VALUES:[Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    invoke-virtual {v0}, [Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/keyx/JsonWebEncryptionLadderExchange$Mechanism;

    return-object v0
.end method
