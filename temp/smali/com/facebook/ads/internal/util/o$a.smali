.class public final enum Lcom/facebook/ads/internal/util/o$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/util/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/util/o$a;

.field public static final enum b:Lcom/facebook/ads/internal/util/o$a;

.field public static final enum c:Lcom/facebook/ads/internal/util/o$a;

.field private static final synthetic e:[Lcom/facebook/ads/internal/util/o$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/util/o$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/util/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/o$a;->a:Lcom/facebook/ads/internal/util/o$a;

    new-instance v0, Lcom/facebook/ads/internal/util/o$a;

    const-string v1, "UNROOTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/util/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/o$a;->b:Lcom/facebook/ads/internal/util/o$a;

    new-instance v0, Lcom/facebook/ads/internal/util/o$a;

    const-string v1, "ROOTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/util/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/o$a;->c:Lcom/facebook/ads/internal/util/o$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/util/o$a;

    sget-object v1, Lcom/facebook/ads/internal/util/o$a;->a:Lcom/facebook/ads/internal/util/o$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/util/o$a;->b:Lcom/facebook/ads/internal/util/o$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/util/o$a;->c:Lcom/facebook/ads/internal/util/o$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/util/o$a;->e:[Lcom/facebook/ads/internal/util/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/util/o$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/util/o$a;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/util/o$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/util/o$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/o$a;->e:[Lcom/facebook/ads/internal/util/o$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/util/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/util/o$a;

    return-object v0
.end method
