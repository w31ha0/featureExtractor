.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;
.super Landroid/content/BroadcastReceiver;
.source "LoMoViewPagerAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 435
    if-nez p2, :cond_1

    .line 436
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Received null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidateCwCache()V

    .line 447
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading cw row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto :goto_0

    .line 452
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidateIqCache()V

    .line 455
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading iq row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo v0, "LoMoViewPagerAdapter"

    const-string/jumbo v1, "Reloading iq row because lomo types match"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$800(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$900(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->refresh(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    goto/16 :goto_0

    .line 465
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;->access$500(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->invalidatePopularTitlesCache()V

    goto/16 :goto_0
.end method
