.class final enum Lorg/chromium/base/PerfTraceEvent$EventType;
.super Ljava/lang/Enum;
.source "PerfTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/base/PerfTraceEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/base/PerfTraceEvent$EventType;

.field public static final enum FINISH:Lorg/chromium/base/PerfTraceEvent$EventType;

.field public static final enum INSTANT:Lorg/chromium/base/PerfTraceEvent$EventType;

.field public static final enum START:Lorg/chromium/base/PerfTraceEvent$EventType;


# instance fields
.field private final mTypeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lorg/chromium/base/PerfTraceEvent$EventType;

    const-string/jumbo v1, "START"

    const-string/jumbo v2, "S"

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/base/PerfTraceEvent$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/base/PerfTraceEvent$EventType;->START:Lorg/chromium/base/PerfTraceEvent$EventType;

    .line 50
    new-instance v0, Lorg/chromium/base/PerfTraceEvent$EventType;

    const-string/jumbo v1, "FINISH"

    const-string/jumbo v2, "F"

    invoke-direct {v0, v1, v4, v2}, Lorg/chromium/base/PerfTraceEvent$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/base/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/base/PerfTraceEvent$EventType;

    .line 51
    new-instance v0, Lorg/chromium/base/PerfTraceEvent$EventType;

    const-string/jumbo v1, "INSTANT"

    const-string/jumbo v2, "I"

    invoke-direct {v0, v1, v5, v2}, Lorg/chromium/base/PerfTraceEvent$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/base/PerfTraceEvent$EventType;->INSTANT:Lorg/chromium/base/PerfTraceEvent$EventType;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/base/PerfTraceEvent$EventType;

    sget-object v1, Lorg/chromium/base/PerfTraceEvent$EventType;->START:Lorg/chromium/base/PerfTraceEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/base/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/base/PerfTraceEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/base/PerfTraceEvent$EventType;->INSTANT:Lorg/chromium/base/PerfTraceEvent$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/base/PerfTraceEvent$EventType;->$VALUES:[Lorg/chromium/base/PerfTraceEvent$EventType;

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

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lorg/chromium/base/PerfTraceEvent$EventType;->mTypeStr:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/base/PerfTraceEvent$EventType;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/chromium/base/PerfTraceEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/PerfTraceEvent$EventType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/base/PerfTraceEvent$EventType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/chromium/base/PerfTraceEvent$EventType;->$VALUES:[Lorg/chromium/base/PerfTraceEvent$EventType;

    invoke-virtual {v0}, [Lorg/chromium/base/PerfTraceEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/base/PerfTraceEvent$EventType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/base/PerfTraceEvent$EventType;->mTypeStr:Ljava/lang/String;

    return-object v0
.end method
