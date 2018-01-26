.class public Lcom/biznessapps/api/navigation/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# static fields
.field private static final TAB_LIMIT:I = 0x5

.field private static isNewDesign:Z

.field private static storedTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;"
        }
    .end annotation
.end field

.field private static tabsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

.field private rowTabsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private withOldDesign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    .line 87
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/NavigationManager;->initNavigationBar()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "withOldDesign"    # Z

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    .line 93
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/NavigationManager;->initNavigationBar()V

    .line 94
    iput-boolean p2, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/navigation/NavigationManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->onViewChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private addNewTab(Lcom/biznessapps/model/Tab;ILjava/lang/String;)V
    .locals 9
    .param p1, "tab"    # Lcom/biznessapps/model/Tab;
    .param p2, "imageId"    # I
    .param p3, "tabName"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v7, "comingIntent":Landroid/content/Intent;
    const-string v0, "TAB_UNIQUE_ID"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getId()J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    const-string v0, "ITEMID"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v0, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v0, "URL"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v0, "SECTIONID"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getSectionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v0, "TAB_LABEL"

    invoke-virtual {v7, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "TAB_FRAGMENT"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v0, "TAB"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "imageUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 231
    .local v3, "tabBgUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->hasCustomDesign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getTabSrc()Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->isActive()Z

    move-result v8

    move-object v0, p0

    move v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/biznessapps/api/navigation/NavigationManager;->addTabToNavBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Z)V

    .line 235
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign:Z

    .line 71
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    :cond_0
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method

.method public static getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    return-object v0
.end method

.method public static getTabsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    return-object v0
.end method

.method private goToNewView(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public static hasNewDesign(Z)V
    .locals 0
    .param p0, "isNewDesign"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign:Z

    .line 59
    return-void
.end method

.method private initNavigationBar()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->context:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationBar;

    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/biznessapps/api/navigation/NavigationBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    .line 100
    return-void
.end method

.method public static isNewDesign()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign:Z

    return v0
.end method

.method private onViewChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 198
    invoke-direct {p0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->goToNewView(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public static setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabView;>;"
    sput-object p0, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    .line 51
    return-void
.end method

.method public static setTabsItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "tabsItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    sput-object p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public addLayoutTo(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public addTabToNavBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Intent;Z)V
    .locals 12
    .param p1, "imageResourceId"    # I
    .param p2, "imageResourceUrl"    # Ljava/lang/String;
    .param p3, "bgUrl"    # Ljava/lang/String;
    .param p4, "textResourceId"    # Ljava/lang/String;
    .param p5, "tabId"    # J
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "isActive"    # Z

    .prologue
    .line 145
    new-instance v1, Lcom/biznessapps/api/navigation/TabView;

    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationManager;->context:Landroid/content/Context;

    new-instance v9, Lcom/biznessapps/api/navigation/NavigationManager$1;

    move-object/from16 v0, p7

    invoke-direct {v9, p0, v0}, Lcom/biznessapps/api/navigation/NavigationManager$1;-><init>(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V

    iget-boolean v10, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/biznessapps/api/navigation/TabView;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;ZZ)V

    .line 157
    .local v1, "newTab":Lcom/biznessapps/api/navigation/TabView;
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/navigation/NavigationBar;->addTab(Lcom/biznessapps/api/navigation/TabView;)V

    .line 158
    sget-object v2, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public clearTabs()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->clearTabs()V

    .line 104
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->storedTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method

.method public getCurrentTabSelection()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->getCurrentTab()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowTabsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    return-object v0
.end method

.method public openFirstTab()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->openFirstTab()Z

    move-result v0

    return v0
.end method

.method public resetTabsSelection()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 192
    return-void
.end method

.method public setRowTabsItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "rowTabsItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setTabSelection(J)V
    .locals 1
    .param p1, "tabId"    # J

    .prologue
    .line 167
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/api/navigation/NavigationBar;->setActiveTab(J)V

    .line 168
    return-void
.end method

.method public updateTabs()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 108
    sget-boolean v5, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign:Z

    if-eqz v5, :cond_2

    .line 109
    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    .line 116
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 117
    .local v4, "tabCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, "tabButtons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/Tab;

    .line 119
    .local v2, "tab":Lcom/biznessapps/model/Tab;
    if-lt v4, v7, :cond_1

    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 120
    :cond_1
    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getImageId()I

    move-result v5

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/biznessapps/api/navigation/NavigationManager;->addNewTab(Lcom/biznessapps/model/Tab;ILjava/lang/String;)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tab":Lcom/biznessapps/model/Tab;
    .end local v3    # "tabButtons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    .end local v4    # "tabCount":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    goto :goto_0

    .line 123
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "tab":Lcom/biznessapps/model/Tab;
    .restart local v3    # "tabButtons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    .restart local v4    # "tabCount":I
    :cond_3
    new-instance v5, Lcom/biznessapps/model/TabButton;

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getImageId()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lcom/biznessapps/model/TabButton;-><init>(Lcom/biznessapps/model/Tab;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v2    # "tab":Lcom/biznessapps/model/Tab;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 128
    new-instance v1, Lcom/biznessapps/model/Tab;

    invoke-direct {v1}, Lcom/biznessapps/model/Tab;-><init>()V

    .line 129
    .local v1, "moreTab":Lcom/biznessapps/model/Tab;
    const-string v5, "moreviewcontroller"

    invoke-virtual {v1, v5}, Lcom/biznessapps/model/Tab;->setViewController(Ljava/lang/String;)V

    .line 130
    invoke-static {v3}, Lcom/biznessapps/fragments/single/MoreFragment;->setTabButtons(Ljava/util/List;)V

    .line 132
    sget v5, Lcom/biznessapps/layout/R$drawable;->icon_more:I

    iget-object v6, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    sget v7, Lcom/biznessapps/layout/R$string;->more:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/biznessapps/api/navigation/NavigationManager;->addNewTab(Lcom/biznessapps/model/Tab;ILjava/lang/String;)V

    .line 134
    .end local v1    # "moreTab":Lcom/biznessapps/model/Tab;
    :cond_5
    return-void
.end method
