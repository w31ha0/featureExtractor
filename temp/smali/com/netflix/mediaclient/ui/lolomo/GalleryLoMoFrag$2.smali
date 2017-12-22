.class Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GalleryLoMoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 170
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_1
    if-nez p1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
