.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "RoleDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

.field final synthetic val$finalColumnSize:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;I)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;->val$finalColumnSize:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 284
    :goto_0
    return v0

    .line 281
    :cond_0
    if-nez p1, :cond_1

    .line 282
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;->val$finalColumnSize:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0
.end method
