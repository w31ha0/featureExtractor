.class Lcom/novel/reader/adapter/ExpandListAdapter$2;
.super Ljava/lang/Object;
.source "ExpandListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/ExpandListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

.field final synthetic val$eLV:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/ExpandListAdapter;Landroid/widget/ExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/ExpandListAdapter;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iput-object p2, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->val$eLV:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 171
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v0}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$200(Lcom/novel/reader/adapter/ExpandListAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->val$eLV:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$200(Lcom/novel/reader/adapter/ExpandListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 173
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v0, v2}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$202(Lcom/novel/reader/adapter/ExpandListAdapter;I)I

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->val$eLV:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/novel/reader/adapter/ExpandListAdapter$2;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$200(Lcom/novel/reader/adapter/ExpandListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
