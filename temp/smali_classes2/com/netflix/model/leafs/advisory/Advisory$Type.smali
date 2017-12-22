.class public final enum Lcom/netflix/model/leafs/advisory/Advisory$Type;
.super Ljava/lang/Enum;
.source "Advisory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/advisory/Advisory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$Type;

.field public static final enum CONTENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

.field public static final enum EXPIRY_NOTICE:Lcom/netflix/model/leafs/advisory/Advisory$Type;

.field public static final enum PRODUCT_PLACEMENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

.field public static final enum UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    const-string/jumbo v1, "EXPIRY_NOTICE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/advisory/Advisory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->EXPIRY_NOTICE:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    .line 45
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    const-string/jumbo v1, "CONTENT_ADVISORY"

    invoke-direct {v0, v1, v3}, Lcom/netflix/model/leafs/advisory/Advisory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->CONTENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    .line 46
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    const-string/jumbo v1, "PRODUCT_PLACEMENT_ADVISORY"

    invoke-direct {v0, v1, v4}, Lcom/netflix/model/leafs/advisory/Advisory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->PRODUCT_PLACEMENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    .line 47
    new-instance v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/netflix/model/leafs/advisory/Advisory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/model/leafs/advisory/Advisory$Type;

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$Type;->EXPIRY_NOTICE:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$Type;->CONTENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$Type;->PRODUCT_PLACEMENT_ADVISORY:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/model/leafs/advisory/Advisory$Type;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->$VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/Advisory$Type;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 55
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->UNKNOWN:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/advisory/Advisory$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/netflix/model/leafs/advisory/Advisory$Type;->$VALUES:[Lcom/netflix/model/leafs/advisory/Advisory$Type;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/advisory/Advisory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/advisory/Advisory$Type;

    return-object v0
.end method
