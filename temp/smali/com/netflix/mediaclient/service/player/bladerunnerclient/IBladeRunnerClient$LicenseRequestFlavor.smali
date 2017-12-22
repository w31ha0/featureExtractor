.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;
.super Ljava/lang/Enum;
.source "IBladeRunnerClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field public static final enum LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field public static final enum OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    const-string/jumbo v1, "STANDARD"

    const-string/jumbo v2, "standard"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    const-string/jumbo v1, "LIMITED"

    const-string/jumbo v2, "limited"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "offline"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->value:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 80
    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    :goto_1
    return-object v0

    .line 79
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->value:Ljava/lang/String;

    return-object v0
.end method
