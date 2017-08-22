.class Lcom/mobfox/sdk/tagbanner/TagBanner$3;
.super Ljava/lang/Object;
.source "TagBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebViewSettings(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field final synthetic val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$3;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iput-object p2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$3;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$3;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->userInteraction:Z

    .line 152
    const/4 v0, 0x0

    return v0
.end method
