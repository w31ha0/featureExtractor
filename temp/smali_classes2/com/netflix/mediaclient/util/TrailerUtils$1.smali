.class final Lcom/netflix/mediaclient/util/TrailerUtils$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "TrailerUtils.java"


# instance fields
.field final synthetic val$adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field final synthetic val$numColumns:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TrailerUtils$1;->val$adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iput p2, p0, Lcom/netflix/mediaclient/util/TrailerUtils$1;->val$numColumns:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$1;->val$adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$1;->val$numColumns:I

    .line 47
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
