.class public final enum Lcom/vpadn/ads/VpadnAdRequest$Gender;
.super Ljava/lang/Enum;
.source "VpadnAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vpadn/ads/VpadnAdRequest$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

.field public static final enum MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

.field public static final enum UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

.field private static final synthetic a:[Lcom/vpadn/ads/VpadnAdRequest$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v2}, Lcom/vpadn/ads/VpadnAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->FEMALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    .line 38
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    .line 40
    new-instance v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/vpadn/ads/VpadnAdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vpadn/ads/VpadnAdRequest$Gender;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->FEMALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->a:[Lcom/vpadn/ads/VpadnAdRequest$Gender;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest$Gender;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;

    return-object v0
.end method

.method public static values()[Lcom/vpadn/ads/VpadnAdRequest$Gender;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->a:[Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v0}, [Lcom/vpadn/ads/VpadnAdRequest$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vpadn/ads/VpadnAdRequest$Gender;

    return-object v0
.end method
