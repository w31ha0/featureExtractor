.class Lcom/biznessapps/activities/CommonTabFragmentActivity$1;
.super Ljava/lang/Object;
.source "CommonTabFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/CommonTabFragmentActivity;->getHeaderView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;

.field final synthetic val$viewPosition:I


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/CommonTabFragmentActivity;I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;->this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;

    iput p2, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;->val$viewPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;->this$0:Lcom/biznessapps/activities/CommonTabFragmentActivity;

    iget-object v0, v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    iget v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;->val$viewPosition:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/CustomizableViewPager;->setCurrentItem(I)V

    .line 89
    return-void
.end method
