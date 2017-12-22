.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final ignoreClicks:Z

.field private maxCount:I

.field private resId:I

.field private final searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Z)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 729
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 730
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->ignoreClicks:Z

    .line 731
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->setResid()V

    .line 732
    return-void
.end method

.method private adjustHeight(Lcom/netflix/mediaclient/ui/search/SearchResultView;)V
    .locals 3

    .prologue
    .line 837
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 839
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-ne v0, v1, :cond_0

    .line 840
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 845
    :pswitch_1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 826
    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->resId:I

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;-><init>(Landroid/content/Context;I)V

    .line 827
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->adjustHeight(Lcom/netflix/mediaclient/ui/search/SearchResultView;)V

    .line 829
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->ignoreClicks:Z

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setIgnoreClicks()V

    .line 833
    :cond_0
    return-object v1
.end method

.method private getTrackableForPos()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 2

    .prologue
    .line 782
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 790
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 784
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getPeopleListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v0

    goto :goto_0

    .line 788
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getSuggestionsListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v0

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setResid()V
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 743
    const v0, 0x7f0300ed

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->resId:I

    .line 745
    :goto_0
    return-void

    .line 737
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchViewLayoutPeople()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->resId:I

    goto :goto_0

    .line 740
    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchViewLayoutRelated()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->resId:I

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 755
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 773
    :goto_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->maxCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 758
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 766
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsSuggestions()I

    move-result v0

    goto :goto_0

    .line 760
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsVideos()I

    move-result v0

    goto :goto_0

    .line 763
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsPeople()I

    move-result v0

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getItem(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 797
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 802
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-nez v0, :cond_3

    .line 803
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->createView()Landroid/view/View;

    move-result-object v1

    .line 806
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->getTrackableForPos()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    .line 807
    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v3, v2, p1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    .line 809
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-ne v0, v5, :cond_2

    instance-of v0, v4, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    if-nez v0, :cond_2

    .line 813
    const-string/jumbo v2, "SPY-8015 - bad search query  %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ""

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 814
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 820
    :goto_2
    return-object v1

    .line 813
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 817
    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v3, v5, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

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
    .line 855
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$700(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$700(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 858
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 859
    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .prologue
    .line 748
    iput p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->maxCount:I

    .line 749
    return-void
.end method
