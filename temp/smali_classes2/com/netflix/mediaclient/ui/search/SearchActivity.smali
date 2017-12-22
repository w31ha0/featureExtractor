.class public Lcom/netflix/mediaclient/ui/search/SearchActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "SearchActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final EXTRA_SUBMIT_QUERY:Ljava/lang/String; = "submit"

.field private static final MIN_SEARCH_QUERY_LENGTH:I = 0x1

.field private static final SEARCH_VIEW_FOCUSED_STATE:Ljava/lang/String; = "search_view_focused_state"

.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field private static final VIDEOS_FRAG_TAG:Ljava/lang/String; = "videos_frag"


# instance fields
.field private final errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private focusSessionId:J

.field private fragGroup:Landroid/view/ViewGroup;

.field private final handleQueryUpdateRunnable:Ljava/lang/Runnable;

.field private isLoading:Z

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private loadingWrapper:Landroid/view/View;

.field private loggingSessionId:J

.field private mVoiceSearchAvailable:Z

.field private mVoiceSearchBtn:Landroid/view/View;

.field private pendingAction:Ljava/lang/Runnable;

.field private query:Ljava/lang/String;

.field private requestId:J

.field private resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field private savedInstanceState:Landroid/os/Bundle;

.field private searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

.field private final searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private searchTextChanges:Lio/reactivex/disposables/Disposable;

.field private searchThrottleSessionId:J

.field private searchViewFocused:Z

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 92
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchThrottleSessionId:J

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    .line 551
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 558
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    .line 586
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$9;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/android/widget/SearchActionBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showResults(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchThrottleSessionId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchThrottleSessionId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->focusSessionId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->focusSessionId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method private addResetQueryOnTouch()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnTouchTextListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createUI()V
    .locals 3

    .prologue
    .line 166
    const v0, 0x7f0300eb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setContentView(I)V

    .line 167
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupActionBar()V

    .line 168
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViews()V

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupLoadingWrapper()V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupFragments(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setBackgroundIfApplicable(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setBackgroundIfApplicable(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 198
    const v0, 0x7f10035b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    .line 199
    const v0, 0x7f100359

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loadingWrapper:Landroid/view/View;

    .line 200
    const v0, 0x7f10035a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private getSearchHintPlaceholderStringId()I
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f09018b

    :goto_0
    return v0

    :cond_1
    const v0, 0x7f090265

    goto :goto_0
.end method

.method private handleKeyboardVisibility()V
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->showSoftKeyboard(Landroid/content/Context;)Z

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    if-eqz v1, :cond_0

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showHideKeyboard(Z)V

    .line 475
    return-void
.end method

.method private handleNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string/jumbo v1, "submit"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 379
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isVoiceSearch(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 380
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setQuery(Ljava/lang/String;Z)V

    .line 385
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleQueryUpdate(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 408
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearGridSelected()V

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    .line 416
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showInitState()V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 0

    .prologue
    .line 539
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 540
    return-void
.end method

.method private isVoiceSearch(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    const-string/jumbo v2, "android.speech.extra"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Voice search"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    .line 403
    :cond_1
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Not voice search?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVoiceClicked()V
    .locals 4

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 507
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 508
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    .line 507
    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Voice search button was clicked but no voice search icon in SearchView to trigger voice search dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static search(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "submit"

    const/4 v2, 0x1

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private setSearchActionBarQueryHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setSearchQueryHint(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method

.method private setSearchProgressVisibility(Z)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 578
    if-eqz p1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->showProgressSpinner()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->hideProgressSpinner()V

    goto :goto_0
.end method

.method private setVoiceSearchVisibility(Z)V
    .locals 3

    .prologue
    .line 492
    const/16 v0, 0x8

    .line 493
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    if-eqz v1, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 495
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 501
    return-void
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_1

    .line 229
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8332;->isDebouncingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8332;->getDebounceTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchView()Landroid/widget/SearchView;

    move-result-object v2

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/widget/RxSearchView;->queryTextChanges(Landroid/widget/SearchView;)Lcom/jakewharton/rxbinding2/InitialValueObservable;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    .line 233
    invoke-virtual {v2, v3}, Lcom/jakewharton/rxbinding2/InitialValueObservable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 248
    invoke-virtual {v2, v0, v1, v3}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 249
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    .line 250
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchTextChanges:Lio/reactivex/disposables/Disposable;

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 291
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldResetQueryOnTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->addResetQueryOnTouch()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    .line 301
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    .line 303
    :cond_1
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupFragments(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->create()Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10035b

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string/jumbo v3, "videos_frag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showInitState()V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "videos_frag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    goto :goto_0
.end method

.method private setupLoadingWrapper()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loadingWrapper:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 224
    return-void
.end method

.method private showEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1, v2, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 436
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 437
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 438
    return-void
.end method

.method private showHideKeyboard(Z)V
    .locals 1

    .prologue
    .line 478
    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->requestFocus()Z

    .line 482
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->showSoftKeyboard(Landroid/app/Activity;)V

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->clearFocus()V

    .line 487
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method private showInitState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 450
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSearchHintPlaceholderStringId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchActionBarQueryHint(Ljava/lang/String;)V

    .line 451
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->showVoiceSearchInLayout(Landroid/content/Context;)Z

    move-result v0

    .line 452
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 453
    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getInitMessageStringId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    goto :goto_0
.end method

.method private showResults(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 524
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->update(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Ljava/lang/String;)V

    .line 536
    :cond_1
    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/search/BarkerKidsSearchActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker_kids/search/BarkerKidsSearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    return-object v0
.end method

.method protected getInitMessageStringId()I
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f09018b

    :goto_0
    return v0

    :cond_1
    const v0, 0x7f090264

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 544
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldHandleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->showLastSelectedItem()Z

    move-result v0

    .line 547
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isLoading:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v0, 0x7f0b01b4

    .line 114
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 117
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    .line 129
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->createUI()V

    .line 131
    if-eqz p1, :cond_1

    .line 132
    const-string/jumbo v0, "search_view_focused_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->startVoiceSearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->onVoiceClicked()V

    .line 140
    :cond_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchSessionStarted(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loggingSessionId:J

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 148
    return-void

    .line 120
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    goto :goto_0

    .line 125
    :cond_4
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f0b01b3

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchTextChanges:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchTextChanges:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 193
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loggingSessionId:J

    invoke-static {v0, v1, p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchSessionEnded(JLandroid/content/Context;J)V

    .line 194
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 195
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleKeyboardVisibility()V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 162
    :cond_0
    const-string/jumbo v0, "search_view_focused_state"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public showError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f0900c9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 443
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 444
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 445
    return-void
.end method
