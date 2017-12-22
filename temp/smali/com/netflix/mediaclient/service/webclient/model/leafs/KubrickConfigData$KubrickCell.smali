.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
.super Ljava/lang/Enum;
.source "KubrickConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

.field public static final enum CONTROL:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

.field public static final enum KUBRICK_HERO_IMAGES:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

.field public static final enum KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;


# instance fields
.field private final cellId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    const-string/jumbo v1, "CONTROL"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->CONTROL:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    const-string/jumbo v1, "KUBRICK_HERO_IMAGES"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->KUBRICK_HERO_IMAGES:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    const-string/jumbo v1, "KUBRICK_HIGH_DENSITY"

    invoke-direct {v0, v1, v3, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    .line 12
    new-array v0, v5, [Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->CONTROL:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->KUBRICK_HERO_IMAGES:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->cellId:I

    .line 21
    return-void
.end method

.method static synthetic access$000(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    move-result-object v0

    return-object v0
.end method

.method private static fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 25
    iget v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->cellId:I

    if-ne v4, p0, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    return-object v0
.end method
