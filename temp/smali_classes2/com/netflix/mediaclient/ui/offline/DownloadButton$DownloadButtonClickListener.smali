.class Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;
.super Ljava/lang/Object;
.source "DownloadButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field private final playableId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private final videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 424
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    .line 425
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 426
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 427
    return-void

    .line 426
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method private tryStartDownload(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->addCachedVideoButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2, v4, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v1

    .line 518
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoWifiDialog(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 544
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 545
    :cond_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 529
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PRE_QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 530
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 537
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onOfflinePlayableRequested(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    goto :goto_0

    .line 535
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->onDownloadButtonSelected(Landroid/view/View;)V

    .line 432
    return-void
.end method

.method public onDownloadButtonSelected(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->access$200(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-ne v0, v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 441
    :cond_1
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_6

    .line 444
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    move-object v2, v0

    .line 447
    :goto_1
    if-eqz v2, :cond_0

    .line 451
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    .line 452
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getInProgressCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 453
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v3

    .line 454
    if-eqz v3, :cond_5

    .line 456
    sget-object v4, Lcom/netflix/mediaclient/ui/offline/DownloadButton$3;->$SwitchMap$com$netflix$mediaclient$ui$offline$DownloadButton$ButtonState:[I

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getState()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->tryStartDownload(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 459
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 460
    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 461
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v1, :cond_3

    .line 462
    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    .line 463
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createWatchDeleteDialog(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createDownloadingMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto/16 :goto_0

    .line 486
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createPausedMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto/16 :goto_0

    .line 490
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playableId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->this$0:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createPausedMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto/16 :goto_0

    .line 494
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->createOfflineErrorStateDialog(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 498
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto/16 :goto_0

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->tryStartDownload(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    goto/16 :goto_1

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
