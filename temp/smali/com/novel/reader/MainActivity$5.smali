.class Lcom/novel/reader/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->trackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/novel/reader/MainActivity$5;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/novel/reader/MainActivity$5;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0, p1}, Lcom/novel/reader/MainActivity;->access$500(Lcom/novel/reader/MainActivity;I)V

    .line 251
    return-void
.end method
