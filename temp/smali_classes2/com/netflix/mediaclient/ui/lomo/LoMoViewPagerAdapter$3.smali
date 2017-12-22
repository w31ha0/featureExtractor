.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;
.super Ljava/lang/Object;
.source "LoMoViewPagerAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$700(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public notifyParentOfDataSetChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Notified parent of data set change"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$400(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 387
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 388
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    const-string/jumbo v2, "LOMO stayed on same last page, just adjust"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$602(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;I)I

    .line 409
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->notifyDataSetChanged()V

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Data loaded for page 0 - saving state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->saveStateAndTrackPresentation(I)V

    .line 416
    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$600(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 395
    if-ltz v1, :cond_2

    .line 396
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 398
    :cond_2
    const-string/jumbo v1, "LoMoViewPagerAdapter"

    const-string/jumbo v2, "Wrong position, reset to end"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 406
    :cond_3
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Current locale is LTR..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public notifyParentOfError()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    if-eq v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$102(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$200(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;)V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->notifyDataSetChanged()V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V

    .line 372
    return-void
.end method
