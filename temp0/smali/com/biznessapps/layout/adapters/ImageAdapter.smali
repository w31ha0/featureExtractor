.class public Lcom/biznessapps/layout/adapters/ImageAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/GalleryData$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private useImageReflection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/GalleryData$Item;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "useImageReflection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/GalleryData$Item;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 33
    iput-boolean p4, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->useImageReflection:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    if-nez p2, :cond_2

    .line 40
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->layoutItemResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;-><init>()V

    .line 43
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;
    sget v3, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;->setImage(Landroid/widget/ImageView;)V

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/GalleryData$Item;

    .line 51
    .local v1, "item":Lcom/biznessapps/model/GalleryData$Item;
    if-eqz v1, :cond_1

    .line 52
    const-string v3, "http://www.biznessapps.com/gallery_thumbnails.php?id=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/model/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "url":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->useImageReflection:Z

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&width=460"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;->getImage()Landroid/widget/ImageView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/biznessapps/layout/adapters/ImageAdapter;->useImageReflection:Z

    invoke-virtual {v3, v2, v4, v5}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 58
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 46
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;
    .end local v1    # "item":Lcom/biznessapps/model/GalleryData$Item;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$GalleryItem;
    goto :goto_0
.end method
