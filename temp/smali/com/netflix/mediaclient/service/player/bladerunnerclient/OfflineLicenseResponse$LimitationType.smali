.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;
.super Ljava/lang/Enum;
.source "OfflineLicenseResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

.field public static final enum Download:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

.field public static final enum License:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

.field public static final enum Unlimited:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    const-string/jumbo v1, "License"

    const-string/jumbo v2, "license"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->License:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    .line 171
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    const-string/jumbo v1, "Download"

    const-string/jumbo v2, "download"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->Download:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    const-string/jumbo v1, "Unlimited"

    const-string/jumbo v2, "unlimited"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->Unlimited:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    .line 173
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->License:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->Download:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->Unlimited:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->mValue:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 183
    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    :goto_1
    return-object v0

    .line 182
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse$LimitationType;->mValue:Ljava/lang/String;

    return-object v0
.end method
