.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;
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
    .line 613
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$700(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 618
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->closeDrawersWithDelay()V

    .line 620
    :cond_0
    return-void
.end method
