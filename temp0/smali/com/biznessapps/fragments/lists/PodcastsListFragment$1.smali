.class Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/lists/PodcastsListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$004(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I

    .line 57
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$100(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    .line 58
    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$300(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setSelection(I)V

    .line 60
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$400(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    .line 61
    return-void
.end method
