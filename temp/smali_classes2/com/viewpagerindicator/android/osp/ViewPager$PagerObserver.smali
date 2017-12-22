.class Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field final synthetic this$0:Lcom/viewpagerindicator/android/osp/ViewPager;


# direct methods
.method private constructor <init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viewpagerindicator/android/osp/ViewPager;Lcom/viewpagerindicator/android/osp/ViewPager$1;)V
    .locals 0

    .prologue
    .line 2793
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;-><init>(Lcom/viewpagerindicator/android/osp/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->dataSetChanged()V

    .line 2797
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/viewpagerindicator/android/osp/ViewPager$PagerObserver;->this$0:Lcom/viewpagerindicator/android/osp/ViewPager;

    invoke-virtual {v0}, Lcom/viewpagerindicator/android/osp/ViewPager;->dataSetChanged()V

    .line 2801
    return-void
.end method
