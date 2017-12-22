.class public final enum Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
.super Ljava/lang/Enum;
.source "MslConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field public static final enum GZIP:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

.field public static final enum LZW:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    const-string/jumbo v1, "GZIP"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->GZIP:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 47
    new-instance v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    const-string/jumbo v1, "LZW"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->LZW:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->GZIP:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->LZW:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->$VALUES:[Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPreferredAlgorithm(Ljava/util/Set;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;)",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->values()[Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v2

    .line 61
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 62
    aget-object v1, v2, v0

    .line 63
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 66
    :goto_1
    return-object v0

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->$VALUES:[Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    return-object v0
.end method
