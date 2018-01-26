.class public Lcom/biznessapps/activities/GalleryActivity;
.super Lcom/biznessapps/activities/CommonFragmentActivity;
.source "GalleryActivity.java"


# instance fields
.field private galleryData:Lcom/biznessapps/model/GalleryData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/activities/GalleryActivity;->galleryData:Lcom/biznessapps/model/GalleryData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/activities/GalleryActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/GalleryActivity;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method private getCoverFlowAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/biznessapps/layout/adapters/ImageAdapter;

    iget-object v1, p0, Lcom/biznessapps/activities/GalleryActivity;->galleryData:Lcom/biznessapps/model/GalleryData;

    invoke-virtual {v1}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$layout;->coverflow_item_layout:I

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/biznessapps/layout/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    return-object v0
.end method

.method private getGalleryAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/biznessapps/layout/adapters/ImageAdapter;

    iget-object v1, p0, Lcom/biznessapps/activities/GalleryActivity;->galleryData:Lcom/biznessapps/model/GalleryData;

    invoke-virtual {v1}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    invoke-direct {v0, p1, v1, v2}, Lcom/biznessapps/layout/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-object v0
.end method

.method private getOnCoverflowItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/biznessapps/activities/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/activities/GalleryActivity$1;-><init>(Lcom/biznessapps/activities/GalleryActivity;)V

    return-object v0
.end method

.method private getOnGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/biznessapps/activities/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/activities/GalleryActivity$2;-><init>(Lcom/biznessapps/activities/GalleryActivity;)V

    return-object v0
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 6
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "WEB_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_layout:I

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/biznessapps/activities/CommonFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "GALLERY_DATA_EXTRA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/GalleryData;

    iput-object v2, p0, Lcom/biznessapps/activities/GalleryActivity;->galleryData:Lcom/biznessapps/model/GalleryData;

    .line 32
    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity;->galleryData:Lcom/biznessapps/model/GalleryData;

    invoke-virtual {v2}, Lcom/biznessapps/model/GalleryData;->isUseCoverflow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    sget v2, Lcom/biznessapps/layout/R$id;->gallery_view_coverflow:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/activities/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/TabGallery;

    .line 34
    .local v0, "coverGallery":Lcom/biznessapps/widgets/TabGallery;
    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/biznessapps/activities/GalleryActivity;->getCoverFlowAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/TabGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 35
    invoke-direct {p0}, Lcom/biznessapps/activities/GalleryActivity;->getOnCoverflowItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/TabGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/TabGallery;->setVisibility(I)V

    .line 43
    .end local v0    # "coverGallery":Lcom/biznessapps/widgets/TabGallery;
    :goto_0
    return-void

    .line 38
    :cond_0
    sget v2, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/activities/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 39
    .local v1, "galleryView":Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/biznessapps/activities/GalleryActivity;->getGalleryAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/activities/GalleryActivity;->getOnGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
