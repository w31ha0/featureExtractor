.class Lcom/wordloco/wordchallenge/view/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/TestAmazon;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ao;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ao;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->d(Lcom/wordloco/wordchallenge/view/TestAmazon;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->enableAutoShow()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ao;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->d(Lcom/wordloco/wordchallenge/view/TestAmazon;)Lcom/amazon/device/ads/AdLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->disableAutoShow()V

    goto :goto_0
.end method
