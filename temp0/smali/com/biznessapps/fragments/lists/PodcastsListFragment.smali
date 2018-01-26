.class public Lcom/biznessapps/fragments/lists/PodcastsListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "PodcastsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/PodcastItem;",
        ">;"
    }
.end annotation


# static fields
.field private static playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;


# instance fields
.field private currentPosition:I

.field private nextButton:Landroid/widget/ImageButton;

.field private playButton:Landroid/widget/ImageButton;

.field private previousButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$004(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$006(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->updateCurrentPosition()V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playPodcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->updateImageButtons()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "www."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private playPodcast()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    iget-object v1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    :cond_0
    return-void
.end method

.method private playPodcast(Lcom/biznessapps/model/PodcastItem;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/model/PodcastItem;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! item.getAudioUrl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->openWebView(Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;Lcom/biznessapps/model/PodcastItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 105
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, "podcasts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/PodcastItem;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/PodcastItem;

    .line 108
    .local v2, "item":Lcom/biznessapps/model/PodcastItem;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v2    # "item":Lcom/biznessapps/model/PodcastItem;
    :cond_0
    new-instance v0, Lcom/biznessapps/layout/adapters/PodcastAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/biznessapps/layout/adapters/PodcastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    .local v0, "ex":Lcom/biznessapps/layout/adapters/PodcastAdapter;
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->initListViewListener()V

    .line 114
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/PodcastAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "podcasts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/PodcastItem;>;"
    :cond_1
    return-void
.end method

.method private switchImageButtons()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/biznessapps/layout/R$drawable;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    sget v1, Lcom/biznessapps/layout/R$drawable;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCurrentPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    if-gez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    .line 212
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_3
    iget v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    iget-object v1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 210
    iput v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->currentPosition:I

    goto :goto_1
.end method

.method private updateImageButtons()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PODCAST_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/biznessapps/layout/R$layout;->podcast_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    const-string v0, "http://www.biznessapps.com/iphone/rss.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/biznessapps/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 50
    sget v0, Lcom/biznessapps/layout/R$id;->player_next_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->nextButton:Landroid/widget/ImageButton;

    .line 51
    sget v0, Lcom/biznessapps/layout/R$id;->player_player_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    .line 52
    sget v0, Lcom/biznessapps/layout/R$id;->player_previous_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->previousButton:Landroid/widget/ImageButton;

    .line 53
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->nextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$1;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->previousButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$2;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment$3;-><init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 35
    sget-object v0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/biznessapps/player/PlayerServiceAccessor;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->updateImageButtons()V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/PodcastItem;

    .line 119
    .local v0, "item":Lcom/biznessapps/model/PodcastItem;
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playPodcast(Lcom/biznessapps/model/PodcastItem;)V

    .line 120
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parsePodcastList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PODCAST_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 96
    return-void
.end method
