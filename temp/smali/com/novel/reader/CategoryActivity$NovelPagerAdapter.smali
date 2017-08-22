.class Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NovelPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/CategoryActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/CategoryActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    .line 246
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 247
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v0}, Lcom/novel/reader/CategoryActivity;->access$200(Lcom/novel/reader/CategoryActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 251
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 252
    .local v0, "kk":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    move-result-object v0

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryRecommendFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategoryRecommendFragment;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryWeekFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategoryWeekFragment;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategoryLatestNovelsFragment;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryFinishFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategoryFinishFragment;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->newInstance(Ljava/lang/String;)Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v0}, Lcom/novel/reader/CategoryActivity;->access$200(Lcom/novel/reader/CategoryActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v1}, Lcom/novel/reader/CategoryActivity;->access$200(Lcom/novel/reader/CategoryActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
