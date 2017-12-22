.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field private isFrombackground:Z

.field private final listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;Z)V
    .locals 1

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    .line 1424
    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 1425
    iput-boolean p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    .line 1426
    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$002(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;)Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    .line 1440
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$102(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/offline/TutorialHelper;)Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    .line 1441
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    .line 1443
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 1450
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->onManagerReady()V

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1460
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1461
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    .line 1462
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1471
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1472
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v1, :cond_3

    .line 1473
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1476
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1477
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1478
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1482
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1483
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v0, :cond_5

    .line 1487
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1492
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1493
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1507
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-nez v0, :cond_6

    .line 1508
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1510
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 1511
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1513
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->isFrombackground:Z

    if-eqz v0, :cond_7

    .line 1514
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayerPostPlayOnResume()V

    .line 1521
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1523
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1525
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1526
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 1528
    :cond_8
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1300()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$002(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;)Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    .line 1538
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1543
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v1, :cond_1

    .line 1544
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->listener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1554
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startLaunchActivityIfVisible()V

    .line 1557
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldFinishOnManagerError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1561
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 1564
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1565
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->notAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 1567
    :cond_5
    return-void
.end method
