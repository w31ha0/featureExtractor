.class public final enum Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;
.super Ljava/lang/Enum;
.source "VpadnAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VpadnErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

.field public static final enum NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

.field private static final synthetic a:[Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .line 51
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INVALID_REQUEST:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .line 53
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .line 55
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INVALID_REQUEST:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->a:[Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->a:[Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-virtual {v0}, [Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    return-object v0
.end method
