.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$400(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$1200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->getItem(I)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->action:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 900
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 902
    :cond_0
    return-void
.end method
