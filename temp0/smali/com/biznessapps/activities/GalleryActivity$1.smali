.class Lcom/biznessapps/activities/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/GalleryActivity;->getOnCoverflowItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 56
    iput-object p1, p0, Lcom/biznessapps/activities/GalleryActivity$1;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 59
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/biznessapps/activities/GalleryActivity$1;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryActivity;->access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryActivity$1;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/GalleryActivity;->access$000(Lcom/biznessapps/activities/GalleryActivity;)Lcom/biznessapps/model/GalleryData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/GalleryData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/GalleryData$Item;

    .line 61
    .local v0, "currentItem":Lcom/biznessapps/model/GalleryData$Item;
    invoke-virtual {v0}, Lcom/biznessapps/model/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/biznessapps/activities/GalleryActivity$1;->this$0:Lcom/biznessapps/activities/GalleryActivity;

    invoke-virtual {v0}, Lcom/biznessapps/model/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/activities/GalleryActivity;->access$100(Lcom/biznessapps/activities/GalleryActivity;Ljava/lang/String;)V

    .line 65
    .end local v0    # "currentItem":Lcom/biznessapps/model/GalleryData$Item;
    :cond_0
    return-void
.end method
