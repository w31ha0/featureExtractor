.class public final enum Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;
.super Ljava/lang/Enum;
.source "ApplicationPerformanceMetricsLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

.field public static final enum appClose:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

.field public static final enum logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

.field public static final enum timeout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 480
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->timeout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 481
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    const-string/jumbo v1, "appClose"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->appClose:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 482
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 479
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->timeout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->appClose:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

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
    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;
    .locals 1

    .prologue
    .line 479
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    return-object v0
.end method
