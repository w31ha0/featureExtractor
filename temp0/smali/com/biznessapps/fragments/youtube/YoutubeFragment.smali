.class public Lcom/biznessapps/fragments/youtube/YoutubeFragment;
.super Lcom/biznessapps/fragments/fanwall/FanWallFragment;
.source "YoutubeFragment.java"


# static fields
.field private static final NO_TAG_FOUND:I = -0x1

.field private static final UPLOADS_TAG:Ljava/lang/String; = "uploads/"


# instance fields
.field private youtubeItemImage:Landroid/widget/ImageView;

.field private youtubeLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->youtubeLink:Ljava/lang/String;

    return-object v0
.end method

.method private getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;-><init>(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)V

    return-object v0
.end method

.method private getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment$2;-><init>(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)V

    return-object v0
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "http://www.biznessapps.com/iphone/fan_wall.php?app_code=%s&yt_id=%s&version=4&tab_id=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->commentParentId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 44
    sget v1, Lcom/biznessapps/layout/R$id;->youtube_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->youtubeItemImage:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->youtubeItemImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v1, Lcom/biznessapps/layout/R$id;->youtube_play_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IMAGE_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LINK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->youtubeLink:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->youtubeItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->root:Landroid/view/ViewGroup;

    .line 34
    iget-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->root:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 35
    iget-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->initListeners()V

    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->loadData()V

    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected plugListView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 80
    sget-object v1, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->info:Lcom/biznessapps/model/FanWallItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->info:Lcom/biznessapps/model/FanWallItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallItem;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Lcom/biznessapps/layout/adapters/FallWallAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->info:Lcom/biznessapps/model/FanWallItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/FanWallItem;->getComments()Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$layout;->fan_wall_item_layout:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/biznessapps/layout/adapters/FallWallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    .line 83
    .local v0, "fanWallAdapter":Lcom/biznessapps/layout/adapters/FallWallAdapter;
    iget-object v1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->commentsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->commentsListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    .end local v0    # "fanWallAdapter":Lcom/biznessapps/layout/adapters/FallWallAdapter;
    :cond_0
    return-void
.end method
