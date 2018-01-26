.class Lcom/biznessapps/activities/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/GalleryActivity;->getOnGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/GalleryActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryActivity;->access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 76
    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryActivity;->access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData$Item;

    .line 77
    .local v0, "currentItem":Lcom/biznessapps/model/GalleryData$Item;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-virtual {v2}, Lcom/biznessapps/activities/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v1, "previewIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryActivity;->access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/activities/GalleryPreviewActivity;->setGalleryItems(Ljava/util/List;)V

    .line 79
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "gallery_preview_extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const-string v2, "gallery_current_position_extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/biznessapps/activities/GalleryActivity$2;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-virtual {v2, v1}, Lcom/biznessapps/activities/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0    # "currentItem":Lcom/biznessapps/model/GalleryData$Item;
    .end local v1    # "previewIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
