.class Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/slidingtab/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/slidingtab/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/android/slidingtab/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/slidingtab/SlidingTabLayout;Lcom/android/slidingtab/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/slidingtab/SlidingTabLayout;
    .param p2, "x1"    # Lcom/android/slidingtab/SlidingTabLayout$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;-><init>(Lcom/android/slidingtab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v1}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/slidingtab/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v1}, Lcom/android/slidingtab/SlidingTabLayout;->access$200(Lcom/android/slidingtab/SlidingTabLayout;)Lcom/android/slidingtab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/slidingtab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/slidingtab/SlidingTabLayout$TabClickListener;->this$0:Lcom/android/slidingtab/SlidingTabLayout;

    invoke-static {v1}, Lcom/android/slidingtab/SlidingTabLayout;->access$500(Lcom/android/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 311
    :cond_0
    return-void

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
