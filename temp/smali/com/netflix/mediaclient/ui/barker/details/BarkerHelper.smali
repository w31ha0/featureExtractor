.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;
.super Ljava/lang/Object;
.source "BarkerHelper.java"


# static fields
.field public static final FULL_SCREEN_COLUMNS:I = 0xc

.field public static MAX_PERCENT_SCREEN_HEIGHT_OF_DP_ARTWORK:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->MAX_PERCENT_SCREEN_HEIGHT_OF_DP_ARTWORK:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v1, v2, :cond_0

    .line 35
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
