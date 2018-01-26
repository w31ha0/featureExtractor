.class Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/biznessapps/widgets/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/PullToRefreshListView;Lcom/biznessapps/widgets/PullToRefreshListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/PullToRefreshListView;
    .param p2, "x1"    # Lcom/biznessapps/widgets/PullToRefreshListView$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/biznessapps/widgets/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/biznessapps/widgets/PullToRefreshListView;

    invoke-static {v0}, Lcom/biznessapps/widgets/PullToRefreshListView;->access$100(Lcom/biznessapps/widgets/PullToRefreshListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/biznessapps/widgets/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/PullToRefreshListView;->prepareForRefresh()V

    .line 393
    iget-object v0, p0, Lcom/biznessapps/widgets/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/biznessapps/widgets/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/PullToRefreshListView;->onRefresh()V

    .line 395
    :cond_0
    return-void
.end method
