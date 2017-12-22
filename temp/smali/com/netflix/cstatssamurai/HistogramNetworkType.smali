.class final Lcom/netflix/cstatssamurai/HistogramNetworkType;
.super Ljava/lang/Object;
.source "HistogramNetworkType.java"


# static fields
.field public static final HISTOGRAM_NETTYPE_MOBILE:Ljava/lang/String; = "m"

.field public static final HISTOGRAM_NETTYPE_OTHER:Ljava/lang/String; = "o"

.field public static final HISTOGRAM_NETTYPE_WIFI_OR_WIRED:Ljava/lang/String; = "w"

.field public static final allTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/cstatssamurai/HistogramNetworkType;->allTypes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
