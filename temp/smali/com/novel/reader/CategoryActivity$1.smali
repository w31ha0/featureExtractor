.class Lcom/novel/reader/CategoryActivity$1;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/CategoryActivity;->trackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/CategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/CategoryActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/novel/reader/CategoryActivity$1;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity$1;->this$0:Lcom/novel/reader/CategoryActivity;

    invoke-static {v0, p1}, Lcom/novel/reader/CategoryActivity;->access$000(Lcom/novel/reader/CategoryActivity;I)V

    .line 99
    return-void
.end method
