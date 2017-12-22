.class public final Lcom/netflix/mediaclient/service/configuration/PersistentConfig;
.super Ljava/lang/Object;
.source "PersistentConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistentConfig"

.field private static sConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/DataNetworkRequestConfig;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/DataNetworkRequestConfig;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/DataNetworkRequestConfig;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7888;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7888;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7888;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8332;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8332;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8332;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8355;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8355;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8355;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8388;

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8388;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8388;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static delete(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    .line 160
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->delete(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public static getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getConfigForTest(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getCellIdForTest(Ljava/lang/Class;Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getConfigForTest(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v0

    return v0
.end method

.method public static getConfigForTest(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You forgot to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to sConfigs in PersistentConfig!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-object v0
.end method

.method public static getConfigValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static isGuidanceTutorial(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 151
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_4:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLaunchTutorial(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 141
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/OfflineTutorial;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_5:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnRampTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 132
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/OnRamp;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refresh()V
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    .line 170
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->refresh()V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public static update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 2

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->sConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    .line 100
    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    goto :goto_0
.end method
