.class final enum Lcom/amazon/device/ads/ActionCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/ActionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/ActionCode;

.field public static final enum DISPLAY:Lcom/amazon/device/ads/ActionCode;

.field public static final enum HANDLED:Lcom/amazon/device/ads/ActionCode;

.field public static final enum REJECT:Lcom/amazon/device/ads/ActionCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/amazon/device/ads/ActionCode;

    const-string v1, "REJECT"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/ActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ActionCode;->REJECT:Lcom/amazon/device/ads/ActionCode;

    .line 17
    new-instance v0, Lcom/amazon/device/ads/ActionCode;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/ActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/ActionCode;

    const-string v1, "HANDLED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/ActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ActionCode;->HANDLED:Lcom/amazon/device/ads/ActionCode;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/device/ads/ActionCode;

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->REJECT:Lcom/amazon/device/ads/ActionCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->HANDLED:Lcom/amazon/device/ads/ActionCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/device/ads/ActionCode;->$VALUES:[Lcom/amazon/device/ads/ActionCode;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ActionCode;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/amazon/device/ads/ActionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ActionCode;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/ActionCode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/amazon/device/ads/ActionCode;->$VALUES:[Lcom/amazon/device/ads/ActionCode;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/ActionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/ActionCode;

    return-object v0
.end method
