.class public Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CommonTabFragmentActivity.java"

# interfaces
.implements Lcom/biznessapps/fragments/SwipeyTabsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/activities/CommonTabFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SwipeyTabsPagerAdapter"
.end annotation


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/activities/CommonTabFragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;->this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;

    .line 110
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 111
    iput-object p3, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;->fragments:Ljava/util/List;

    .line 112
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getTab(ILcom/biznessapps/fragments/SwipeyTabs;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "root"    # Lcom/biznessapps/fragments/SwipeyTabs;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;->this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;

    const-string v1, "test"

    invoke-virtual {v0, v1, p1}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getHeaderView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
