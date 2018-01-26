.class public Lcom/biznessapps/fragments/single/GalleryFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "GalleryFragment.java"


# instance fields
.field private galleryData:Lcom/biznessapps/model/GalleryData;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GALLERY_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    .line 62
    iget-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string v0, "http://www.biznessapps.com/iphone/gallery.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->root:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/GalleryFragment;->loadData()V

    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->tabId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseGalleryMetadata(Ljava/lang/String;)Lcom/biznessapps/model/GalleryData;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GALLERY_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "openGalleryIntent":Landroid/content/Intent;
    const-string v1, "GALLERY_DATA_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/GalleryFragment;->galleryData:Lcom/biznessapps/model/GalleryData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/GalleryFragment;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 57
    .end local v0    # "openGalleryIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/GalleryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->wait_till_images_loading:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method
