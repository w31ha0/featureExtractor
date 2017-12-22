.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;
.super Ljava/lang/Object;
.source "UserMessageAreaView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    new-instance v1, Landroid/widget/Space;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$202(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Landroid/widget/Space;)Landroid/widget/Space;

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$200(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/Space;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$400(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$300(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$6;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$200(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/Space;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 212
    return-void
.end method
