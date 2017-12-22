.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StandardSlidingMenu.java"


# instance fields
.field private final genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    .line 655
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->genres:Ljava/util/List;

    .line 656
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->genres:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->genres:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->genres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 671
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 676
    if-nez p2, :cond_0

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030102

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 678
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const v0, 0x7f100388

    .line 679
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f10038a

    .line 680
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    .line 678
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 683
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    .line 684
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v2

    .line 686
    if-eqz v2, :cond_1

    .line 687
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$1000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    .line 691
    return-object p2
.end method
