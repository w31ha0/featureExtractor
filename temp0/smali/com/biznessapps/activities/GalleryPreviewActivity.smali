.class public Lcom/biznessapps/activities/GalleryPreviewActivity;
.super Lcom/biznessapps/activities/CommonFragmentActivity;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;
    }
.end annotation


# static fields
.field private static galleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPos:I

.field private downloader:Lcom/biznessapps/utils/ImageDownloader;

.field private final gestureListener:Landroid/view/GestureDetector;

.field private imageTextWebView:Landroid/webkit/WebView;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;-><init>()V

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/activities/GalleryPreviewActivity$ImageGestureListener;-><init>(Lcom/biznessapps/activities/GalleryPreviewActivity;Lcom/biznessapps/activities/GalleryPreviewActivity$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->gestureListener:Landroid/view/GestureDetector;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    .line 44
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader;

    invoke-direct {v0}, Lcom/biznessapps/utils/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->downloader:Lcom/biznessapps/utils/ImageDownloader;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/activities/GalleryPreviewActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->gestureListener:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/activities/GalleryPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$208(Lcom/biznessapps/activities/GalleryPreviewActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$210(Lcom/biznessapps/activities/GalleryPreviewActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/biznessapps/activities/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/activities/GalleryPreviewActivity;Lcom/biznessapps/model/GalleryData$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/GalleryPreviewActivity;
    .param p1, "x1"    # Lcom/biznessapps/model/GalleryData$Item;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/GalleryPreviewActivity;->setImage(Lcom/biznessapps/model/GalleryData$Item;)V

    return-void
.end method

.method public static getGalleryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/biznessapps/activities/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    return-object v0
.end method

.method public static setGalleryItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/GalleryData$Item;>;"
    sput-object p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    .line 34
    return-void
.end method

.method private setImage(Lcom/biznessapps/model/GalleryData$Item;)V
    .locals 7
    .param p1, "item"    # Lcom/biznessapps/model/GalleryData$Item;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->downloader:Lcom/biznessapps/utils/ImageDownloader;

    const-string v3, "http://www.biznessapps.com/gallery_images/%s.jpg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/biznessapps/model/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 85
    invoke-virtual {p1}, Lcom/biznessapps/model/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<body>"

    const-string v4, "<body bgcolor=\"#000000\" text=\"#ffffff\">"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "itemInfo":Ljava/lang/String;
    const-string v0, "<p>"

    const-string v3, "<p align=\"center\">"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->imageTextWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2    # "itemInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_preview_layout:I

    return v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/biznessapps/activities/CommonFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v2, Lcom/biznessapps/layout/R$id;->gallery_image_preview:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->imageView:Landroid/widget/ImageView;

    .line 51
    sget v2, Lcom/biznessapps/layout/R$id;->gallery_text_preview:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->imageTextWebView:Landroid/webkit/WebView;

    .line 53
    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gallery_preview_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData$Item;

    .line 55
    .local v0, "item":Lcom/biznessapps/model/GalleryData$Item;
    invoke-virtual {p0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gallery_current_position_extra"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/GalleryPreviewActivity;->currentPos:I

    .line 57
    invoke-direct {p0, v0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->setImage(Lcom/biznessapps/model/GalleryData$Item;)V

    .line 59
    sget v2, Lcom/biznessapps/layout/R$id;->gallery_preview_root:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/biznessapps/activities/GalleryPreviewActivity$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/activities/GalleryPreviewActivity$1;-><init>(Lcom/biznessapps/activities/GalleryPreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    return-void
.end method
