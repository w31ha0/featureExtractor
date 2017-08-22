.class Lcom/novel/reader/MyNovelActivity$1;
.super Ljava/lang/Object;
.source "MyNovelActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MyNovelActivity;->trackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MyNovelActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MyNovelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MyNovelActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/novel/reader/MyNovelActivity$1;->this$0:Lcom/novel/reader/MyNovelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity$1;->this$0:Lcom/novel/reader/MyNovelActivity;

    invoke-static {v0, p1}, Lcom/novel/reader/MyNovelActivity;->access$000(Lcom/novel/reader/MyNovelActivity;I)V

    .line 97
    return-void
.end method
