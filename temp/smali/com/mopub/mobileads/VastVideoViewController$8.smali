.class Lcom/mopub/mobileads/VastVideoViewController$8;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$vastIconConfig:Lcom/mopub/mobileads/VastIconConfig;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$8;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$8;->val$vastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$8;->val$vastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$8;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$8;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x1

    return v0
.end method
