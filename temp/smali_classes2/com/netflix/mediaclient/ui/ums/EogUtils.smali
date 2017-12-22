.class public final Lcom/netflix/mediaclient/ui/ums/EogUtils;
.super Ljava/lang/Object;
.source "EogUtils.java"


# static fields
.field private static final CELL_WITH_IMAGES:I = 0x5

.field private static final CELL_WITH_ONLY_PLAN_PAGE:I = 0x4

.field public static final INVALID_PLAN_INDEX:I = -0x1

.field public static final LANDING_PAGE_INDEX:I = 0x0

.field private static final PLAN_PAGE_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "eog_utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlanOnlyCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->abTestCell()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmallSizeTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 75
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldGoToLandingPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isPlanOnlyCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldGoToPlanPage(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 1

    .prologue
    .line 39
    if-gtz p0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isPlanOnlyCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowEogAlert(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowOtherPlans(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->seeOtherPlansText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseLayoutWithImages(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->abTestCell()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
