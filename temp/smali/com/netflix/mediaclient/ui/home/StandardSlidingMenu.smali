.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation


# static fields
.field private static final HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private static final TAG:Ljava/lang/String; = "StandardSlidingMenu"


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

.field private final appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final canLoadNotifications:Z

.field protected contentLayout:Landroid/widget/LinearLayout;

.field private final drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

.field private final genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private final genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected final genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final homeGenreRow:Landroid/view/View;

.field protected homeText:Landroid/widget/TextView;

.field private mBlockedByUmaAlert:Z

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field protected final notificationsDivider:Landroid/view/View;

.field private notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

.field protected final notificationsHeader:Landroid/view/View;

.field private notificationsStub:Landroid/view/ViewStub;

.field private final onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onHomeClickListener:Landroid/view/View$OnClickListener;

.field private final onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

.field private final profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected final profileName:Landroid/widget/TextView;

.field private final profilesGroup:Landroid/view/View;

.field private selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field protected final switchProfilesIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$DummyGenreList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f10037d

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 588
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$8;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 596
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    .line 606
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$10;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    .line 613
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 894
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$17;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 138
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 139
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    .line 141
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 142
    const v0, 0x7f10037c

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v2, 0x7f100384

    .line 145
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresErrorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 148
    const v0, 0x7f100381

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    .line 149
    invoke-virtual {p2, v6}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    const v2, 0x7f100388

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0901cf

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v2, "Inflating notifications into layout"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const v0, 0x7f100380

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 165
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f100215

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->setNotificationsListStatusListener(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;)V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->areNotificationsPresent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    const v2, 0x7f02024f

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :goto_0
    const v0, 0x7f100377

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onSwitchProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f100378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f10037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    const v1, 0x7f100379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100385

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    .line 201
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createHomeRow()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100387

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setFocusable(Z)V

    .line 209
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    .line 210
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 212
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setNotificationsVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreErrorView()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateGenres(Ljava/util/List;)V

    return-void
.end method

.method private applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 552
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    return-void
.end method

.method private configureMyListRow()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isCurrentProfileInstantQueueEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100383

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v3, 0x7f020192

    .line 299
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 298
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fillTopLevelRow(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 301
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$6;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private configureOfflineRowIfNeeded()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showOfflineInMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100382

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v3, 0x7f0200b0

    .line 280
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fillTopLevelRow(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 281
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static createActions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 780
    const-string/jumbo v1, "StandardSlidingMenu"

    const-string/jumbo v2, "Service manager is null, no app section"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    :goto_0
    return-object v0

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 785
    const-string/jumbo v1, "StandardSlidingMenu"

    const-string/jumbo v2, "Service manager not ready, no app section"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-nez v1, :cond_3

    .line 790
    const-string/jumbo v1, "StandardSlidingMenu"

    const-string/jumbo v2, "Current profile is null, no app section"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSettingsInMenu()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 795
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 801
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v3, 0x7f09019e

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAccountInMenu()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 805
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 839
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v3, 0x7f09019d

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showAboutInMenu()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 843
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 849
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v3, 0x7f09009d

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showContactUsInSlidingMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoipAgent()Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 854
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$15;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 867
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v3, 0x7f0900c6

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showSignOutInMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$16;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$16;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 884
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;

    const v3, 0x7f090196

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createHomeRow()Landroid/view/View;
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 265
    const v0, 0x7f100388

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v2, 0x7f090120

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 267
    const v0, 0x7f02024f

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeText:Landroid/widget/TextView;

    const v3, 0x7f10038a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    return-object v1
.end method

.method private fetchGenresDataIfReady()V
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Fetching genres list..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private managerNotReady()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    :cond_0
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager is not ready - can\'t update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToNormal(Landroid/widget/TextView;)V

    .line 558
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 563
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    return-void
.end method

.method private setAppActions()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->createActions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 254
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onAppRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->appList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNotificationsVisible(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 231
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "notificationsStub is null - can\'t set visibility"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    .line 235
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Showing notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Hiding notifications header"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGenreErrorView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 478
    return-void
.end method

.method private showGenreLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 483
    return-void
.end method

.method private updateBlockingState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setVisibility(I)V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    .line 227
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 221
    goto :goto_0
.end method

.method private updateGenres(Ljava/util/List;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresLeWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 541
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 545
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->onGenreRowClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 548
    return-void
.end method

.method private updateProfileInfo()V
    .locals 7

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v4

    .line 517
    if-nez v4, :cond_1

    .line 518
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Profile is null - can\'t update profile info"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileName:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profileImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 524
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    .line 523
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    goto :goto_0
.end method

.method private updateProfileViewGroupVisibility()V
    .locals 2

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Manager not ready - can\'t update profile view visibility yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->shouldShowChangeProfilesItem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mBlockedByUmaAlert:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateProfileViews()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViewGroupVisibility()V

    .line 487
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileInfo()V

    .line 488
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateSwitchProfileButton()V

    .line 489
    return-void
.end method


# virtual methods
.method public canLoadNotifications()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->canLoadNotifications:Z

    return v0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 586
    return-void
.end method

.method public closeDrawersWithDelay()V
    .locals 4

    .prologue
    .line 576
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v3, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$7;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    return-void

    .line 576
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected fillTopLevelRow(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const v5, 0x7f0f0089

    const v4, 0x7f0a0141

    const/4 v3, 0x0

    .line 324
    const v0, 0x7f100389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    const v1, 0x7f1003b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    :cond_0
    const v0, 0x7f100388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    :goto_0
    const v1, 0x7f1003af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 345
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 348
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    invoke-static {p3, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 355
    :goto_1
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void

    .line 339
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p3, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setIconIfApplicable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 353
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public markNotificationsAsRead()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->markNotificationsAsRead()V

    .line 448
    return-void
.end method

.method public onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 400
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    return-void
.end method

.method public onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 396
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 368
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->configureOfflineRowIfNeeded()V

    .line 375
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->configureMyListRow()V

    .line 376
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->setAppActions()V

    .line 377
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateProfileViews()V

    .line 378
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateBlockingState()V

    .line 379
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 387
    return-void
.end method

.method public onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 364
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->showGenreLoadingView()V

    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->fetchGenresDataIfReady()V

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->refresh()V

    .line 411
    :cond_0
    return-void
.end method

.method public reportNotificationsImpression(Z)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->notificationsFrag:Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->reportNotificationsImpression(Z)V

    .line 456
    :cond_0
    return-void
.end method

.method public setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 2

    .prologue
    .line 425
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-ne p1, v0, :cond_2

    .line 426
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresAdapter:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->notifyDataSetChanged()V

    .line 436
    :cond_1
    return-void

    .line 429
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->selectedGenre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->homeGenreRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V

    goto :goto_0
.end method

.method protected shouldShowChangeProfilesItem()Z
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    .line 503
    if-nez v0, :cond_0

    .line 504
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "No profiles found for user!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateAdapterViews(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;Z)V
    .locals 0

    .prologue
    .line 567
    if-eqz p2, :cond_0

    .line 568
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->applyGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->removeGenreSelectionStyle(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;)V

    goto :goto_0
.end method

.method protected updateSwitchProfileButton()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->managerNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->refreshProfileSwitchingStatus()V

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isProfileSwitchingDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 534
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->profilesGroup:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 535
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->switchProfilesIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const v0, 0x108001f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 533
    goto :goto_1

    :cond_3
    move v2, v1

    .line 534
    goto :goto_2

    .line 535
    :cond_4
    const v0, 0x7f0200d6

    goto :goto_3
.end method
