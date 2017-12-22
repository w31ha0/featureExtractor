.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StandardSlidingMenu.java"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    .line 729
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->actions:Ljava/util/List;

    .line 731
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->getItem(I)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 745
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 751
    if-nez p2, :cond_0

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 753
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const v0, 0x7f100388

    .line 754
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f10038a

    .line 755
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    .line 753
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 758
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    .line 759
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->getItem(I)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    move-result-object v1

    .line 760
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$1100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    .line 764
    return-object p2
.end method
