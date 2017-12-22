.class Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;
.super Ljava/lang/Object;
.source "CustomViewPager.java"

# interfaces
.implements Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/fragment/CustomViewPager;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;->this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/CustomViewPager$1;->this$0:Lcom/netflix/mediaclient/android/fragment/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/fragment/CustomViewPager;->onPageSelected(I)V

    .line 80
    return-void
.end method
