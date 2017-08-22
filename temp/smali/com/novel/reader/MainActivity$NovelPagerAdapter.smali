.class Lcom/novel/reader/MainActivity$NovelPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NovelPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MainActivity;

    .line 469
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 470
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$600(Lcom/novel/reader/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 474
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 475
    .local v0, "kk":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryListFragment;->newInstance(Landroid/app/Activity;)Landroid/support/v4/app/ListFragment;

    move-result-object v0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    if-ne p1, v2, :cond_2

    .line 478
    new-instance v1, Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-direct {v1}, Lcom/kosbrother/fragments/GridGplayFragment;-><init>()V

    invoke-virtual {v1}, Lcom/kosbrother/fragments/GridGplayFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    if-ne p1, v1, :cond_3

    .line 480
    invoke-static {v4}, Lcom/kosbrother/fragments/IndexNovelFragment;->newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_3
    if-ne p1, v3, :cond_4

    .line 482
    invoke-static {v5}, Lcom/kosbrother/fragments/IndexNovelFragment;->newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_4
    if-ne p1, v4, :cond_5

    .line 484
    invoke-static {v3}, Lcom/kosbrother/fragments/IndexNovelFragment;->newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_5
    if-ne p1, v5, :cond_6

    .line 486
    invoke-static {v1}, Lcom/kosbrother/fragments/IndexNovelFragment;->newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 488
    invoke-static {v2}, Lcom/kosbrother/fragments/IndexNovelFragment;->newInstance(I)Lcom/kosbrother/fragments/IndexNovelFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$600(Lcom/novel/reader/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v1}, Lcom/novel/reader/MainActivity;->access$600(Lcom/novel/reader/MainActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
