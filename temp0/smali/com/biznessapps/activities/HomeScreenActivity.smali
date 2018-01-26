.class public Lcom/biznessapps/activities/HomeScreenActivity;
.super Lcom/biznessapps/activities/CommonTabFragmentActivity;
.source "HomeScreenActivity.java"


# static fields
.field private static final COLUMNS_LIMIT:I = 0x6

.field private static final DEFAULT_COLUMNS_COUNT:I = 0x4

.field private static final DEFAULT_ROWS_COUNT:I = 0x1

.field private static final ROWS_LIMIT:I = 0x4


# instance fields
.field private bitmapUrl:Ljava/lang/String;

.field private columnCount:I

.field private hasManyImages:Z

.field private headerView:Landroid/widget/ImageView;

.field private layoutId:I

.field private newDesignApp:Lcom/biznessapps/model/App;

.field private rootView:Landroid/view/ViewGroup;

.field private rowCount:I

.field private tabCircles:Landroid/view/ViewGroup;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/HomeScreenActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/activities/HomeScreenActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/HomeScreenActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->hasManyImages:Z

    return v0
.end method

.method static synthetic access$200(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/HomeScreenActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v0

    return-object v0
.end method

.method private getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method private setHeaderBackground()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getHeaderSrc()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "headerSrc":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/activities/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/activities/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRootBackground()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    invoke-virtual {v2}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->bitmapUrl:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/HomeScreenActivity;->bitmapUrl:Ljava/lang/String;

    new-instance v3, Lcom/biznessapps/activities/HomeScreenActivity$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/activities/HomeScreenActivity$2;-><init>(Lcom/biznessapps/activities/HomeScreenActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->layoutId:I

    return v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
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
    .line 65
    iget-object v0, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    return-object v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->initViews()V

    .line 107
    sget v1, Lcom/biznessapps/layout/R$id;->home_screen_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    .line 108
    sget v1, Lcom/biznessapps/layout/R$id;->home_screen_header:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    .line 109
    sget v1, Lcom/biznessapps/layout/R$id;->tab_viewpager:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/CustomizableViewPager;

    iput-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    .line 110
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    new-instance v2, Lcom/biznessapps/activities/HomeScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/activities/HomeScreenActivity$1;-><init>(Lcom/biznessapps/activities/HomeScreenActivity;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabFragmentsList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->setRootBackground()V

    .line 144
    invoke-direct {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->setHeaderBackground()V

    .line 145
    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabFragmentsList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;-><init>(Lcom/biznessapps/activities/CommonTabFragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 139
    .local v0, "tabAdapter":Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    invoke-virtual {v1, v0}, Lcom/biznessapps/fragments/CustomizableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    iget v2, p0, Lcom/biznessapps/activities/HomeScreenActivity;->selectedItem:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method protected loadFragments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v5, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    invoke-virtual {v5}, Lcom/biznessapps/model/App;->hasManyImages()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/biznessapps/activities/HomeScreenActivity;->hasManyImages:Z

    .line 151
    iget-boolean v5, p0, Lcom/biznessapps/activities/HomeScreenActivity;->hasManyImages:Z

    if-eqz v5, :cond_1

    .line 152
    iget-object v5, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    invoke-virtual {v5}, Lcom/biznessapps/model/App;->getImagesInOrder()Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-direct {v2}, Lcom/biznessapps/fragments/single/ImageFragment;-><init>()V

    .line 155
    .local v2, "imageFragment":Lcom/biznessapps/fragments/single/ImageFragment;
    invoke-virtual {v2, v4}, Lcom/biznessapps/fragments/single/ImageFragment;->setUrl(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v6}, Lcom/biznessapps/fragments/single/ImageFragment;->setRetainInstance(Z)V

    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageFragment":Lcom/biznessapps/fragments/single/ImageFragment;
    .end local v3    # "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 160
    :cond_1
    new-instance v2, Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-direct {v2}, Lcom/biznessapps/fragments/single/ImageFragment;-><init>()V

    .line 161
    .restart local v2    # "imageFragment":Lcom/biznessapps/fragments/single/ImageFragment;
    invoke-virtual {v2, v6}, Lcom/biznessapps/fragments/single/ImageFragment;->setRetainInstance(Z)V

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "imageFragment":Lcom/biznessapps/fragments/single/ImageFragment;
    :cond_2
    return-object v0
.end method

.method protected loadTabFragments()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->getTabsItems()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    .line 173
    const/4 v5, 0x0

    .line 174
    .local v5, "numberOfFragment":I
    iget-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 175
    .local v6, "tabCount":I
    :goto_0
    if-lez v6, :cond_0

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    iget v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    iget v8, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    goto :goto_0

    .line 179
    :cond_0
    if-lez v5, :cond_1

    .line 180
    sget v7, Lcom/biznessapps/layout/R$id;->tabs_navigation_container:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    .line 181
    iget-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 184
    new-instance v3, Lcom/biznessapps/fragments/single/HomePartFragment;

    invoke-direct {v3}, Lcom/biznessapps/fragments/single/HomePartFragment;-><init>()V

    .line 185
    .local v3, "hp":Lcom/biznessapps/fragments/single/HomePartFragment;
    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    iget v9, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    mul-int/2addr v8, v9

    mul-int v2, v7, v8

    .line 186
    .local v2, "highLimit":I
    iget-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 187
    iget-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 189
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabs:Ljava/util/List;

    iget v9, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    iget v10, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    mul-int/2addr v9, v10

    mul-int/2addr v9, v4

    invoke-interface {v8, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v7}, Lcom/biznessapps/fragments/single/HomePartFragment;->setTabs(Ljava/util/List;)V

    .line 190
    iget v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    invoke-virtual {v3, v7}, Lcom/biznessapps/fragments/single/HomePartFragment;->setRowCount(I)V

    .line 191
    iget v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    invoke-virtual {v3, v7}, Lcom/biznessapps/fragments/single/HomePartFragment;->setColumnCount(I)V

    .line 192
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/biznessapps/fragments/single/HomePartFragment;->setRetainInstance(Z)V

    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/biznessapps/activities/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->circle_image:I

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .local v0, "circleImage":Landroid/widget/ImageView;
    invoke-virtual {v0, v12, v11, v12, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 196
    if-nez v4, :cond_3

    .line 197
    sget v7, Lcom/biznessapps/layout/R$drawable;->selected_circle:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :goto_2
    iget-object v7, p0, Lcom/biznessapps/activities/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    :cond_3
    sget v7, Lcom/biznessapps/layout/R$drawable;->unselected_circle:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 204
    .end local v0    # "circleImage":Landroid/widget/ImageView;
    .end local v2    # "highLimit":I
    .end local v3    # "hp":Lcom/biznessapps/fragments/single/HomePartFragment;
    :cond_4
    return-object v1
.end method

.method protected onPreInit()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 70
    invoke-super {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->onPreInit()V

    .line 71
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    const-string v2, "APP_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/App;

    iput-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/model/App;

    .line 74
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 75
    .local v0, "settings":Lcom/biznessapps/model/AppSettings;
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getRows()I

    move-result v1

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    .line 76
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getCols()I

    move-result v1

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    .line 79
    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    if-le v1, v3, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    .line 82
    :cond_1
    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_3

    .line 83
    :cond_2
    iput v3, p0, Lcom/biznessapps/activities/HomeScreenActivity;->columnCount:I

    .line 86
    :cond_3
    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 87
    sget v1, Lcom/biznessapps/layout/R$layout;->home_screen_layout_2row:I

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->layoutId:I

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_4
    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 89
    sget v1, Lcom/biznessapps/layout/R$layout;->home_screen_layout_3row:I

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->layoutId:I

    goto :goto_0

    .line 90
    :cond_5
    iget v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->rowCount:I

    if-ne v1, v3, :cond_6

    .line 91
    sget v1, Lcom/biznessapps/layout/R$layout;->home_screen_layout_4row:I

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->layoutId:I

    goto :goto_0

    .line 95
    :cond_6
    sget v1, Lcom/biznessapps/layout/R$layout;->home_screen_layout_1row:I

    iput v1, p0, Lcom/biznessapps/activities/HomeScreenActivity;->layoutId:I

    goto :goto_0
.end method
