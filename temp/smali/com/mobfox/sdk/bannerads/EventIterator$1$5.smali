.class Lcom/mobfox/sdk/bannerads/EventIterator$1$5;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/EventIterator$1;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

.field final synthetic val$banner:Landroid/view/View;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/bannerads/EventIterator$1;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->val$banner:Landroid/view/View;

    iput-object p3, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->val$banner:Landroid/view/View;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 150
    return-void
.end method
