.class Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MyNovelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MyNovelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NovelPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MyNovelActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MyNovelActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MyNovelActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MyNovelActivity;

    .line 177
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 178
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MyNovelActivity;

    invoke-static {v0}, Lcom/novel/reader/MyNovelActivity;->access$100(Lcom/novel/reader/MyNovelActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 183
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 184
    .local v0, "kk":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_1

    .line 185
    invoke-static {}, Lcom/kosbrother/fragments/MyBookcaseFragment;->newInstance()Lcom/kosbrother/fragments/MyBookcaseFragment;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 187
    invoke-static {}, Lcom/kosbrother/fragments/MyDownloadFragment;->newInstance()Lcom/kosbrother/fragments/MyDownloadFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MyNovelActivity;

    invoke-static {v0}, Lcom/novel/reader/MyNovelActivity;->access$100(Lcom/novel/reader/MyNovelActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/MyNovelActivity;

    invoke-static {v1}, Lcom/novel/reader/MyNovelActivity;->access$100(Lcom/novel/reader/MyNovelActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
