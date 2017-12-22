.class final Lcom/netflix/mediaclient/util/TrailerUtils$2;
.super Ljava/lang/Object;
.source "TrailerUtils.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field private height:I

.field final synthetic val$numColumns:I

.field final synthetic val$parent:Landroid/view/View;

.field private width:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$parent:Landroid/view/View;

    iput p2, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$numColumns:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/TrailerUtils$2;->calculateViewDimensions()V

    .line 64
    return-void
.end method

.method private calculateViewDimensions()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->width:I

    .line 70
    iget v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->width:I

    iget v1, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$numColumns:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->width:I

    .line 72
    iget v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->height:I

    .line 73
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/TrailerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->val$parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/TrailerView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->width:I

    iget v3, p0, Lcom/netflix/mediaclient/util/TrailerUtils$2;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/TrailerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-object v0
.end method
