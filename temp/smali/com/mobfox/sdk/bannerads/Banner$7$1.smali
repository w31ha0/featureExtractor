.class Lcom/mobfox/sdk/bannerads/Banner$7$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner$7;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/bannerads/Banner$7;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/bannerads/Banner$7;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$7$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$7$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$7;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$7;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 608
    return-void
.end method
