.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

.field final synthetic val$numColumns:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;I)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iput p2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;->val$numColumns:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 371
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;->val$numColumns:I

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
