.class public Lcom/biznessapps/fragments/single/ImageFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "ImageFragment.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private progressContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/ImageFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->progressContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/ImageFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setImageBackground()V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/biznessapps/fragments/single/ImageFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/ImageFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/biznessapps/fragments/single/ImageFragment;->bitmapUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/fragments/single/ImageFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/fragments/single/ImageFragment$1;-><init>(Lcom/biznessapps/fragments/single/ImageFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget v0, Lcom/biznessapps/layout/R$layout;->image_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->root:Landroid/view/ViewGroup;

    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->home_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->imageView:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->progressContainer:Landroid/view/ViewGroup;

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/ImageFragment;->setImageBackground()V

    .line 41
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ImageFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/fragments/single/ImageFragment;->bitmapUrl:Ljava/lang/String;

    .line 28
    return-void
.end method
