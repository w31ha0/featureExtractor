.class Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BookmarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NovelPagerAdapter"
.end annotation


# instance fields
.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/novel/reader/BookmarkActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/BookmarkActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/novel/reader/BookmarkActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/BookmarkActivity;

    .line 135
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-static {v0}, Lcom/novel/reader/BookmarkActivity;->access$100(Lcom/novel/reader/BookmarkActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 141
    .local v0, "kk":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_1

    .line 142
    sget v1, Lcom/kosbrother/fragments/MyBookmarkFragment;->BOOKMARK_VIEW:I

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->newInstance(I)Lcom/kosbrother/fragments/MyBookmarkFragment;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    return-object v0

    .line 143
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 144
    sget v1, Lcom/kosbrother/fragments/MyBookmarkFragment;->RECENT_READ_VIEW:I

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->newInstance(I)Lcom/kosbrother/fragments/MyBookmarkFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-static {v0}, Lcom/novel/reader/BookmarkActivity;->access$100(Lcom/novel/reader/BookmarkActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-static {v1}, Lcom/novel/reader/BookmarkActivity;->access$100(Lcom/novel/reader/BookmarkActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
