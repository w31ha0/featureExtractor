.class Lcom/biznessapps/activities/HomeScreenActivity$1;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/HomeScreenActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/biznessapps/activities/HomeScreenActivity$1;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "selectedPage"    # I

    .prologue
    .line 114
    iget-object v3, p0, Lcom/biznessapps/activities/HomeScreenActivity$1;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v3}, Lcom/biznessapps/activities/HomeScreenActivity;->access$000(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/biznessapps/activities/HomeScreenActivity$1;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v3}, Lcom/biznessapps/activities/HomeScreenActivity;->access$000(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 116
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 117
    iget-object v3, p0, Lcom/biznessapps/activities/HomeScreenActivity$1;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v3}, Lcom/biznessapps/activities/HomeScreenActivity;->access$000(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "child":Landroid/widget/ImageView;
    if-ne v2, p1, :cond_0

    .line 119
    sget v3, Lcom/biznessapps/layout/R$drawable;->selected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$drawable;->unselected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 125
    .end local v0    # "child":Landroid/widget/ImageView;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
