.class public Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
.super Ljava/lang/Object;
.source "AddToMyListWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddToMyListWrapper"


# instance fields
.field private final dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

.field final serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 32
    return-void
.end method

.method private update(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData;

    .line 116
    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v0, "AddToMyListWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No listeners for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->setStateAndNotifyListeners(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    goto :goto_0
.end method


# virtual methods
.method addVideoToMyList(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v5, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;

    const-string/jumbo v1, "AddToMyListWrapper"

    invoke-direct {v5, v1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 135
    return-void
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
    .locals 9

    .prologue
    .line 44
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
    .locals 9

    .prologue
    .line 49
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
    .locals 9

    .prologue
    .line 35
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/MyListTextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    goto :goto_0
.end method

.method public createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
    .locals 9

    .prologue
    .line 54
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    return-object v0
.end method

.method register(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData;

    .line 59
    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "AddToMyListWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating new state data for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AddToListData;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/servicemgr/AddToListData;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->getState()Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;->update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    .line 70
    return-void

    .line 65
    :cond_0
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->addListener(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 66
    const-string/jumbo v1, "AddToMyListWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found state data for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->getState()Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeVideoFromMyList(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;

    const-string/jumbo v2, "AddToMyListWrapper"

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 142
    return-void
.end method

.method unregister(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData;

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "AddToMyListWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected case - can\'t find listener for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->removeListener(Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 86
    if-eqz p2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->update(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    .line 87
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    goto :goto_0
.end method

.method public updateToError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->dataHash:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper$AddToListDataHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData;

    .line 91
    if-nez v0, :cond_1

    .line 92
    const-string/jumbo v0, "AddToMyListWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not revert state for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/AddToListData;->revertState()V

    .line 102
    if-eqz p4, :cond_0

    .line 103
    if-eqz p3, :cond_2

    const v0, 0x7f090111

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :cond_2
    const v0, 0x7f090114

    goto :goto_1
.end method

.method public updateToLoading(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->LOADING:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->update(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    .line 112
    return-void
.end method
