.class public final enum Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

.field public static final enum RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

.field public static final enum SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    const-string v1, "RUN_ASAP"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    .line 418
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    const-string v1, "SCHEDULE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->$VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

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
    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;
    .locals 1

    .prologue
    .line 407
    const-class v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->$VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    return-object v0
.end method
