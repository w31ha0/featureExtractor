.class public final enum Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

.field public static final enum BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

.field public static final enum MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    .line 401
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    const-string v1, "BACKGROUND_THREAD"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->$VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

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
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;
    .locals 1

    .prologue
    .line 398
    const-class v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->$VALUES:[Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    return-object v0
.end method
