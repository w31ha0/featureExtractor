.class public final enum Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;
.super Ljava/lang/Enum;
.source "Advisory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

.field public static final enum END:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

.field public static final enum START:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

.field public static final enum UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->START:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    .line 61
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v3}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->END:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    .line 62
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->START:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->END:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->$VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;
    .locals 1

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 70
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->$VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/advisory/Advisory$DisplayLocation;

    return-object v0
.end method
