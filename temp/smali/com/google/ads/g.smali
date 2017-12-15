.class public final enum Lcom/google/ads/g;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/google/ads/g;

.field private static enum b:Lcom/google/ads/g;

.field private static final synthetic d:[Lcom/google/ads/g;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/g;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    new-instance v0, Lcom/google/ads/g;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/g;

    sget-object v1, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/g;->d:[Lcom/google/ads/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/ads/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/g;
    .locals 1

    const-class v0, Lcom/google/ads/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/g;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/g;
    .locals 1

    sget-object v0, Lcom/google/ads/g;->d:[Lcom/google/ads/g;

    invoke-virtual {v0}, [Lcom/google/ads/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/g;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/g;->c:Ljava/lang/String;

    return-object v0
.end method
