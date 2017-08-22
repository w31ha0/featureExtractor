.class Lcom/mobfox/sdk/bannerads/EventIterator$1$4;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/EventIterator$1;->onBannerClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

.field final synthetic val$banner:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/bannerads/EventIterator$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;->val$banner:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;->val$banner:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerClicked(Landroid/view/View;)V

    .line 139
    return-void
.end method
