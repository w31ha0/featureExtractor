.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;
.super Ljava/lang/Object;
.source "LoMoViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 375
    if-gez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v1, v0, v2, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->setCurrentItem(IZZ)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$300(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$200()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->access$100(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 381
    const/4 v0, 0x0

    goto :goto_1
.end method
