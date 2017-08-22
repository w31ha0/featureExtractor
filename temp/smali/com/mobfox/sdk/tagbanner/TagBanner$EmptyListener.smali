.class Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;
.super Ljava/lang/Object;
.source "TagBanner.java"

# interfaces
.implements Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method private constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;
    .param p2, "x1"    # Lcom/mobfox/sdk/tagbanner/TagBanner$1;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 307
    return-void
.end method

.method public onBannerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 297
    return-void
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 287
    return-void
.end method

.method public onBannerFinished()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 292
    return-void
.end method

.method public onNoFill(Landroid/view/View;)V
    .locals 0
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 312
    return-void
.end method
