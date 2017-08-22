.class Lcom/novel/reader/BookmarkActivity$1;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/BookmarkActivity;->trackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/BookmarkActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/BookmarkActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/novel/reader/BookmarkActivity$1;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity$1;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-static {v0, p1}, Lcom/novel/reader/BookmarkActivity;->access$000(Lcom/novel/reader/BookmarkActivity;I)V

    .line 102
    return-void
.end method
