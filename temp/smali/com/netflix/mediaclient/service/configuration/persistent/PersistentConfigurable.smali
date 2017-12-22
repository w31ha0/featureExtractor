.class public abstract Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.super Ljava/lang/Object;
.source "PersistentConfigurable.java"


# static fields
.field private static final EXPLICIT_SUFFIX:Ljava/lang/String; = ".explicit"

.field private static final TAG:Ljava/lang/String; = "PersistentConfigurable"


# instance fields
.field private mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

.field private final mCellLock:Ljava/lang/Object;

.field private mExplicit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCellLock:Ljava/lang/Object;

    return-void
.end method

.method private checkCanaryCellForDebugBuild(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCellLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".explicit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCanaryCellToAllocateOnDebugBuild()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getDefaultCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 70
    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCellLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".explicit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mExplicit:Z

    .line 77
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_1

    .line 79
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABTestLoadedEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 83
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCellCount()I
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getConfiguration(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPrefKey()Ljava/lang/String;
.end method

.method public abstract getTestId()Ljava/lang/String;
.end method

.method public isExplicit(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mExplicit:Z

    return v0
.end method

.method public isMobileOnly()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isTabletOnly()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCellLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected shouldForceUpdateMemory()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getDefaultCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 130
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getABTestConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getConfiguration(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".explicit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABTestReceivedEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->checkCanaryCellForDebugBuild(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->shouldForceUpdateMemory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCellLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->mCell:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 147
    monitor-exit v1

    .line 149
    :cond_2
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
