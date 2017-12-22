.class public final enum Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
.super Ljava/lang/Enum;
.source "BaseNflxHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum CLIP_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum DISC_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum MOVIE_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum NO_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum PERSON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum PROGRAM_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum SEASON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field public static final enum SERIES_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

.field private static final hashOrdToType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 116
    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "NO_TYPE"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->NO_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 117
    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "MOVIE_TYPE"

    invoke-direct {v1, v2, v4}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->MOVIE_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "DISC_TYPE"

    invoke-direct {v1, v2, v5}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->DISC_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "PROGRAM_TYPE"

    invoke-direct {v1, v2, v6}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->PROGRAM_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "SERIES_TYPE"

    invoke-direct {v1, v2, v7}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->SERIES_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "SEASON_TYPE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->SEASON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "CLIP_TYPE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->CLIP_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    new-instance v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    const-string/jumbo v2, "PERSON_TYPE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->PERSON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 115
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->NO_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v1, v0

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->MOVIE_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v1, v4

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->DISC_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v1, v5

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->PROGRAM_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v1, v6

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->SERIES_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->SEASON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->CLIP_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->PERSON_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    aput-object v3, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->$VALUES:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    .line 119
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->hashOrdToType:Landroid/util/SparseArray;

    .line 121
    invoke-static {}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->values()[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    move-result-object v1

    .line 122
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 123
    sget-object v4, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->hashOrdToType:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ordinalToType(I)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->hashOrdToType:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->$VALUES:[Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    return-object v0
.end method
