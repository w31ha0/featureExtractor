.class public final enum Lcom/facebook/ads/AdSettings$TestAdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestAdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdSettings$TestAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_NHD_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_NHD_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field private static final synthetic b:[Lcom/facebook/ads/AdSettings$TestAdType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "DEFAULT"

    const-string v2, "DEFAULT"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "IMG_16_9_APP_INSTALL"

    const-string v2, "IMG_16_9_APP_INSTALL"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "IMG_16_9_LINK"

    const-string v2, "IMG_16_9_LINK"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_NHD_46S_APP_INSTALL"

    const-string v2, "VID_NHD_46S_APP_INSTALL"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_NHD_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_NHD_46S_LINK"

    const-string v2, "VID_NHD_46S_LINK"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_NHD_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "CAROUSEL_IMG_SQUARE_APP_INSTALL"

    const/4 v2, 0x5

    const-string v3, "CAROUSEL_IMG_SQUARE_APP_INSTALL"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "CAROUSEL_IMG_SQUARE_LINK"

    const/4 v2, 0x6

    const-string v3, "CAROUSEL_IMG_SQUARE_LINK"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/ads/AdSettings$TestAdType;

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_NHD_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_NHD_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->b:[Lcom/facebook/ads/AdSettings$TestAdType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/AdSettings$TestAdType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSettings$TestAdType;
    .locals 1

    const-class v0, Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdSettings$TestAdType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdSettings$TestAdType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->b:[Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSettings$TestAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSettings$TestAdType;

    return-object v0
.end method


# virtual methods
.method public getAdTypeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdSettings$TestAdType;->a:Ljava/lang/String;

    return-object v0
.end method
